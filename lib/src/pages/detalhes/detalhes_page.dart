import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trava_nfc/src/data/models/fechadura_model.dart';

class DetalhesPage extends StatefulWidget {
  DetalhesPage({super.key, required this.fechadura});

  final FechaduraModel fechadura;

  @override
  State<DetalhesPage> createState() => _DetalhesPageState();
}

class _DetalhesPageState extends State<DetalhesPage> {
  var status = '';

  bool _ligado = false;

  @override
  Widget build(BuildContext context) {
    if (widget.fechadura.status == true) {
      status = "Aberta";
    } else {
      status = "Fechada";
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes da Fechadura'),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: Text(
                  'Nome: ${widget.fechadura.nome} \nStatus: $status',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              (_ligado == true)
                  ? Column(
                      children: [
                        const Text(
                          "Ativar NFC",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.green),
                        ),
                        const SizedBox(height: 12.0),
                        InkWell(
                          onTap: _ligarNFC,
                          child: const FaIcon(
                            FontAwesomeIcons.wifi,
                            size: 100,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        const Text(
                          "Desativar NFC",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.red),
                        ),
                        const SizedBox(height: 12.0),
                        InkWell(
                          onTap: _desligarNFC,
                          child: const FaIcon(
                            FontAwesomeIcons.wifi,
                            size: 100,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _ligarNFC() async {
    setState(() {
      _ligado = false;
    });
  }

  void _desligarNFC() {
    setState(() {
      _ligado = true;
    });
  }
}
