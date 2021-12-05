import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {  
  final String valor;

  const Resultado({ Key? key, required this.valor }) : super(key: key);


  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {

  void _voltar() {
    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/moeda_${widget.valor}.png'),
            GestureDetector(
              onTap: _voltar,
              child: Image.asset('images/botao_voltar.png'),
            )
          ],
        ),
      ),
    );
  }
}