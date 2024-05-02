import 'package:flutter/material.dart';

class Novedades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pantalla'),
      ),
      body: Center(
        child: Text(
          'Esta es la segunda pantalla',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

