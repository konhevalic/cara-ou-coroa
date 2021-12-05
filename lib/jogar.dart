import 'package:cara_coroa/resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Jogar extends StatefulWidget {
  const Jogar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void _exibirResultado() {

    var items = ["cara", "coroa"];
    var numero = Random().nextInt(items.length);
    var resultado = items[numero];

    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => Resultado(valor: resultado,)
      )
    );
    
  }
  
  @override
  Widget build(BuildContext contextooou) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/logo.png'),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset('images/botao_jogar.png'),
            )
          ],
        ),
      ),
    );
  }
}
