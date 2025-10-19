import 'package:flutter/material.dart';
import '../componets/mi_drawer.dart';

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Imagenes'), backgroundColor: Colors.purple),
      drawer: MiDrawer(),
      body: SingleChildScrollView(
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Image.asset('assets/images/benji.jpg', width: 300, height: 200, fit: BoxFit.cover),
        SizedBox(height: 20),
        Image.asset('assets/images/flaked.jpg', width: 300, height: 200, fit: BoxFit.cover),
        SizedBox(height: 20),
        Image.asset('assets/images/mixwell.jpg', width: 300, height: 200, fit: BoxFit.cover),
        SizedBox(height: 20),
        Image.asset('assets/images/patitek.webp', width: 300, height: 200, fit: BoxFit.cover),
        SizedBox(height: 20),
        Image.asset('assets/images/riens.jpg', width: 300, height: 200, fit: BoxFit.cover),
        SizedBox(height: 20),
      ],
    ),
  ),
),
    );
  }
}