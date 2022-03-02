import 'package:flutter/material.dart';
import 'package:vita_health/android/styles.dart';

class SplashView extends StatelessWidget {
  const SplashView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: primaryColor,
      body: Column(
        // alinha os itens no centro na vertical
        mainAxisAlignment: MainAxisAlignment.center,
        // alinha os itens no centro na horizontal
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // define que vai ocupar a tela toda
          SizedBox(width: double.infinity),
          Icon(Icons.fingerprint, size: 115),
          SizedBox(height: 25),
          Text('Meus Contatos', style: TextStyle(
              fontSize: 24,
              color: accentColor,
            )
          ),
        ],
      ),
    );
  }
}