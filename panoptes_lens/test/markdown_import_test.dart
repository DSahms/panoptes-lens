import 'package:flutter_test/flutter_test.dart';
import 'package:panoptes_lens/core/constants.dart';

void main() {
  test('maxIdeaChars leaves room for detailed markdown imports', () {
    expect(AppConstants.maxIdeaChars, greaterThanOrEqualTo(10000));
  });
}
