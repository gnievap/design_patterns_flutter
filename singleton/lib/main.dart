import 'package:flutter/material.dart';
import 'package:singleton/my_home_page.dart';
import 'package:singleton/theme_manager.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

   @override
   State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    // Escuchar cambios en el tema
    ThemeManager.instance.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Ejemplo de singleton',
      home: const MyHomePage(),
      theme: ThemeManager.instance.themeData,
    );
  }



    @override
  void dispose() {
    ThemeManager.instance.removeListener(() {
      setState(() {});
    });
    super.dispose();
  }
}
