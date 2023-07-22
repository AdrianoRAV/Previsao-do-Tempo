import 'package:flutter/material.dart';
import 'package:previsao_tempo/models/previsao_hora.dart';
import 'package:previsao_tempo/services/previsao_service.dart';
import 'package:previsao_tempo/src/page.dart';
import 'package:previsao_tempo/src/proximas_temperaturas.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<PrevisaoHora> ultimasPrevisoes;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    PrevisaoService service = PrevisaoService();
    ultimasPrevisoes = service.recuperarUtimasPrevisoes();
  }

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
            Padding(padding: EdgeInsets.all(10)),
            ProximasTemperaturas(previsoes: ultimasPrevisoes),
          ],
        ),
      ),
    );
  }
}
