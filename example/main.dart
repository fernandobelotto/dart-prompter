import 'package:dart_prompter_fg/dart_prompter_fg.dart';

void main() {
  var options = [
    new Option(label: 'i want red', value: '#f00'),
    new Option(label: 'i want blue', value: '#00f'),
  ];

  var prompter = new Prompter();

  var answer =
      prompter.askMultiple(prompt: "what color do you want?", options: options);
  print(answer);
}
