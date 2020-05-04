import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _precoBitcoin = "0";

  void _recuperarPreco() async {
    
    String url = "https://blockchain.info/ticker";
    http.Response response = await http.get(url);

    Map<String, dynamic> retorno = json.decode(response.body);

    setState(() {
      _precoBitcoin = retorno["BRL"]["buy"].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/bitcoin.png"),
              Padding(
                padding: EdgeInsets.only(top:40, bottom: 40),
                child: Text(
                  _precoBitcoin,
                  style: TextStyle(fontSize: 32),
                ),
              ),
              RaisedButton(
                color: Colors.orange,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                onPressed: _recuperarPreco,
                child: Text(
                  'Atualizar',
                  style: TextStyle(fontSize: 20)
                ),
                
              ),
            ],
          )
        )
      ),
    );

  }
}