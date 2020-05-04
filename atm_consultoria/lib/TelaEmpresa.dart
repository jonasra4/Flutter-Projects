import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {

  @override
  _TelaEmpresaState createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre a TM Consultoria"),
        backgroundColor: Colors.orange, 
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("images/detalhe_empresa.png"),
                  Padding(padding: EdgeInsets.only(left:20)),
                  Text(
                    "Sobre a empresa",
                    style: TextStyle(color: Colors.orange, fontSize: 20),
                  ),
                ],  
              ),
              Padding(padding: EdgeInsets.only(top:32)),
              Text(
                "Mussum Ipsum, cacilds vidis litro abertis. Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis. Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis. Sapien in monti palavris qui num significa nadis i pareci latim. Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl. Interagi no mé, cursus quis, vehicula ac nisi. In elementis mé pra quem é amistosis quis leo. Casamentiss faiz malandris se pirulitá. Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio. Diuretics paradis num copo é motivis de denguis. Cevadis im ampola pa arma uma pindureta. Leite de capivaris, leite de mula manquis sem cabeça. Si u mundo tá muito paradis? Toma um mé que o mundo vai girarzis! Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis. Detraxit consequat et quo num tendi nada. Copo furadis é disculpa de bebadis, arcu quam euismod magna. Quem num gosta di mim que vai caçá sua turmis! Manduma pindureta quium dia nois paga. Viva Forevis aptent taciti sociosqu ad litora torquent. Admodum accumsan disputationi eu sit. Vide electram sadipscing et per. Paisis, filhis, espiritis santis. Per aumento de cachacis, eu reclamis. Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. Atirei o pau no gatis, per gatis num morreus. Quem num gosta di mé, boa gentis num é. Delegadis gente finis, bibendum egestas augue arcu ut est. Aenean aliquam molestie leo, vitae iaculis nisl. Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo! Não sou faixa preta cumpadi, sou preto inteiris, inteiris. Suco de cevadiss deixa as pessoas mais interessantis. Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum. A ordem dos tratores não altera o pão duris. Mais vale um bebadis conhecidiss, que um alcoolatra anonimis. Quem manda na minha terra sou euzis! Si num tem leite então bota uma pinga aí cumpadi! Mé faiz elementum girarzis, nisi eros vermeio. Tá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis. Posuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi. Pra lá , depois divoltis porris, paradis.",
                style: TextStyle(fontSize: 18),
                ) 
            ],   
          )
        ),
      ),
    );

  }
}