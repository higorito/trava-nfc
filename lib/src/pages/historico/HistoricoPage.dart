import 'package:flutter/material.dart';

import '../../data/models/log_model.dart';
import '../../data/repositories/log_repository.dart';

class HistoricoPage extends StatefulWidget {
  const HistoricoPage({super.key});

  @override
  _HistoricoPageState createState() => _HistoricoPageState();
}

class _HistoricoPageState extends State<HistoricoPage> {
  late Future<List<LogsModel>> _logs;

  @override
  void initState() {
    super.initState();
    _logs = LogsRepository().fetchLogs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico de Entradas'),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.greenAccent,
      ),
      body: FutureBuilder(
        future: _logs,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Erro ao carregar os logs'),
            );
          } else if (!snapshot.hasData || (snapshot.data as List).isEmpty) {
            return const Center(
              child: Text('Nenhum log encontrado'),
            );
          } else {
            List<LogsModel> logs = snapshot.data as List<LogsModel>;
            return ListView.builder(
              itemCount: logs.length,
              itemBuilder: (context, index) {
                LogsModel log = logs[index];
                return ListTile(
                  title: Text('Data: ${log.data.toLocal()}'),
                  subtitle: Text('Hora: ${log.horario}'),
                  // Adicione outros campos conforme necessário
                );
              },
            );
          }
        },
      ),
    );
  }
}
