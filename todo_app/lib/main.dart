// interface para o android
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models/item.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key);

  // cria lista de itens
  var items = <Item>[];

  // construtor
  HomePage() {
    items: [];

    // adiciona itens na lista quando for renderizado
    // items.add(Item(title: 'ToDo 1', done: true));
    // items.add(Item(title: 'ToDo 2', done: false));
    // items.add(Item(title: 'ToDo 3', done: true));
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  _HomePageState()
  {
    load();
  }

  var newTaskController = TextEditingController();

  void addTask() 
  {
    if (newTaskController.text != "") 
    {
      setState(() {
        widget.items.add(Item(title: newTaskController.text, done: false));
      });

      newTaskController.clear();
    }
  }

  void removeTask(int index) {
    setState(() {
      widget.items.removeAt(index);
      save();
    });
  }

  Future load() async {
    var prefs = await SharedPreferences.getInstance();
    var data = prefs.getString('data');
    
    if (data != null)
    {
      // convert de string para json
      Iterable decode = jsonDecode(data);
      List<Item> result = decode.map((i) => Item.fromJson(i)).toList();

      setState(() {
        widget.items = result;
      });
    }
  }

  save() async {
    var prefs = await SharedPreferences.getInstance();
    var data = prefs.setString('data', jsonEncode(widget.items));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: newTaskController,
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16
          ),
          decoration: InputDecoration(
            labelText: "Nova Tarefa",
            labelStyle: TextStyle(
              color: Colors.white
            )
          ),
        ),
        // conteúdo do lado esquerdo
        // leading: Text('Test'),
        // conteúdo do lado direito
        actions: <Widget>[
          // Icon(Icons.plus_one)
        ],
      ),
      // builder() - otimiza a lista para fazer uma listagem sobe demanda para ter um ganho de performance
      body: ListView.builder(
        itemCount: widget.items.length,
        //  contexto atual da aplicação - item do array no momento da renderização
        itemBuilder: (BuildContext ctx, int index) {

          //const
          final item = widget.items[index];

          return Dismissible(
            child: CheckboxListTile(
              title: Text(item.title.toString()),
              key: Key(item.title.toString()),
              value: item.done,
              onChanged: (value) {
                setState(() {
                  item.done = value;
                  save();
                });
              },
            ),
            key: Key(item.title.toString()),
            background: Container(
              color: Colors.red.withOpacity(0.7),
              child: Align(
                child: Text("Excluir", style: TextStyle(color: Colors.white, fontSize: 16)), 
                alignment: Alignment.centerRight
              ),
              padding: EdgeInsets.only(right: 15),
            ),
            onDismissed: (direction) {
              if (direction == DismissDirection.endToStart)
              {
                removeTask(index);
              }
            },
            direction: DismissDirection.endToStart,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTask();
          save();
        },
        child: Icon(Icons.add),
      ),
    );
  } 
}
