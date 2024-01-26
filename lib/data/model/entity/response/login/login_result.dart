class LoginResult {
  LoginResult({
    required this.token,
    required this.refreshToken,
    required this.email,
    required this.nickName,
  });

  final String? token;
  final String? refreshToken;
  final String? email;
  final String? nickName;
}
