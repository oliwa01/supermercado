import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supermercado1/classes/ListaComprasOrdemAlfabetica.dart';
import 'package:supermercado1/classes/ListaComprasOrdemCategorias.dart';
import 'package:supermercado1/pages/IncluiListaCompras.dart';
import 'package:supermercado1/pages/IncluiProdutoNovo.dart';

import 'menu_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool sort = false;
  int _selectedIndex = 0;
  //

  void _onItemTapped(int index) {
    setState(() {
      (index == 0)
          ? sort = true
          : (index == 1)
              ? sort = false
              : (index == 2)
                  ? Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                      return IncluiProdutoNovo();
                    }))
                  : (index == 3)
                      ? Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                          return IncluiProdutoNovo();
                        }))
                      : Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                          return IncluiListaCompras();
                        }));
    });
  }

  @override
  GlobalKey<SliderMenuContainerState> _key =
      new GlobalKey<SliderMenuContainerState>();
  late String title = "SuperMercado";
  void initState() {
    title = "Home";
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Lista de Compras'),
      ),
      body: SliderMenuContainer(
          appBarColor: Colors.white,
          key: _key,
          sliderMenuOpenSize: 200,
          title: Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          sliderMenu: MenuWidget(
            onItemClick: (title) {
              _key.currentState!.closeDrawer();
              setState(() {
                title = title;
              });
            },
          ),
          sliderMain: sort
              ? ListaComprasOrdemAlfabetica()
              : ListaComprasOrdemCategoria()),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.indigo,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.sortAmountDown, color: Colors.white),
            label: 'Categoria',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.sortAlphaDown, color: Colors.white),
            label: 'Categoria',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.plusCircle, color: Colors.white),
            label: 'Catalogo',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.plusCircle, color: Colors.white),
            label: 'Novo',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.plusCircle, color: Colors.white),
            label: 'Selecionado',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
