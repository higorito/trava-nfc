import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});
  final String urlfoto =
      "https://media.licdn.com/dms/image/D4D03AQFEpJBLAqTYsg/profile-displayphoto-shrink_200_200/0/1666609866773?e=1702512000&v=beta&t=7qBbJCiX5tpZ8lL8xrveSC23vDhMInufP_rzl3c5Vk4";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF14AE5C),
            ),
            child: Column(
              children: [
                const Expanded(
                  child: Text(
                    'Trava NFC',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                const Expanded(
                  child: Text(
                    'Versão 1.0.0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 6.0),
                Expanded(
                  flex: 3,
                  child: InkWell(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 26, 158, 70),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(12),
                          // side:
                          //     const BorderSide(color: Colors.green, width: 2.0),
                        ),
                      ),
                      child: const Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(urlfoto),
                            radius: 32.0,
                          ),
                          SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Higor Pereira',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      //implementar aqui as configurações de perfil
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Histórico'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/historico');
            },
          ),
        ],
      ),
    );
  }
}
