class ValidationMessages {
  static String undefined() => 'No validation message implemented';

  static String cm001() => 'The input value went wrong. Please try again.';

  static String cm002() => 'Login Failed';

  static String m001(String fieldName) => 'The $fieldName field is required';

  static String m002() => 'The email must be a valid email address.';

  static String m003(String fieldName, int minLength, int maxLength) =>
      'The $fieldName must be between $minLength and $maxLength characters.';

  static String m006(String fieldName) =>
      'The $fieldName may only contain numbers.';

  static String m016() => 'Please check this box if you want to proceed.';

  static String m018(String fieldName, int maxLength) =>
      'The $fieldName may not be greater than $maxLength characters.';

  static String m019() => 'The image size should not exceed 5MB.';

  static String m020() => 'The date format is incorrect.';

  static String m025() => 'The confirm password and password must match.';

  static String invalidOtp() => 'Invalid OTP Code';
}
