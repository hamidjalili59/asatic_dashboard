import 'package:test/test.dart';

void main() {
  test(
    'two + two = 4',
    () {
      const result = 2 + 2;
      expect(result, 4);
    },
  );
}
