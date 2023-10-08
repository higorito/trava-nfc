import 'package:flutter/material.dart';

class LockForm extends StatefulWidget {
  @override
  _LockFormState createState() => _LockFormState();
}

class _LockFormState extends State<LockForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _rfidController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color(0xFFA3FCC1),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: TextField(
            controller: _nameController,
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              hintText: 'Nome',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color(0xFFA3FCC1),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: _rfidController,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    hintText: 'RFID',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: ShapeDecoration(
                    color: const Color.fromARGB(255, 144, 250, 180),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(color: Colors.green, width: 2.0),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.refresh_outlined,
                        color: Colors.green,
                      ),
                      Text(
                        'Gerar RFID',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  // Adicione a lógica para gerar o RFID aqui
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF14AE5C),
            minimumSize: const Size(150, 50),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          onPressed: () {
            // Adicione a lógica para adicionar a fechadura aqui
          },
          child: const Text(
            'Adicionar Fechadura',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ],
    );
  }
}
