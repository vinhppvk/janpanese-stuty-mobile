import '../../../../../core/utils/extension/string.dart';

class RegisterUserInfo {
  RegisterUserInfo({
    required this.email,
    required this.nickName,
    this.gender,
    this.birthday,
    required this.phoneNumber,
    required this.nationality,
    required this.password,
  });

  final String email;
  final String nickName;
  final String? gender;
  final String? birthday;
  final String phoneNumber;
  final String nationality;
  final String password;

  String? get validBirthday => birthday.isNullOrEmpty ? null : birthday;
}
