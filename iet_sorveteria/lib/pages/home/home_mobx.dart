import 'package:flutter/material.dart';
import 'package:iet_sorveteria/pages/cardapio/cardapio_page.dart';
import 'package:iet_sorveteria/pages/inicial_page.dart';
import 'package:iet_sorveteria/pages/teste_page.dart';
import 'package:mobx/mobx.dart';
part 'home_mobx.g.dart';

class HomeMobx = _HomeMobxBase with _$HomeMobx;

abstract class _HomeMobxBase with Store {

  @observable
  Widget pagina = InicialPage();
  int indice = 0;
  
  
  @action
  Widget pageMostrar(int indice){
    switch (indice) {
      case 0:
        pagina = InicialPage();
        break;
      case 1:
        pagina = CadapioPage();
        break;
      case 2:
        pagina = TestePage();
        break;
      case 3:
        pagina = InicialPage();
        break;       
    }
    return pagina;  
  }
}