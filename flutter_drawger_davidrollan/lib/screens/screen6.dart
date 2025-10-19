import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../componets/mi_drawer.dart';

class Screen6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Textos'), backgroundColor: Colors.purple),
      drawer: MiDrawer(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.purple[100],
              padding: EdgeInsets.all(10),
              child: AutoSizeText(
                'Este es un texto muy largo que no cabe en el contenedor y se ajusta automaticamente al espacio disponible sin salirse',
                style: GoogleFonts.pacifico(fontSize: 25),
                maxLines: 3,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.purple[200],
              padding: EdgeInsets.all(10),
              child: AutoSizeText(
                'Otro texto largo con diferente fuente que tambien se adapta al tamaño del contenedor de forma automatica',
                style: GoogleFonts.roboto(fontSize: 25, fontWeight: FontWeight.bold),
                maxLines: 3,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.purple[300],
              padding: EdgeInsets.all(10),
              child: AutoSizeText(
                'Tercer texto muy largo con fuente normal del sistema que se ajusta perfectamente sin desbordarse',
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
                maxLines: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}