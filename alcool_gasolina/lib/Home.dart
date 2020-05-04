import 'package:flutter/material.dart';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController(); 

  String _resultado = ""; 

  void _calcular(){
    double precoAlcool = double.tryParse(_controllerAlcool.text); 
    double precoGaosolina = double.tryParse(_controllerGasolina.text);

    if(precoAlcool == null || precoGaosolina == null){
      _resultado = "Valores invalidos, digite valores maiores que 0 e utilize (.)";
    }
    else{
      if( ( precoAlcool / precoGaosolina ) >= 0.7){
        _resultado = "Melhor abastecer com Gasolina.";
      }
      else{
        _resultado = "Melhor abastecer com Alcool.";
      }
    }

    setState(() {
      _resultado = _resultado;
    });
     
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alcool ou Gasolina"),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            
            Image.asset("images/logo.png"),

            Padding(
              padding: EdgeInsets.only(top:20),
              child: Text("Saiba qual a melhor opção para abastecimento para seu carro.",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold) ,
              ),
            ),

            Padding(padding: EdgeInsets.only(top:20),
              child: TextField(
                controller: _controllerAlcool,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Preço Alcool Ex:2.69',
                  labelStyle: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
              ),
            ),

            Padding(padding: EdgeInsets.only(top:20),
              child: TextField(
                controller: _controllerGasolina,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Preço Gasolina Ex:3.95',
                  labelStyle: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
              ),
            ),

            Padding(padding: EdgeInsets.only(top:20),
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                onPressed: _calcular,
                child: Text(
                  'Calcular',
                  style: TextStyle(fontSize: 20)
                ),
                
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top:20),
              child: Text(_resultado,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold) ,
              ),
            ),
            
          ],
          ),
        )
      
    );
  }
}