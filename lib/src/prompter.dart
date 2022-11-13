import 'option.dart';
import 'terminal.dart';

final Terminal _terminal = const Terminal();

class Prompter {
  String _defaultAsk({String prompt, List<Option> options}) {
    _terminal.clearScreen();
    _terminal.printPrompt("$prompt");
    _terminal.printOptions([]);

    final response = _terminal.collectInput();
    return response;
  }

  String askMultiple({String prompt, List<Option> options}) {
    final response = this._defaultAsk(prompt: prompt, options: options);

    try {
      return options[int.parse(response)].value;
    } catch (error) {
      return askMultiple(prompt: prompt, options: options);
    }
  }

  bool askBinary(String prompt) {
    final response = this._defaultAsk(prompt: "$prompt (y/n)", options: []);

    if (response.contains("y")) {
      return true;
    }
    if (response.contains("n")) {
      return false;
    }
    return askBinary(prompt);
  }
}
