import 'package:flutter/material.dart';

class DetalhesPage extends StatelessWidget {
  const DetalhesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetalhesPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetalhesPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
