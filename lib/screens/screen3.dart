import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> perros = const {
    'Ginger': 'assets/imgs/perrito.png',
    'KC': 'assets/imgs/perrito1.png',
    'Blackie': 'assets/imgs/perrito2.png',
    'Nicky': 'assets/imgs/perrito3.png',
    'Naoisha': 'assets/imgs/perrito4.png',
  };

  final Map<String, String> gatos = const {
    'Moji': 'assets/imgs/gato.png',
    'Moka': 'assets/imgs/gato1.png',
    'Felix': 'assets/imgs/gato2.png',
    'Pikachu': 'assets/imgs/gato3.png',
    'Frenchie': 'assets/imgs/gato4.png',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3')),
      body: ListView(
        children: [
          ...perros.entries.map((perro) {
            return _titleDog(
              perro.key,
              perro.value,
              Colors.blueAccent,
              Colors.amberAccent,
              Colors.white,
            );
          }),

          Divider(),

          ...gatos.entries.map((gato) {
            return _tileCat(
              gato.key,
              gato.value,
              Colors.grey,
              Colors.amberAccent,
              Colors.white,
            );
          }),
        ],
      ),
    );
  }

  Widget _titleDog(
    String dogName,
    String dogImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ) {
    final tile = ListTile(
      leading: Image.asset(dogImage, width: 50, height: 50),
      title: Text(dogName),
      subtitle: Text('Un perro maravilloso'),
      trailing: Icon(Icons.arrow_forward),
      tileColor: tileColor,
      iconColor: iconColor,
      textColor: textColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    );
    final espacio = SizedBox(height: 10);
    return Column(children: [tile, espacio]);
  }

  Widget _tileCat(
    String catName,
    String catImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ) {
    final tile = ListTile(
      title: Image.asset(catImage, width: 50, height: 50),
      leading: Icon(Icons.pets_rounded),
      subtitle: Text(catName),
      trailing: Icon(Icons.arrow_forward),
      tileColor: tileColor,
      iconColor: iconColor,
      textColor: textColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    );
    final espacio = SizedBox(height: 10);
    return Column(children: [tile, espacio]);
  }
}
