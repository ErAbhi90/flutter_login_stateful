import 'package:validator/validator.dart';

class ValidationMixin {
  String validateEmail(String value) {
    if (!isEmail(value)) {
      return 'Email is not valid';
    }

    return null;
  }

  String validatePassword(String value) {
    if (value.length < 4 || value.length > 20) {
      return 'Password should be between 4 and 20 characters';
    }
    else if (isAlpha(value)) {
      return 'Password must contain a number';
    }
    else if (isNumeric(value)) {
      return 'Password must contain an character';
    }
    else if (isAlphanumeric(value)) {
      return 'Password must contain a special character';
    }


    return null;
  }
}
