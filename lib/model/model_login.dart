class ModelLogin {
  String? accessToken;
  String? tokenType;

  ModelLogin({this.accessToken, this.tokenType});

  factory ModelLogin.fromJson(Map<String, dynamic> object) {
    return ModelLogin(
      accessToken: object['access_token'],
      tokenType: object['token_type'],
    );
  }
}
