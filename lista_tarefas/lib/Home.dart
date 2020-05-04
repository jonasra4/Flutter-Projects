import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  
  TextEditingController _controllerTarefa =TextEditingController(); 

  List _listaTarefas = [];

  Future<File> _getFile() async {
    
    final diretorio = await getApplicationDocumentsDirectory();
    return File("${diretorio.path}/dados.json");
  
  }

  _salvarTarefa(){

    String textoDigitado = _controllerTarefa.text;

    Map<String, dynamic> tarefa = Map();

    tarefa["titulo"] = textoDigitado;
    tarefa["realizada"] = false;

    setState(() {
      _listaTarefas.add(tarefa);
    });


    print("Tarefa adicionada");
    
    _controllerTarefa.text = "";

    _salvarArquivo();
  }

  _salvarArquivo() async {

    var arquivo = await _getFile();

    String dados = json.encode( _listaTarefas );
    arquivo.writeAsString(dados);

    print("Dados salvos!");

  }

  _lerArquivo() async {

    try{
      final arquivo = await _getFile();
      return arquivo.readAsString();
    }
    catch(e){
      return null;
    }

  }

  @override
  void initState() { 
    super.initState();

    _lerArquivo().then((dados){
      print(json.decode(dados));
      setState(() {
        _listaTarefas = json.decode(dados);
      });
    });
  }

  Widget criarItemLista(context, index){

    final item = _listaTarefas[index]["titulo"];

    return Dismissible(
      key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
      direction: DismissDirection.endToStart, 
      onDismissed: (direction){
        
      Map<String, dynamic> _ultimaTarefa = Map();
      _ultimaTarefa = _listaTarefas[index];

        _listaTarefas.removeAt(index);
        _salvarArquivo();

        final snackbar = SnackBar(
          content: Text("Tarefa removida!"),
          duration:  Duration(seconds: 5),
          action: SnackBarAction(
            label: "Desfazer", 
            onPressed: (){

              setState(() {
                _listaTarefas.insert(index, _ultimaTarefa);
              });

              _salvarArquivo();
            }
          ),
        );

        Scaffold.of(context).showSnackBar(snackbar);

      },
      background: Container(
        color: Colors.red,
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.delete,
              color: Colors.white,
            )
          ],
        ),
      ),
      child: CheckboxListTile(
            title: Text(_listaTarefas[index]["titulo"]),
            value: _listaTarefas[index]["realizada"], 
            onChanged: (valorAlterado){
             
              setState(() {
                _listaTarefas[index]["realizada"] = valorAlterado;
              });

              _salvarArquivo();
            }
          )
    );
  }

  @override
  Widget build(BuildContext context) {

    //_salvarArquivo();
    _lerArquivo();

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de tarefas"),
        backgroundColor: Colors.purple,
      ),  
      body: ListView.builder(
        itemCount: _listaTarefas.length,
        itemBuilder: criarItemLista
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
          showDialog(
            context: context,
            builder: (context){
                return AlertDialog(
                  title: Text("Adicionar Tarefa"),
                  content: TextField(
                    controller: _controllerTarefa,
                    decoration: InputDecoration(
                      labelText: "Digite sua tarefa"
                    ),
                    onChanged: (text){

                    },
                  ),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () => Navigator.pop(context), 
                      child: Text("Cancelar")
                    ),
                    FlatButton(
                      onPressed: (){
                        _salvarTarefa();
                        Navigator.pop(context);
                      }, 
                      child: Text("Salvar")
                    )
                  ],
                );
            }
          );

        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
    );
  }
}