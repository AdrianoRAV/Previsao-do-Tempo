import 'package:flutter/material.dart';

class TemaController extends ChangeNotifier {
  late bool usarTemaEscuro;

  TemaController() {
    usarTemaEscuro = false;
  }

  trocarTema() {
    usarTemaEscuro = !usarTemaEscuro;
    notifyListeners();
  }
}
