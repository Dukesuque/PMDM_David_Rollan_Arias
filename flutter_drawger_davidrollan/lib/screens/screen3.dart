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
      Image.asset('assets/images/demon1.jpg', width: 150, height: 100),
      SizedBox(height: 20),
      Image.asset('assets/images/faker.jpg', width: 150, height: 100),
      SizedBox(height: 20),
      Image.asset('assets/images/jankos.webp', width: 150, height: 100),
    ],
  ),
),
    );
  }
}