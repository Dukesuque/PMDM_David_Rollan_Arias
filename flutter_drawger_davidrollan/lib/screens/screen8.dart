import 'package:flutter/material.dart';
import '../componets/mi_drawer.dart';

class Screen8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filas y Columnas'),
        backgroundColor: Colors.purple,
      ),
      drawer: MiDrawer(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Fila 1: 1 imagen con texto
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset('assets/images/benji.jpg', width: 120, height: 120, fit: BoxFit.cover),
                    SizedBox(height: 5),
                    Text('Benji', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
            
            // Fila 2: 2 imágenes con texto
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset('assets/images/demon1.jpg', width: 120, height: 120, fit: BoxFit.cover),
                    SizedBox(height: 5),
                    Text('Demon1', style: TextStyle(fontSize: 16)),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/images/faker.jpg', width: 120, height: 120, fit: BoxFit.cover),
                    SizedBox(height: 5),
                    Text('Faker', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
            
            // Fila 3: 3 imágenes con texto
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset('assets/images/flaked.jpg', width: 100, height: 100, fit: BoxFit.cover),
                    SizedBox(height: 5),
                    Text('Flaked', style: TextStyle(fontSize: 14)),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/images/jankos.webp', width: 100, height: 100, fit: BoxFit.cover),
                    SizedBox(height: 5),
                    Text('Jankos', style: TextStyle(fontSize: 14)),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/images/patitek.webp', width: 100, height: 100, fit: BoxFit.cover),
                    SizedBox(height: 5),
                    Text('Patitek', style: TextStyle(fontSize: 14)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}