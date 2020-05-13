class Produto {
  String nome;
  double preco;
  String descricao;
  String imagemURL;
  bool isDisponivel;
  int quantidade;
  int id;

  Produto(
      {this.nome,
      this.preco,
      this.descricao,
      this.imagemURL,
      this.isDisponivel,
      this.quantidade,
      this.id});

  Produto.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    preco = json['preco'];
    descricao = json['descricao'];
    imagemURL = json['imagemURL'];
    isDisponivel = json['isDisponivel'];
    quantidade = json['quantidade'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['preco'] = this.preco;
    data['descricao'] = this.descricao;
    data['imagemURL'] = this.imagemURL;
    data['isDisponivel'] = this.isDisponivel;
    data['quantidade'] = this.quantidade;
    data['id'] = this.id;
    return data;
  }
}