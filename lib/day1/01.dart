import 'dart:io';
import 'dart:convert';

void main() async {
  var numbers = [];
  final lines = utf8.decoder
      .bind(File('./lib/day1/input.txt').openRead())
      .transform(const LineSplitter());

  await for (var line in lines) {
    var n = int.parse(line);
    numbers.add(n);
  }

  for (var i = 0; i <= numbers.length; i++) {
    var input = 2020 - numbers[i];
    var value = numbers.where((x) => x == input).toList();
    if (numbers.where((x) => x == input).length == 1) {
      print(numbers[i] * value[0]);
    }
  }
}
