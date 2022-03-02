
import 'package:flutter/material.dart';
import 'package:vita_health/android/styles.dart';

import '../../models/contact.model.dart';

class EditorContactView extends StatelessWidget {
  // const EditorContactView({ Key? key }) : super(key: key);

  late final ContactModel? model;

  EditorContactView({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model == null ? "Novo Contato" : "Editar Contato", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      // SingleChildScrollView - não quebra o layout quando o teclado aparecer
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: TextFormField(
                  initialValue: model?.name,
                  decoration: InputDecoration(
                    hintText: 'name'
                  ),
                  onSaved: (val){
                    model?.name = val;
                  },
                  style: TextStyle(fontFamily: 'Poppins'),
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: TextFormField(
                  initialValue: model?.email,
                  decoration: InputDecoration(
                    hintText: 'email'
                  ),
                  onSaved: (val){
                    model?.name = val;
                  },
                  style: TextStyle(fontFamily: 'Poppins'),
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: TextFormField(
                  initialValue: model?.phone,
                  decoration: InputDecoration(
                    hintText: 'phone'
                  ),
                  onSaved: (val){
                    model?.name = val;
                  },
                  style: TextStyle(fontFamily: 'Poppins'),
                ),
              ),

              SizedBox(height: 20),

              Container(
                width: double.infinity,
                child: TextButton.icon(
                  onPressed: (){},
                  label: const Text(
                    "Salvar", 
                    style: TextStyle(
                      color: accentColor, 
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                      // fontFamily: 'Poppins'
                    )
                  ),
                  icon: Icon(Icons.save, color: accentColor,),
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    textStyle: new TextStyle(fontFamily: 'Poppins')
                  ),
                ),
              )
            ]
          ) 
        ),
      ),
    );
  }
}