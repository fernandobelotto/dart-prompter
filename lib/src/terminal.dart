import 'dart:io' as io;

import 'option.dart';

class Terminal {
  const Terminal();
  void printPrompt(String prompt) {
    io.stdout.writeln(prompt);
  }

  void printOptions(List<Option> options) {
    options.asMap().forEach((index, element) {
      print('$index) - ${element.label}');
    });

    for (var i = 0; i < options.length; i++) {}

    io.stdout.writeln('Enter a choice \n');
    io.stdout.write('> ');
  }

  String collectInput() {
    return io.stdin.readLineSync();
  }

  void clearScreen() {
    if (io.Platform.isWindows) {
      io.stdout.write("\x1B[2J\x1B[0f");
    } else {
      io.stdout.write('\x1B[2J\x1B[3J\x1B[H');
    }
  }
}
