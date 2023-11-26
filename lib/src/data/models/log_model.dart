import 'package:intl/intl.dart';

class LogsModel {
  final DateTime data;
  final String horario;
  final int id;
  final int userId;

  LogsModel({
    required this.data,
    required this.horario,
    required this.id,
    required this.userId,
  });

  factory LogsModel.fromJson(Map<String, dynamic> json) {
    String dateString = json['data'];
    DateTime parsedDate =
        DateFormat('E, d MMM yyyy HH:mm:ss', 'en_US').parse(dateString);

    return LogsModel(
      data: parsedDate,
      horario: DateFormat('HH:mm:ss').format(parsedDate),
      id: json['id'] ?? 0,
      userId: json['user_id'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toUtc().toIso8601String(),
      'horario': horario,
      'id': id,
      'user_id': userId,
    };
  }
}
