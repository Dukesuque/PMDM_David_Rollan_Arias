import 'package:flutter/material.dart';
import '../componets/mi_drawer.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Miniaturas'), backgroundColor: Colors.purple),
      drawer: MiDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.image, size: 80, color: Colors.purple),
            SizedBox(height: 20),
            Icon(Icons.image, size: 80, color: Colors.purple),
            SizedBox(height: 20),
            Icon(Icons.image, size: 80, color: Colors.purple),
          ],
        ),
      ),
    );
  }
}