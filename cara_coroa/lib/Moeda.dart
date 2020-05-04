import 'package:flutter/material.dart';

class Moeda extends StatefulWidget {

  String moedaSorteada;
  
  Moeda(this.moedaSorteada);

  @override
  _MoedaState createState() => _MoedaState();
}

class _MoedaState extends State<Moeda> {
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
              Image.asset("images/moeda_"+ widget.moedaSorteada + ".png"),
             
              Padding(padding: EdgeInsets.only(top:20)),
              
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset("images/botao_voltar.png")
              )
            ],
          ),
      ),
      )
    );
  }
}