import 'package:flutter/material.dart';
import '../componets/mi_drawer.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Foto'), backgroundColor: Colors.purple),
      drawer: MiDrawer(),
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset('assets/images/mifoto.jpg', width: 200, height: 200),
      SizedBox(height: 20),
      Text('David Rollan', style: TextStyle(fontSize: 24)),
    ],
  ),
),
    );
  }
}