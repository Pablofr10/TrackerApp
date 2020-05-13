import 'package:flutter/material.dart';
import 'package:iet_sorveteria/widgets/produto_lista.dart';
import 'cardapio_page.dart';

class Produtos {
  int id;
  String nome;
  double valor;
  String img;
  String desc;

  Produtos(this.id, this.nome, this.img, this.valor, this.desc);
}

class CardapioDetalhes extends StatelessWidget {
  DetalhesCat detalhe;

  List<Produtos> prods = [
    Produtos(
        1,
        "Delícia Fitness",
        "https://acaidotrevoanchieta.com.br/wp-content/uploads/2018/10/icone_acai_na_tigela.jpg",
        80.00,
        "O melhor da cidadde"),
    Produtos(
        2,
        "Delícia Fitness",
        "https://acaidotrevoanchieta.com.br/wp-content/uploads/2018/10/icone_acai_na_tigela.jpg",
        80.00,
        "O melhor da cidadde"),
    Produtos(
        3,
        "Delícia Fitness",
        "https://acaidotrevoanchieta.com.br/wp-content/uploads/2018/10/icone_acai_na_tigela.jpg",
        80.00,
        "O melhor da cidadde"),
    Produtos(
        4,
        "Delícia Fitness",
        "https://acaidotrevoanchieta.com.br/wp-content/uploads/2018/10/icone_acai_na_tigela.jpg",
        80.00,
        "O melhor da cidadde"),
  ];

  CardapioDetalhes(this.detalhe);

  @override
  Widget build(BuildContext context) {
    print(detalhe);
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, condition) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('Nome Categoria'),
                background: Image.network(
                  "https://abrilmdemulher.files.wordpress.com/2016/10/receita-bolo-sorvete-brigadeiro.jpg?quality=90&strip=info&w=620&h=372&crop=1",
                  fit: BoxFit.cover,
                  color: Colors.green.withOpacity(0.50),
                  colorBlendMode: BlendMode.modulate,
                ),
              ),
            ),
          ];
        },
        body: _body(),
      ),
    );
  }

  Container _body() {
    return Container(
      child: ListView.builder(
        itemCount: prods.length,
        itemBuilder: (BuildContext context, int index) {
          Produtos prod = prods[index];
          return ProdutoLista(prod);
        },
      ),
    );
  }
}
