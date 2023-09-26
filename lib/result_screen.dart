import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  // Atributos
  final String coinSide;

  const ResultScreen(this.coinSide, {super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
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
              padding: const EdgeInsets.only(bottom: 50),
              child: Image.asset('images/moeda_${widget.coinSide}.png'),
            ),
            GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Image.asset('images/botao_voltar.png')
            )
          ],
        ),
      ),
    );
  }
}
