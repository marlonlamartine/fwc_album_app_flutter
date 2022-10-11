import 'package:flutter/widgets.dart';

class ColorsApp {
  //atributo estático para armazenar uma unica instancia dessa classe, também
  //podendo ser vazio
  static ColorsApp? _instance;

  // declaração de não existência de um construtor, impossibilitando de ser
  // instanciada
  ColorsApp._();

  static ColorsApp get i {
    //verifica se o atributo estático _instance é nulo, se sim atribui uma
    //instancia ao atributo _instance
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0XFF791435);
  Color get secondary => const Color(0XFFFDCE50);
  Color get yellow => const Color(0XFFFDCE50);
  Color get grey => const Color(0XFFCCCCCC);
  Color get greyDark => const Color(0XFF999999);
}

//extensão pra retornar as cores criadas de forma mais simples
extension ColorsAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}
