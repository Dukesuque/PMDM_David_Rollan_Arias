import 'package:flutter/material.dart';
import '../componets/mi_drawer.dart';

class Screen7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Imagenes Rep'), backgroundColor: Colors.purple),
      drawer: MiDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
  Image.asset('assets/images/woot.jpg', height: 150),
  Image.asset('assets/images/woot.jpg', height: 150),
  Image.network('https://picsum.photos/200/150', height: 150),
],
      ),
    );
  }
}