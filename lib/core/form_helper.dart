import 'package:healthoui/ui/shared/constants.dart';

class FormHelper {
  /// Validate Phone Number(Temp Regx)
  /// @param [phone]
  ///
  /// @result
  /// if empty phone number return [Must be write number]
  /// if [phone] for match regx [Constants.phoneRegexp] format return null so it's true
  /// or return correct [phone] for [Constants.phoneRegexp] 
  ///
  /// [phone] not empty must be required
  static String checkPhoneNumber(String phone) {
    if (phone.isEmpty) {
      return "Must be write number";
    } else {
      final _phoneRegex = Constants.phoneRegexp;
      if (!_phoneRegex.hasMatch(phone)) {
        return "Pls try to follow format.(12345)";
      }
      //if all state true
      return null;
    }
  }
}
