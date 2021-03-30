import 'dart:ffi';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

final _toDoController = TextEditingController();

class _HomeState extends State<Home> {
  List _toDoList = [];

  @override
  Void initState(){
    super.initState();

    _readData().then((data){
      setState(() {
        _toDoList = json.decode(data);
      });
    });
  }

  void _addToDo() {
    setState(() {
      Map<String, dynamic> newToDo = Map();
      newToDo["title"] = _toDoController.text;
      _toDoController.text = "";
      newToDo["Ok"] = false;
      _toDoList.add(newToDo);
      _saveData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lista de Tarefas"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(17.0, 1.0, 7.0, 1.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _toDoController,
                      decoration: InputDecoration(
                          labelText: "Nova Tarefa",
                          labelStyle: TextStyle(color: Colors.blueAccent)),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.blueAccent,
                    child: Text("ADD"),
                    textColor: Colors.white,
                    onPressed: () {
                      _addToDo();
                    },
                  )
                ],
              )),
          Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 10.0),
                  itemCount: _toDoList.length,
                  itemBuilder: (context, index) {
                    return CheckboxListTile(
                      title: Text(_toDoList[index]["title"]),
                      value: _toDoList[index]["Ok"],
                      secondary: CircleAvatar(
                        child: Icon(
                            _toDoList[index]["Ok"] ? Icons.check : Icons.error),
                      ),
                      onChanged: (c){
                        setState(() {
                          _toDoList[index]["Ok"] = c;
                          _saveData();
                        });
                      },
                    );
                  }))
        ],
      ),
    );
  }

  Future<File> _getFile() async {
    final Directory = await getApplicationDocumentsDirectory();
    return File("${Directory.path}/data.json");
  }

  Future<File> _saveData() async {
    String data = json.encode(_toDoList);

    final file = await _getFile();
    return file.writeAsString(data);
  }

  Future<String> _readData() async {
    try {
      final file = await _getFile();
      return file.readAsString();
    } catch (e) {
      return null;
    }
  }
}
