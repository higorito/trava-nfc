class FechaduraModel {
  String id;
  String nome;
  String status;

  FechaduraModel({
    required this.id,
    required this.nome,
    required this.status,
  });

  factory FechaduraModel.fromJson(Map<String, dynamic> json) {
    return FechaduraModel(
      id: json['id'],
      nome: json['nome'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'status': status,
    };
  }
}
