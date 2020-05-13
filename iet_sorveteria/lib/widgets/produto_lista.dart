import 'package:flutter/material.dart';
import 'package:iet_sorveteria/pages/cardapio/categoria_detalhes.dart';
import 'package:iet_sorveteria/pages/cardapio/produto_detalhes.dart';
import 'package:iet_sorveteria/utils/nav.dart';

class ProdutoLista extends StatelessWidget {

  Produtos prod;

  ProdutoLista(this.prod);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
          leading: Image.network(prod.img, fit: BoxFit.cover),
          title: Text("Favoritos"),
          subtitle: Text("mais informações..."),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            print(prod.id);
            push(context, ProdutoDetalhe(prod.id));
          }),
    );
  }
}
