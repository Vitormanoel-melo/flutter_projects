import 'package:flutter/material.dart';
import 'package:vita_health/android/styles.dart';
import 'package:vita_health/android/views/details.view.dart';
import 'package:vita_health/android/views/editor-contact.view.dart';

class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Meus Contatos', style: TextStyle(
            color: Colors.black
          )
        ),
        centerTitle: true,
        // posiciona item no lado esquerdo do appBar 
        leading: TextButton(
          onPressed: (){},
          child: const Icon(Icons.search)
        ),
        // actions: [
        //   Text('10')
        // ],
      ),

      body: ListView(
        // scrollDirection: Axis.horizontal,
        children: [
          ListTile(
            title: Text("Vitor"),
            subtitle: Text("11 96252-7982"),
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48),
                image: DecorationImage(
                  // imagem de fundo do container
                  image: NetworkImage("https://avatars.githubusercontent.com/u/73241700?v=4")
                ) 
              ),
            ),
            trailing: TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsView()
                  )
                );
              }, 
              child: const Icon(Icons.chat)
            ),
          )
        ],  
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditorContactView()
            )
          );
        },
        backgroundColor: primaryColor,
        child: const Icon(Icons.add, color: accentColor,),        
      ),
    );
  }
}