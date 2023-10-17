import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetalhesFechaduras extends StatelessWidget {
  final String nome;
  final String status;

  const DetalhesFechaduras(
      {super.key, required this.nome, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFA3FCC1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFF14AE5C),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.20),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          (status == "aberto")
              ? SvgPicture.asset(
                  'assets/images/lock-open.svg',
                  height: 50,
                  width: 50,
                )
              : SvgPicture.asset(
                  'assets/images/lock-closed.svg',
                  height: 50,
                  width: 50,
                ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nome,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              Text(
                'Status: $status',
                style: (status == "fechado")
                    ? const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.red,
                      )
                    : const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.green,
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
