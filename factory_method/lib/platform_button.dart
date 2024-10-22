import 'package:factory_method/button.dart';
import 'package:factory_method/button_factory.dart';
import 'package:flutter/material.dart';

class PlatformButton extends StatelessWidget {
  const PlatformButton({super.key});


  @override
  Widget build(BuildContext context) {

  // Simulamos la plataforma aquí; en una app real, podrías usar Platform.isAndroid o Platform.isIOS
  String platformType = "iOS";
  ButtonFactory factory = ButtonFactory();
  Button button = factory.createButton(platformType);
  button.render();
  return ElevatedButton(
      onPressed: () {
          button.render();
      },
      child: const Text("Presióname"),
    );
  }
}