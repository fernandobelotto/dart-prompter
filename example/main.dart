import 'package:dart_prompter_fg/src/terminal.dart' as prompter;
import 'package:dart_prompter_fg/src/option.dart';

void main() {
  var terminal = new prompter.Terminal();

  var options = [
    new Option(label: 'i want red', value: '#f00'),
    new Option(label: 'i want blue', value: '#00f'),
  ];
  terminal.printOptions(options);
  var response = terminal.collectInput();
  print(response);
}
