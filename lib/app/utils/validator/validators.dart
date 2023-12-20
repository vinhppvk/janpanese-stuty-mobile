RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9._-]{5,}@[a-zA-Z0-9_-]{2,}\.[a-zA-Z]{2,}$');
RegExp phone = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');
RegExp spaceAlphanumerical = RegExp(r'^[a-zA-Z0-9 ]+$');
RegExp alphanumericalSpecialChars = RegExp(r'^[a-zA-Z0-9@_.#-]+$');
RegExp alphanumericalSpecialChars2 = RegExp(r'^[a-zA-Z0-9\s@_,#-]+$');
RegExp filterNumberRegex = RegExp(r'[0-9]');
RegExp linkRegex = RegExp(r'(http|https)?:\/\/(\S+)');

bool isEmail(String str) {
  return emailRegExp.hasMatch(str.toLowerCase());
}

bool isPhone(String str) {
  return phone.hasMatch(str.toLowerCase());
}

bool isDate(String str) {
  try {
    str = str.replaceAll('/', '-');
    DateTime.parse(str);
    return true;
  } catch (e) {
    return false;
  }
}
