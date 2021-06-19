import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supermercado1/classes/rowCategoriaMenuLista.dart';
import 'package:supermercado1/pages/IncluiProdutoNovo.dart';
import 'package:supermercado1/pages/selecionaProdutosCatalogo.dart';

class IncluiListaCompras extends StatefulWidget {
  @override
  _IncluiListaComprasState createState() => _IncluiListaComprasState();
}

class _IncluiListaComprasState extends State<IncluiListaCompras> {
  @override
  int _selectedIndex = 0;

  //

  void _onItemTapped(int index) {
    setState(() {
      (index == 0)
          ? Navigator.pop(context)
          : (index == 1)
              ? Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SelecionaProdutosCatalogos();
                }))
              : Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return IncluiProdutoNovo();
                }));
    });
  }

  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    final heightSize = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text("Inclui Lista Compras")),
      body: Container(
        width: widthSize,
        height: heightSize,
        child: Column(
          children: [
            Expanded(
              child: Container(
                  color: Colors.red,
                  child: RowCategoriaMenuLista(
                      " Saudáveis", FontAwesomeIcons.utensils)),
            ),
            Expanded(
              child: Container(
                  color: Colors.amber,
                  child: RowCategoriaMenuLista(
                      "Bebidas", FontAwesomeIcons.wineBottle)),
            ),
            Expanded(
              child: Container(
                  color: Colors.deepOrange,
                  child: RowCategoriaMenuLista(
                      "Doces Biscoito", FontAwesomeIcons.candyCane)),
            ),
            Expanded(
              child: Container(
                  color: Colors.yellowAccent,
                  child: RowCategoriaMenuLista(
                      "Higiene", FontAwesomeIcons.pumpSoap)),
            ),
            Expanded(
              child: Container(
                  color: Colors.green,
                  child:
                      RowCategoriaMenuLista("Limpeza", FontAwesomeIcons.broom)),
            ),
            Expanded(
              child: Container(
                  color: Colors.red,
                  child: RowCategoriaMenuLista(
                      "Mercearia", FontAwesomeIcons.store)),
            ),
            Expanded(
              child: Container(
                  color: Colors.greenAccent,
                  child: RowCategoriaMenuLista(
                      "Padaria", FontAwesomeIcons.breadSlice)),
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
            label: 'Produtos Catagolo',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.plusCircle, color: Colors.white),
            label: 'Produtos Novos',
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
