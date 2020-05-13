import 'package:flutter/material.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:iet_sorveteria/pages/home/home_mobx.dart';
import 'package:iet_sorveteria/pages/inicial_page.dart';
import 'package:iet_sorveteria/utils/nav.dart';
import 'package:iet_sorveteria/widgets/drawer_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeMobx _page = HomeMobx();
  int indicePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I&T Delícia Gelada", style: TextStyle(fontFamily: 'Slabo', fontSize: 25),),
        centerTitle: true,
      ),
      drawer: DrawerList(),
      body: Observer(
        builder: (context) {
          return _page.pagina;
        },
      ),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.green[400],
          selectedItemBackgroundColor: Theme.of(context).primaryColor,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Theme.of(context).primaryColor,
        ),
        selectedIndex: indicePage,
        onSelectTab: (index) {
          setState(() {
            _page.pageMostrar(index);
            indicePage = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'Início',
          ),
          FFNavigationBarItem(
            iconData: Icons.menu,
            label: 'Cardápio',
          ),
          FFNavigationBarItem(
            iconData: Icons.shopping_cart,
            label: 'Sacola',
          ),
          FFNavigationBarItem(
            iconData: Icons.star,
            label: 'Fidelidade',
          ),
        ],
      ),
    );
  }

  _onClickPage(page) async {
    push(context, InicialPage(), replace: true);
  }
}
