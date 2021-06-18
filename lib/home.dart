import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supermercado1/classes/ListPageOrderProd.dart';
import 'package:supermercado1/classes/listPage.dart';
import 'package:supermercado1/pages/incluiListaCompras.dart';

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
          ? sort = !sort
          : (index == 1)
              ? sort = !sort
              : (index == 2)
                  ? Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                      return IncluiListaCompras();
                    }))
                  : Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                      return IncluiListaCompras();
                    }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Lista de Compras'),
      ),
      body: sort ? ListPage() : ListPageOrderProd(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.sortAlphaDown, color: Colors.white),
            label: 'Produto',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.sortAmountDown, color: Colors.white),
            label: 'Categoria',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.plusCircle, color: Colors.white),
            label: 'Incluir Produtos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
