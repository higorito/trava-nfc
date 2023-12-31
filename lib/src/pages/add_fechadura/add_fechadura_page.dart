import 'package:flutter/material.dart';
import 'package:trava_nfc/src/pages/add_fechadura/lock_form.dart';

class AddFechaduraPage extends StatelessWidget {
  const AddFechaduraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Fechadura'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LockForm(),
      ),
    );
  }
}
