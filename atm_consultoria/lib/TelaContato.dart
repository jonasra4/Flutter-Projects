import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  @override
  _TelaContatoState createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
        backgroundColor: Colors.green, 
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              
              Row(
                children: <Widget>[
                  Image.asset("images/detalhe_contato.png"),
                  Padding(padding: EdgeInsets.only(left:20)),
                  Text(
                    "Nossos Contatos",
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  ),
                ],  
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                  "Email: jonasra4@gmail.com",
                  style: TextStyle(fontSize: 18),
                ) ,
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                  "Insta: @joonasra",
                  style: TextStyle(fontSize: 18),
                ) ,
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                  "WhatsApp: (84) 9 9696-9033",
                  style: TextStyle(fontSize: 18),
                ) ,
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                  "...",
                  style: TextStyle(fontSize: 18),
                ) ,
              ),
            ],   
          )
        ),
      ),
    );
  }
}