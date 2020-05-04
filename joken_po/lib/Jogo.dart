import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {


  String _resultado = "Escolha uma opção abaixo.";

  var _imagemApp = AssetImage("images/padrao.png");

  void escolhaJogador(String escolhaJogador){
  
    var opcoesApp = [ "pedra", "papel", "tesoura"];

    int indiceEscolhaApp = Random().nextInt(3);

    String escolhaApp = opcoesApp[indiceEscolhaApp];
   
    setState(() {
     _imagemApp = AssetImage("images/" + escolhaApp + ".png");
    });

    if( (escolhaJogador == "pedra" && escolhaApp == "tesoura") ||
        (escolhaJogador == "papel" && escolhaApp == "pedra") ||
        (escolhaJogador == "tesoura" && escolhaApp == "papel") 
      ){
      setState(() {
        _resultado = "Você venceu!!";
      });        
    }
    else if(
        (escolhaApp == "pedra" && escolhaJogador == "tesoura") ||
        (escolhaApp == "papel" && escolhaJogador == "pedra") ||
        (escolhaApp == "tesoura" && escolhaJogador == "papel") 
    ){
        _resultado = "Você perdeu!!";
    }
    else{
        _resultado = "Empate!";
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          Padding(
            padding: EdgeInsets.only(top:32, bottom: 32),
            child: Text(
              "Escolha do APP",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold  ),
            ),
          ),

          Image(image: this._imagemApp,),

          Padding(
            padding: EdgeInsets.only(top:32, bottom: 32),
            child: Text(
              _resultado,
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold  ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              
              GestureDetector(
                onTap: () => escolhaJogador("pedra"),
                child: Image.asset("images/pedra.png", height: 100),
              ),
               GestureDetector(
                onTap: () => escolhaJogador("papel"),
                child: Image.asset("images/papel.png", height: 100),
              ),
               GestureDetector(
                onTap: () => escolhaJogador("tesoura"),
                child: Image.asset("images/tesoura.png", height: 100),
              )

              
            ]
          )
          
      ],)
        
      
    );
  }
}