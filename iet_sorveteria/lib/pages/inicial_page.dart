import 'package:flutter/material.dart';
import 'package:iet_sorveteria/utils/nav.dart';

class Recomendados {
  String nome;
  String foto;
  String desc;

  Recomendados(this.nome, this.foto, this.desc);
}

class InicialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Recomendados> recomendados = [
      Recomendados(
          "Primeiro sorvete",
          "https://fitfoodiefinds.com/wp-content/uploads/2019/03/sq-1.jpg",
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
      Recomendados(
          "Segundo sorvete",
          "https://fitfoodiefinds.com/wp-content/uploads/2019/03/sq-1.jpg",
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
      Recomendados(
          "Terceiro sorvete",
          "https://fitfoodiefinds.com/wp-content/uploads/2019/03/sq-1.jpg",
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
      Recomendados(
          "Quarto sorvete",
          "https://fitfoodiefinds.com/wp-content/uploads/2019/03/sq-1.jpg",
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
    ];

    final tamanho = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Text(
            "Recomendados",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          height: tamanho - ((tamanho / 100) * 40),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recomendados.length,
            itemBuilder: (BuildContext context, int index) {
              return _listView(context, recomendados, index);
            },
          ),
        ),
        Container(),
      ],
    );
  }

  _listView(context, List<Recomendados> recs, index) {
    Recomendados rec = recs[index];
    return Container(
      width: 210,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              height: 200,
              child: Image.network(
                rec.foto,
                fit: BoxFit.cover,
              )),
          Text(
            rec.nome,
            style: TextStyle(fontSize: 18),
          ),
          Expanded(
              child: Text(
            rec.desc,
            maxLines: 4,
            overflow: TextOverflow.clip,
          )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "R 20,90",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
