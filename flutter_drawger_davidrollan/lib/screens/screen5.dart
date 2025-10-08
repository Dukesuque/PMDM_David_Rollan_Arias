import 'package:flutter/material.dart';
import '../componets/mi_drawer.dart';

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Imagenes'), backgroundColor: Colors.purple),
      drawer: MiDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.photo, size: 60, color: Colors.purple),
            SizedBox(height: 20),
            Icon(Icons.photo, size: 60, color: Colors.purple),
            SizedBox(height: 20),
            Icon(Icons.photo, size: 60, color: Colors.purple),
            SizedBox(height: 20),
            Icon(Icons.photo, size: 60, color: Colors.purple),
            SizedBox(height: 20),
            Icon(Icons.photo, size: 60, color: Colors.purple),
          ],
        ),
      ),
    );
  }
}