import 'package:flutter/material.dart';

class TelaServicos extends StatefulWidget {

  @override
  _TelaServicosState createState() => _TelaServicosState();
}

class _TelaServicosState extends State<TelaServicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Serviços"),
        backgroundColor: Colors.blue, 
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              
              Row(
                children: <Widget>[
                  Image.asset("images/detalhe_servico.png"),
                  Padding(padding: EdgeInsets.only(left:20)),
                  Text(
                    "Nossos Serviços",
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ],  
              ),
              Padding(
                padding: EdgeInsets.only(top:32),
                child: Text(
                  "Consultoria",
                  style: TextStyle(fontSize: 18),
                ) ,
              ),
              Padding(
                padding: EdgeInsets.only(top:32),
                child: Text(
                  "Calculo de preços",
                  style: TextStyle(fontSize: 18),
                ) ,
              ),
              Padding(
                padding: EdgeInsets.only(top:32),
                child: Text(
                  "Acompanhamento de projetos",
                  style: TextStyle(fontSize: 18),
                ) ,
              ),
              Padding(
                padding: EdgeInsets.only(top:32),
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