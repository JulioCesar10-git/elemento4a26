// El tema define colores, estilos y fuentes para la app
// Constante de tema

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Definicio de colores para el tema claro
  static const primaryColor = Color.fromARGB(255, 60, 84, 90);
  static const secundaryColor = Color.fromARGB(255, 88, 87, 90);
  static const backColor = Color.fromARGB(237, 221, 224, 225);
  static const accentColor = Color.fromARGB(255, 220, 213, 3);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color.fromARGB(255, 196, 199, 199),
    appBarTheme: AppBarTheme(
      backgroundColor: Color.fromARGB(249, 20, 12, 40),
      titleTextStyle: GoogleFonts.poetsenOne(
        color: Colors.white,
        fontSize: 28.5,
        fontWeight: FontWeight.bold,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(primaryColor),
        foregroundColor: WidgetStateProperty.all(accentColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.poppins(fontSize: 16.0)),
      ),
    ),

    textTheme: TextTheme(
      headlineLarge: GoogleFonts.getFont(
        'Nothing You Could Do',
        color: primaryColor,
        fontSize: 26.5,
        fontWeight: FontWeight.w500,
      ),
      //  Estilo de texto para texto pequeño
      bodySmall: GoogleFonts.montserrat(color: secundaryColor, fontSize: 14.5),
    ),
  );
}
