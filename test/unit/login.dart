// Import the test package and Counter class

import 'package:flutter_test/flutter_test.dart';
import 'package:healthoui/core/form_helper.dart';

void main() {
  test('Phone number value should be match regex.', () {
    String _phoneNumber = "12345";
    expect(null, FormHelper.checkPhoneNumber(_phoneNumber));
  });
}
