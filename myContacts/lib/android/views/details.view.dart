import 'package:flutter/material.dart';
import 'package:vita_health/android/styles.dart';
import 'package:vita_health/models/contact.model.dart';

import 'editor-contact.view.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),

      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 30,
          ),
          Container(
            width: 200,
            height: 200,
            // padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(200),
              image: DecorationImage(
                image: NetworkImage("https://avatars.githubusercontent.com/u/73241700?v=4")
              )
            ),
          ),
          SizedBox(height: 20),
          
          Text(
            "Vitor",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),

          Text(
            "11 96648-4784",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400
            ),
          ),

          Text(
            "vitor@gmail.com",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: CircleBorder(
                    side: BorderSide.none
                  )
                ),
                onPressed: (){},
                child: const  Icon(Icons.phone, color: accentColor),
              ),

              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: CircleBorder(
                    side: BorderSide.none
                  )
                ),
                onPressed: (){},
                child: const Icon(Icons.email, color: accentColor),
              ),

              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: CircleBorder(
                    side: BorderSide.none
                  ),

                ),
                onPressed: (){},
                child: const Icon(Icons.video_call, color: accentColor),
              ),
            ]
          ),
          SizedBox(height: 30),
          ListTile(
            title: Text(
              "Endereço",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Valley, 2104",
                  style: TextStyle(
                    fontSize: 14
                  ),
                ),

                Text(
                  "São Paulo - SP",
                  style: TextStyle(
                    fontSize: 14
                  ),
                ),
              ]
            ),
            isThreeLine: true,
            trailing: TextButton(
              onPressed: () {},
              child: Icon(Icons.pin_drop, color: primaryColor),
            ),
          )
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditorContactView(
                model: ContactModel(
                  id: "1",
                  name: "Vitor",
                  email: "vitor@gmail.com",
                  phone: "11 95565-5712"
                ),
              )
            )
          );
        },
        backgroundColor: primaryColor,
        child: Icon(Icons.edit, color: accentColor,),
      ),
    );
  }
}