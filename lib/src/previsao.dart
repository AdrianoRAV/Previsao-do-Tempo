import 'package:flutter/material.dart';
import 'package:previsao_tempo/src/home.dart';

class previsaoApp extends StatelessWidget {
  const previsaoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Previsão do Tempo',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
