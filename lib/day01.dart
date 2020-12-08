int partA(Iterable<String> input) {
  final numbers = input.map(int.parse).toList(growable: false);

  for (var i = 0; i <= numbers.length; i++) {
    var input = 2020 - numbers[i];
    var value = numbers.where((x) => x == input).toList();
    if (numbers.where((x) => x == input).length == 1) {
      return numbers[i] * value[0];
    }
  }

  throw Exception('Error');
}

int partB(Iterable<String> input) {
  final numbers = input.map(int.parse).toList(growable: false);

  for (var i = 0; i <= numbers.length; i++) {
    var first = numbers[i];

    for (var j = 0; j < numbers.length; j++) {
      var second = numbers[j];

      for (var k = 0; k < numbers.length; k++) {
        var third = numbers[k];

        if ((first + second + third) == 2020) {
          return first * second * third;
        }
      }
    }
  }

  throw Exception('Error');
}
