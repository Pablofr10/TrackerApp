import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iet_sorveteria/pages/cardapio/cardapio_page.dart';
import 'package:iet_sorveteria/pages/cardapio/categoria_detalhes.dart';
import 'package:iet_sorveteria/utils/nav.dart';

class CategoriaLista extends StatelessWidget {
  String nome;
  Color cor;
  String icon;
  DetalhesCat detalhe;

  CategoriaLista(
      {@required this.nome,
      @required this.icon,
      @required this.cor,
      this.detalhe});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width / 3 - 20,
        height: 90,
        decoration: BoxDecoration(
          color: cor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              child: SvgPicture.asset(icon),
            ),
            Text(
              nome,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
            )
          ],
        ),
      ),
      onTap: () => {push(context, CardapioDetalhes(this.detalhe))},
    );
  }
}
