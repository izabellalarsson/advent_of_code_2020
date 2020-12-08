import 'dart:io';
import 'package:test/test.dart';
import 'package:advent_of_code_2020/day01.dart';

final input = File('test/data/day01.txt').readAsLinesSync();

void main() {
  group('Part One', () {
    test('Example 1', () {
      expect(partA(const ['1721', '979', '366', '299', '675', '1456']),
          equals(514579));
    });
    test('Solution', () {
      expect(partA(input), equals(1010299));
    });
  });
  group('Part Two', () {
    test('Example 1', () {
      expect(partB(const ['1721', '979', '366', '299', '675', '1456']),
          equals(241861950));
    });
    test('Solution', () {
      expect(partB(input), equals(42140160));
    });
  });
}
