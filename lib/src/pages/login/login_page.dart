import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:trava_nfc/src/data/models/usuario_model.dart';
import 'package:trava_nfc/src/data/repositories/usuario_repository.dart';
import 'package:trava_nfc/src/pages/home/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final Future<List<UsuarioModel>> _users = UsuarioRepository().fetchUsers();

  void _login() async {
    List<UsuarioModel> users = await _users;

    String enteredEmail = _emailController.text;
    String enteredPassword = _passwordController.text;

    for (UsuarioModel user in users) {
      if (user.email == enteredEmail && user.password == enteredPassword) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
        return;
      }
    }

    // Login falhou, exiba uma mensagem de erro
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Erro de login'),
          content: const Text('Credenciais inválidas. Tente novamente.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        elevation: 10,
        backgroundColor: const Color(0xFF14AE5C),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16.0),
              const Text(
                'NFC Security',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF14AE5C),
                ),
              ),
              const SizedBox(height: 16.0),
              LottieBuilder.asset(
                'assets/lottie/cadeado.json',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none),
                    fillColor: const Color(0xFFA3FCC1),
                    filled: true,
                    prefixIcon: const Icon(Icons.email)),
              ),
              const SizedBox(height: 14.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Senha",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none),
                  fillColor: const Color(0xFFA3FCC1),
                  filled: true,
                  prefixIcon: const Icon(Icons.key),
                ),
              ),
              const SizedBox(height: 26.0),
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF14AE5C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 3,
                  minimumSize: const Size(150, 50),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.login, color: Colors.white),
                    SizedBox(width: 12.0),
                    Text('Login', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
