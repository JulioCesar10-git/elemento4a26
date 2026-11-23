import 'package:appmovil1/screens/screen2.dart';
import 'package:appmovil1/screens/screen3.dart';
import 'package:appmovil1/screens/screen4.dart';
import 'package:appmovil1/screens/screen5.dart';
import 'package:flutter/material.dart';
import 'package:appmovil1/theme/app_theme.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pantalla 1')),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Seleciona una opcion:',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              SizedBox(height: 20),
              boton('Ejemplo de Rows', Colors.purple, context, Screen2()),
              SizedBox(height: 20),
              boton('Ejemplo de ListView', Colors.green, context, Screen3()),
              SizedBox(height: 20),
              boton('Entradas de datos', Colors.red, context, Screen4()),
              SizedBox(height: 20),
              botonStateful(
                'Elemetos de entrada',
                Colors.pink,
                context,
                Screen5(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget boton(
    String texto,
    Color color1,
    BuildContext context,
    StatelessWidget screen,
  ) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color1,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(texto, style: TextStyle(color: Colors.white, fontSize: 20)),
    );
  }

  Widget botonStateful(
    String texto,
    Color color1,
    BuildContext context,
    StatefulWidget screen,
  ) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color1,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(texto, style: TextStyle(color: Colors.white, fontSize: 20)),
    );
  }
}
