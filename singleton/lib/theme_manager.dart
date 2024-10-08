import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier{
  // La única instancia de la clase
  static final ThemeManager _instance = ThemeManager._internal();

  // Constructor privado
  ThemeManager._internal();

  // Método para acceder a la instancia
  static ThemeManager get instance => _instance;
   // Propiedad del tema
  ThemeData _themeData = ThemeData.light();

  // Método para obtener el tema actual
  ThemeData get themeData => _themeData;

  // Método para cambiar el tema
  void setTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
}