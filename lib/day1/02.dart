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
    var first = numbers[i];

    for (var j = 0; j < numbers.length; j++) {
      var second = numbers[j];

      for (var k = 0; k < numbers.length; k++) {
        var third = numbers[k];

        if ((first + second + third) == 2020) {
          print(first * second * third);
        }
      }
    }
  }
}
