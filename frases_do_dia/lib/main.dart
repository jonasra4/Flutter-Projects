import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: "Frases da pantera",
    home: Home()
  ));  
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> 
{  
  var _frases = ["frase1", "frase2", "frase3", "frase4"];

  var _fraseGerada = "Clique abaixo para gerar uma frase.";

  void _gerarFrase()
  {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() 
    {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frases da pantera'),
      ),
      body: Container(
          padding: EdgeInsets.all(30.0),      
          child:Column(
  
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: <Widget>[
            Image.asset("images/Ines.jpg"),
            Text(_fraseGerada, style: TextStyle(fontSize: 20),),
            RaisedButton(
              onPressed: _gerarFrase,
              child: const Text(
                'Nova Frase',
                style: TextStyle(fontSize: 20)
              ),
            ),
          ],
        ),
      )
    );
  }
}