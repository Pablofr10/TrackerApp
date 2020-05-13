import 'package:iet_sorveteria/pages/repository/produto.dart';

class Categoria {
  String nome;
  List<Produto> produto;
  int id;

  Categoria({this.nome, this.produto, this.id});

  Categoria.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    if (json['produto'] != null) {
      produto = new List<Null>();
      json['produto'].forEach((v) {
        produto.add(new Produto.fromJson(v));
      });
    }
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    if (this.produto != null) {
      data['produto'] = this.produto.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    return data;
  }
}