import 'package:flutter/material.dart';

class HistoricoPage extends StatefulWidget {
  const HistoricoPage({Key? key}) : super(key: key);

  @override
  _HistoricoPageState createState() => _HistoricoPageState();
}

class _HistoricoPageState extends State<HistoricoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico de Acessos'),
      ),
      body: Container(
        child: const Center(
          child: Text('Histórico de Acessos'),
        ),
      ),
    );
  }
}
