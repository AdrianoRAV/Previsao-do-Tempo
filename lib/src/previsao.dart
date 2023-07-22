import 'package:flutter/material.dart';
import 'package:previsao_tempo/controllers/tema_controller.dart';
import 'package:previsao_tempo/src/home.dart';

class previsaoApp extends StatelessWidget {
  const previsaoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: TemaController.instancia,
      builder: (context, child) {
        return MaterialApp(
          title: 'Previsão do Tempo',
          theme: TemaController.instancia.usarTemaEscuro
              ? ThemeData.dark()
              : ThemeData.light(),
          debugShowCheckedModeBanner: false,
          home: Home(),
        );
      },
    );
  }
}
