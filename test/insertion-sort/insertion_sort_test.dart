import 'package:test/test.dart';
import 'package:dart_algorithms/dart_algorithms.dart';

void main() {
  group('Insertion Sort', () {
    test('sorting [] returns []', () {
      var numbers = <int>[];
      insertionSort(numbers);
      expect(numbers.length, equals(0));
    });

    test('sorting one element returns itself', () {
      var numbers = [0];
      insertionSort(numbers);
      expect(numbers.length, equals(1));
      expect(numbers[0], equals(0));
    });

    test('sorting two elements gives correctly ordered sequence', () {
      var numbers = [2, 1];
      insertionSort(numbers);
      expect(numbers.length, equals(2));
      expect(numbers[0], equals(1));
      expect(numbers[1], equals(2));
    });

    test('sorting many elements gives correctly ordered sequence', () {
      var numbers = [4, 8, 1, 5, 3];
      insertionSort(numbers);
      expect(numbers.length, equals(5));
      expect(numbers[0], equals(1));
      expect(numbers[1], equals(3));
      expect(numbers[2], equals(4));
      expect(numbers[3], equals(5));
      expect(numbers[4], equals(8));
    });
  });
}
