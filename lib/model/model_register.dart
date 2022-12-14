class ModelRegister {
  String? name;
  String? email;
  String? noTelepon;
  int? roleId;

  ModelRegister({this.name, this.email, this.noTelepon, this.roleId});

  factory ModelRegister.fromJson(Map<String, dynamic> object) {
    return ModelRegister(
      name: object['name'],
      email: object['email'],
      noTelepon: object['no_telepon'],
      roleId: object['role_id'],
    );
  }
}
