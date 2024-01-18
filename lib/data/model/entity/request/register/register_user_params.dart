class RegisterUserParams {
  RegisterUserParams({
    required this.email,
    required this.nickName,
    required this.sex,
    required this.birthday,
    required this.phoneNumber,
    required this.nationality,
    required this.password,
    required this.imagePhoto,
    required this.confirmPassword,
  });

  final String email;

  final String nickName;

  final String phoneNumber;

  final String nationality;

  final String password;

  final String confirmPassword;

  final String? sex;

  final DateTime? birthday;

  final String? imagePhoto;
}
