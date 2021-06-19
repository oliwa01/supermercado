import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supermercado1/classes/rowCategoriaMenu.dart';

import 'incluiListaCompras.dart';

class SelecionaProdutosCatalogos extends StatefulWidget {
  const SelecionaProdutosCatalogos({Key? key}) : super(key: key);

  @override
  _SelecionaProdutosCatalogosState createState() =>
      _SelecionaProdutosCatalogosState();
}

class _SelecionaProdutosCatalogosState
    extends State<SelecionaProdutosCatalogos> {
  @override
  int _selectedIndex = 0;

  //

  void _onItemTapped(int index) {
    setState(() {
      (index == 0)
          ? Navigator.push(context, MaterialPageRoute(builder: (context) {
              return IncluiListaCompras();
            }))
          : (index == 1)
              ? Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return IncluiListaCompras();
                }))
              : Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return IncluiListaCompras();
                }));
    });
  }

  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    final heightSize = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text("Selecionar Produtos do Catalogo")),
      body: Container(
        width: widthSize,
        height: heightSize,
        child: Column(
          children: [
            Expanded(
              child: Container(
                  color: Colors.red,
                  child:
                      RowCategoriaMenu("Saudáveis", FontAwesomeIcons.utensils)),
            ),
            Expanded(
              child: Container(
                  color: Colors.amber,
                  child:
                      RowCategoriaMenu("Bebidas", FontAwesomeIcons.wineBottle)),
            ),
            Expanded(
              child: Container(
                  color: Colors.deepOrange,
                  child: RowCategoriaMenu(
                      "Doces Biscoito", FontAwesomeIcons.candyCane)),
            ),
            Expanded(
              child: Container(
                  color: Colors.yellowAccent,
                  child:
                      RowCategoriaMenu("Higiene", FontAwesomeIcons.pumpSoap)),
            ),
            Expanded(
              child: Container(
                  color: Colors.green,
                  child: RowCategoriaMenu("Limpeza", FontAwesomeIcons.broom)),
            ),
            Expanded(
              child: Container(
                  color: Colors.red,
                  child: RowCategoriaMenu("Mercearia", FontAwesomeIcons.store)),
            ),
            Expanded(
              child: Container(
                  color: Colors.greenAccent,
                  child:
                      RowCategoriaMenu("Padaria", FontAwesomeIcons.breadSlice)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.shoppingBag, color: Colors.white),
            label: 'Lista Compras',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.plusCircle, color: Colors.white),
            label: 'Incluir Produtos Novos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
