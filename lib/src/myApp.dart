import 'package:flutter/material.dart';
import 'package:trava_nfc/src/pages/login/login_page.dart';

import 'pages/historico/HistoricoPage.dart';
import 'pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trava NFC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      initialRoute: '/login',

      // Rotas nomeadas

      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => HomePage(),
        '/historico': (context) => const HistoricoPage(),
      },
    );
  }
}
