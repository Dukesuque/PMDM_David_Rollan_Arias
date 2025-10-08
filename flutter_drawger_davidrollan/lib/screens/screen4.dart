import 'package:flutter/material.dart';
import '../componets/mi_drawer.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Iconos'), backgroundColor: Colors.purple),
      drawer: MiDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home, size: 40, color: Colors.purple),
                SizedBox(width: 10),
                Text('Inicio'),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite, size: 40, color: Colors.purple),
                SizedBox(width: 10),
                Text('Favorito'),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, size: 40, color: Colors.purple),
                SizedBox(width: 10),
                Text('Estrella'),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings, size: 40, color: Colors.purple),
                SizedBox(width: 10),
                Text('Ajustes'),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person, size: 40, color: Colors.purple),
                SizedBox(width: 10),
                Text('Perfil'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}