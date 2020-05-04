//import 'dart:html';

import 'package:atm_consultoria/TelaCliente.dart';
import 'package:atm_consultoria/TelaContato.dart';
import 'package:atm_consultoria/TelaEmpresa.dart';
import 'package:atm_consultoria/TelaServicos.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _abrirEmpresa(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaEmpresa())
    );
  }

  void _abrirContato(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaContato())
    );
  }

  void _abrirServico(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaServicos())
    );
  }

  void _abrirCliente(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaCliente())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ATM Consultoria")),
      body:  Center(
          child: Container(
            
            padding: EdgeInsets.only(top:100, left:20, right:20),
            
            child: Column(
              children: <Widget>[
                Image.asset("images/logo.png"),
               
                Padding(padding: EdgeInsets.only(top:30)),
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[
                    GestureDetector(
                      onTap: _abrirEmpresa ,
                      child: Image.asset("images/menu_empresa.png"),
                    ),
                    GestureDetector(
                      onTap: _abrirServico ,
                      child: Image.asset("images/menu_servico.png"),
                    ),
                  ],
                ),
                
                Padding(padding: EdgeInsets.only(top:30)),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[
                    
                    GestureDetector(
                      onTap: _abrirCliente,
                      child: Image.asset("images/menu_cliente.png"),
                    ),
                    GestureDetector(
                      onTap: _abrirContato ,
                      child: Image.asset("images/menu_contato.png"),
                    ),

                  ],
                )
              ],
            )
        )
      ),
    );
  }
}