import 'package:flutter/material.dart';
import '../componets/mi_drawer.dart';

class Screen10 extends StatefulWidget {
  @override
  State<Screen10> createState() => _Screen10State();
}

class _Screen10State extends State<Screen10> {
  int veces = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador de clics'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      drawer: MiDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Has pulsado:', style: TextStyle(fontSize: 25)),
            SizedBox(height: 10),
            Text(
              '$veces ${(veces == 1) ? 'vez' : 'veces'}',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      veces = 0;
                    });
                  },
                  backgroundColor: Colors.red,
                  child: Icon(Icons.refresh),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      veces++;
                    });
                  },
                  backgroundColor: Colors.green,
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}