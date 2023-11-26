class UsuarioModel {
  final bool admin;
  final String email;
  final int id;
  final String name;
  final String password;

  UsuarioModel({
    required this.admin,
    required this.email,
    required this.id,
    required this.name,
    required this.password,
  });

  factory UsuarioModel.fromJson(Map<String, dynamic> json) {
    return UsuarioModel(
      admin: json['admin'] ?? false,
      email: json['email'] ?? '',
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      password: json['password'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'admin': admin,
      'email': email,
      'id': id,
      'name': name,
      'password': password,
    };
  }
}
