import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:trava_nfc/src/pages/add_fechadura/add_fechadura_page.dart';
import 'package:trava_nfc/src/pages/detalhes/detalhes_page.dart';
import 'package:trava_nfc/src/pages/home/drawer_custom.dart';
import 'package:trava_nfc/src/pages/home/widgets/detalhes_fechaduras.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var vazio = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return Container(
                margin: const EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  color: const Color(0xFF14AE5C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.ellipsis),
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                ),
              );
            },
          ),
          title: const Text(
            'Suas Fechaduras',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28,
            ),
          ),
          centerTitle: true,
        ),
        drawer: const DrawerCustom(),
        body: (vazio == true)
            ? Container(
                margin: const EdgeInsets.all(20),
                color: const Color(0xFFD7F4E1),
                child: Column(
                  children: [
                    InkWell(
                      child: DetalhesFechaduras(
                          nome: "Fechadura 1", status: "aberto"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetalhesPage()));
                      },
                    ),
                    InkWell(
                      child: DetalhesFechaduras(
                          nome: "Fechadura 2", status: "fechado"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetalhesPage()));
                      },
                    ),
                    InkWell(
                      child: DetalhesFechaduras(
                          nome: "Fechadura 3", status: "aberto"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetalhesPage()));
                      },
                    ),
                  ],
                ),
              )
            : Center(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: Text(
                          'NFC SECURITY',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Lottie.asset('assets/lottie/cadeado.json'),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                      const Expanded(
                        child: Text(
                          'You are save here!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.12),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF14AE5C),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            elevation: 2,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AddFechaduraPage()));
                          },
                          child: const Text(
                            'Adicionar nova fechadura',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}