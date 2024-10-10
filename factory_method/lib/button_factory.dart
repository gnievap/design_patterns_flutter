import 'package:factory_method/android_button.dart';
import 'package:factory_method/button.dart';
import 'package:factory_method/ios_button.dart';

class ButtonFactory 

{

Button createButton(String type) 

{

if (type == "Android") 

{
return AndroidButton();

} else if (type == "iOS") 

{

return IOSButton();

} else 

{

throw Exception("Tipo de botón no soportado");

}

}

}