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

  final cats = const ['Moji', 'Moka', 'Felix', 'Pikachu', 'Frenchie'];

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

          ...cats.map(
            (cat) => ListTile(
              leading: Icon(Icons.pets_rounded),
              title: Text(cat),
              subtitle: Text('Gatito complicado'),
              trailing: Icon(Icons.arrow_forward),
              tileColor: const Color.fromARGB(255, 152, 123, 231),
            ),
          ),
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
    final espacio = SizedBox(height: 10);
    return Column(children: [tile, espacio]);
  }
}
