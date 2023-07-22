import 'package:flutter/material.dart';
import 'package:previsao_tempo/src/page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Previsão do Tempo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            pageResumo(
              cidade: 'Santa Luzia - MG',
              temperaturaAtual: 33,
              temperaturaMaxima: 40,
              temperaturaMinima: 21,
              descricao: 'Ensolarado',
              numeroIcone: 1,
            ),
          ],
        ),
      ),
    );
  }
}
