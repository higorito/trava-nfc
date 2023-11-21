import 'package:flutter/material.dart';
import 'package:trava_nfc/src/data/models/fechadura_model.dart';
import 'package:trava_nfc/src/data/repositories/fechadura_repository.dart';
import 'package:trava_nfc/src/pages/detalhes/detalhes_page.dart';
import 'package:trava_nfc/src/pages/home/widgets/detalhes_fechaduras.dart';

class ListarFechaduras extends StatefulWidget {
  const ListarFechaduras({Key? key}) : super(key: key);

  @override
  State<ListarFechaduras> createState() => _ListarFechadurasState();
}

class _ListarFechadurasState extends State<ListarFechaduras> {
  final fechaduraRepository = FechaduraRepository();
  List<FechaduraModel> fechaduras = [];

  @override
  void initState() {
    super.initState();
    fechaduraRepository.getFechaduras().then((value) {
      setState(() {
        fechaduras = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      padding: const EdgeInsets.all(8),
      decoration: const ShapeDecoration(
          color: Color(0xFFD7F4E1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ))),
      child: ListView.builder(
        itemCount: fechaduras.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child: DetalhesFechaduras(
              nome: fechaduras[index].nome,
              status: fechaduras[index].status,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetalhesPage(fechadura: fechaduras[index]),
                ),
              );
            },
          );
        },
      ),

      //     Column(
      //   children: [
      //     InkWell(
      //       child:
      //           const DetalhesFechaduras(nome: "Fechadura 1", status: "aberto"),
      //       onTap: () {
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //                 builder: (context) => const DetalhesPage()));
      //       },
      //     ),
      //     InkWell(
      //       child: const DetalhesFechaduras(
      //           nome: "Fechadura 2", status: "fechado"),
      //       onTap: () {
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //                 builder: (context) => const DetalhesPage()));
      //       },
      //     ),
      //     InkWell(
      //       child:
      //           const DetalhesFechaduras(nome: "Fechadura 3", status: "aberto"),
      //       onTap: () {
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //                 builder: (context) => const DetalhesPage()));
      //       },
      //     ),
      //   ],
      // ),
    );
  }
}
