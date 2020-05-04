import 'dart:math';

import 'package:flutter/material.dart';

import 'Moeda.dart';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void _lancarMoeda(){

    var possibilidadesMoeda = ["cara", "coroa"];
    
    String ladoSorteado = ""; 
    
    int jogada = Random().nextInt(2);

    ladoSorteado = possibilidadesMoeda[jogada];

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Moeda(ladoSorteado))
    );
     
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Padding(padding: EdgeInsets.only(top:20)),
              GestureDetector(
                onTap: _lancarMoeda,
                child: Image.asset("images/botao_jogar.png")
              )
            ],
          ),
      ),
      )
    );
  }
}