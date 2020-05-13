import 'package:flutter/material.dart';
import 'package:iet_sorveteria/pages/login/login_page.dart';
import 'package:iet_sorveteria/pages/login_page.dart';
import 'package:iet_sorveteria/utils/nav.dart';
import 'package:iet_sorveteria/widgets/categoria_lista.dart';

class DetalhesCat {
  int id;
  String nome;
  String desc;
  String img;

  DetalhesCat(this.id, this.nome, this.desc, this.img);
}

class CadapioPage extends StatelessWidget {
  var svgs = {
    "fitness": "assets/svgs/fitness.svg",
    "milkshack": "assets/svgs/milkshack.svg",
    "tacas": "assets/svgs/tacas.svg"
  };

  Map cats = {
    1 : DetalhesCat(1, "fitness", "lorem inpsum dolor", "https://abrilmdemulher.files.wordpress.com/2016/10/receita-bolo-sorvete-brigadeiro.jpg?quality=90&strip=info&w=620&h=372&crop=1"),
    2 : DetalhesCat(2, "Taças", "lorem inpsum dolor", "https://lh3.googleusercontent.com/proxy/IjZ29QynIyB0UMNqEBsS31qCTKToWklHZdkk3QKu8F4nGxCmPu_-rqK9LG583VC7Bp2WFiHku_EF_BMNirzmry0uw30BEHbFwr1s_Z1k56BKVsPTr3AavucFwrgD7bw"),
    3 : DetalhesCat(3, "Fitness", "lorem inpsum dolor", "https://img.stpu.com.br/?img=https://s3.amazonaws.com/pu-mgr/default/a0RG000000mO2mGMAS/5ab28702e4b015196cfaaf50.jpg&w=710&h=462"),
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Categórias",
            style: TextStyle(fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CategoriaLista(
                  nome: "Fitness", cor: Colors.blue, icon: svgs["fitness"],),
              CategoriaLista(
                  nome: "Taças", cor: Colors.yellow, icon: svgs["milkshack"], detalhe: cats["Taças"],),
              CategoriaLista(
                  nome: "Fitness", cor: Colors.red, icon: svgs["tacas"], detalhe: cats["Taças"],),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CategoriaLista(
                  nome: "Fitness",
                  cor: Colors.cyanAccent,
                  icon: svgs["fitness"]),
              CategoriaLista(
                  nome: "Taças",
                  cor: Colors.amberAccent,
                  icon: svgs["milkshack"]),
              CategoriaLista(
                  nome: "Fitness",
                  cor: Colors.purpleAccent,
                  icon: svgs["tacas"]),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Center(
              child: Text(
                "Ou",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          InkWell(
            child: Card(
              color: Theme.of(context).primaryColor,
              child: ListTile(
                title: Text(
                  'Monte o seu',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                subtitle: Text(
                  '+ de 20 acompanhamentos para montar seu açai.',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(
                  Icons.navigate_next,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            onTap: () => {},
          ),
        ],
      ),
    );
  }

  _goPage(context) {
    return push(context, LoginPage());
  }
}
