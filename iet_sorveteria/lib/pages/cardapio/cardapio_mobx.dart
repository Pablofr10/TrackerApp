import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
part 'cardapio_mobx.g.dart';

class CardapioMobx = _CardapioMobxBase with _$CardapioMobx;

abstract class _CardapioMobxBase with Store {

  var url = 'http://10.0.2.2:8000/api/categoria';

  Future<> getUnits(String category) async {
    var response = await http.get('$url/$category');
    return response.body;
  }
}
