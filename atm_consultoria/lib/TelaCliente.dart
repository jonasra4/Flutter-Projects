import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  @override
  _TelaClienteState createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clientes"),
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
                  Image.asset("images/detalhe_cliente.png"),
                  Padding(padding: EdgeInsets.only(left:20)),
                  Text(
                    "Nossos Clientes",
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  ),
                ],  
              ),
              Padding(
                padding: EdgeInsets.only(top:32),
                child: Image.asset("images/cliente1.png")
              ),
              Padding(
                padding: EdgeInsets.only(top:5),
                child: Text(
                  "Empresa de Software",
                  style: TextStyle(fontSize: 18),
                ) ,
              ),
               Padding(
                padding: EdgeInsets.only(top:32),
                child: Image.asset("images/cliente2.png")
              ),
              Padding(
                padding: EdgeInsets.only(top:5),
                child: Text(
                  "Empresa de Consultoria",
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