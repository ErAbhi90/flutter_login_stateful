class ValidationMixin {
  String validateEmail(String value) {
    if (value.length > 4 && value.length < 20) {
      return 'Password should be between 4 and 20 characters';
    }

    return null;
  }

  String validatePassword(String value) {
    if (value.length > 4 && value.length < 20) {
      return 'Password should be between 4 and 20 characters';
    }

    return null;
  }
}
