
import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "“O sucesso nasce do querer, da determinação e persistência em se chegar a"
        "um objetivo. Mesmo não atingindo o alvo, quem busca e vence obstáculos,"
        "no mínimo fará coisas admiráveis” – José de Alencar",
    "“Se você quer ser bem-sucedido precisa de dedicação total, buscar seu "
        "último limite e dar o melhor de si mesmo” – Ayrton Senna",
    "“Não crie limites para si mesmo. Você deve ir tão longe quanto sua "
        "mente permitir. O que você mais quer pode ser conquistado” – Mary Kay Ash",
    "“Nenhum obstáculo será grande se a sua vontade de vencer for maior” – Autor desconhecido",
    "“Dificuldades preparam pessoas comuns para destinos extraordinários” C.S Lewis",
    "“Pessoas vencedoras não são aquelas que não falham, são aquelas que não desistem”  – Autor desconhecido",
    "“Até que Deus abra a próxima porta, adore-O no corredor.”  – Autor desconhecido"
  ];

  var _fraseGerada = "Clique a baixo para gerar uma frase";

  //metodo para gerar uma frase aleatória
  void _gerarFrase(){
    var numeroAleatorio = new Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroAleatorio];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          /*width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.lightGreen)
          )*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/logo.png'),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black
                ),
              ),
              RaisedButton(
                color: Colors.green,
                child: Text(
                    'Nova frase',
                    style: TextStyle(
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                ),
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      )
    );
  }
}
