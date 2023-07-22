import 'package:previsao_tempo/models/previsao_hora.dart';

class PrevisaoService {
  List<PrevisaoHora> recuperarUtimasPrevisoes() {
    return [
      PrevisaoHora('11:00', 'Ensolarado', 1, 32),
      PrevisaoHora('12:00', 'Ensolarado', 1, 32),
      PrevisaoHora('13:00', 'Ensolarado', 1, 33),
      PrevisaoHora('14:00', 'Ensolarado', 1, 34),
      PrevisaoHora('15:00', 'Ensolarado', 1, 35),
      PrevisaoHora('16:00', 'Ensolarado', 1, 36),
      PrevisaoHora('17:00', 'Parcialmente ensolarado', 2, 32),
      PrevisaoHora('18:00', 'Nuvens esparsas', 1, 28),
      PrevisaoHora('19:00', 'Nublado', 1, 26),
      PrevisaoHora('20:00', 'Nublado', 1, 25),
    ];
  }
}
