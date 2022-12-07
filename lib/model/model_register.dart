class ModelRegister {
  String? name;
  String? email;
  String? noTelepon;
  int? roleId;
  String? password;

  ModelRegister(
      {this.name, this.email, this.noTelepon, this.password, this.roleId});

  factory ModelRegister.fromJson(Map<String, dynamic> object) {
    return ModelRegister(
      name: object['name'],
      email: object['email'],
      noTelepon: object['no_telepon'],
      roleId: object['role_id'],
      password: object['password'],
    );
  }
}
