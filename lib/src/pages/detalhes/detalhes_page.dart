import 'package:flutter/material.dart';
import 'package:trava_nfc/src/data/models/fechadura_model.dart';

class DetalhesPage extends StatelessWidget {
  const DetalhesPage({super.key, required this.fechadura});

  final FechaduraModel fechadura;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes da Fechadura'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                fechadura.nome,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                (fechadura.status ? 'Aberta' : 'Fechada'),
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
