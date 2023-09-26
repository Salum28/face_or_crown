import 'package:flutter/material.dart';
import 'dart:math';
import 'package:face_or_crown/result_screen.dart';

class DrawScreen extends StatefulWidget {
  const DrawScreen({super.key});

  @override
  State<DrawScreen> createState() => _DrawScreenState();
}

class _DrawScreenState extends State<DrawScreen> {
  // Atributos
  late int _drawNumber;
  final List<String> _coinSide = ['cara', 'coroa'];

  // Métodos
  void _draw() {
    _drawNumber = Random().nextInt(_coinSide.length);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(_coinSide[_drawNumber])
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Image.asset('images/logo.png'),
            ),
            GestureDetector(
              onTap: _draw,
              child: Image.asset('images/botao_jogar.png')
            )
          ],
        ),
      ),
    );
  }
}
