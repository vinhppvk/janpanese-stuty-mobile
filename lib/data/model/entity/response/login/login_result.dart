class LoginResult {
  LoginResult({
    required this.token,
    required this.refreshToken,
    required this.email,
    required this.nickName,
    required this.imagePhoto,
  });

  final String? token;
  final String? refreshToken;
  final String? email;
  final String? nickName;
  final String? imagePhoto;
}
