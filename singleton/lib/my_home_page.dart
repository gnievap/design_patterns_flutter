import 'package:flutter/material.dart';
import 'package:singleton/theme_manager.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de Tema Singleton'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Presiona el botón para cambiar el tema'),
            Switch(
               value: ThemeManager.instance.themeData == ThemeData.dark(),
              onChanged: (value) {
                setState(() {
                  if (value) {
                    ThemeManager.instance.setTheme(ThemeData.dark());
                  } else {
                    ThemeManager.instance.setTheme(ThemeData.light());
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}