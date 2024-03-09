class ValidationMessages {
  static String validateName(String value) {
    if (value.isEmpty) {
      return '"Name" cant be empty';
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
      return 'Use only latin letters for your Name';
    }
    return '';
  }

  static String validatePhone(String value) {
    if (value.isEmpty) {
      return '"Phone Number" cant be empty';
    } else if (!RegExp(r'^\+?(\d{10,15})$').hasMatch(value)) {
      return 'Enter correct phone number';
    }
    return '';
  }
}
