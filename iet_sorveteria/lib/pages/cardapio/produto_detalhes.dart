import 'package:flutter/material.dart';

class ProdutoDetalhe extends StatelessWidget {
  int idProduto;

  ProdutoDetalhe(this.idProduto);

  @override
  Widget build(BuildContext context) {
    print(idProduto);

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: <Widget>[Text("$idProduto")],
        ),
      ),
    );
  }
}
