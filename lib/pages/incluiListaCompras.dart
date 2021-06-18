import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supermercado1/pages/incluiProdutoListaCompras.dart';

import 'incluirItensLista.dart';

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
          : Navigator.push(context, MaterialPageRoute(builder: (context) {
              return IncluiProdutoListaCompras();
            }));
    });
  }

  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    final heightSize = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text("Incluir Itens Lista de Compra")),
      body: Container(
        width: widthSize,
        height: heightSize,
        child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(FontAwesomeIcons.utensils),
                  Text('Alimentação'),
                  TextButton(
                    child:
                        Icon(FontAwesomeIcons.arrowRight, color: Colors.black),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return IncluirItensLista('Alimentação');
                      }));
                    },
                  )
                ],
              ),
            )),
            Expanded(
                child: Container(
              color: Colors.yellowAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(FontAwesomeIcons.wineBottle),
                  Text('Bebidas'),
                  TextButton(
                    child:
                        Icon(FontAwesomeIcons.arrowRight, color: Colors.black),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return IncluirItensLista('Bebidas');
                      }));
                    },
                  )
                ],
              ),
            )),
            Expanded(
                child: Container(
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(FontAwesomeIcons.drumstickBite),
                  Text('Carnes e Frios'),
                  TextButton(
                    child:
                        Icon(FontAwesomeIcons.arrowRight, color: Colors.black),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return IncluirItensLista('Carnes e Frios');
                      }));
                    },
                  )
                ],
              ),
            )),
            Expanded(
                child: Container(
              color: Colors.blueAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(FontAwesomeIcons.pumpSoap),
                  Text('Higiene'),
                  TextButton(
                    child:
                        Icon(FontAwesomeIcons.arrowRight, color: Colors.black),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return IncluirItensLista('Higiene');
                      }));
                    },
                  )
                ],
              ),
            )),
            Expanded(
                child: Container(
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(FontAwesomeIcons.carrot),
                  Text('Hortifluti'),
                  TextButton(
                    child:
                        Icon(FontAwesomeIcons.arrowRight, color: Colors.black),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return IncluirItensLista('Hortifluti');
                      }));
                    },
                  )
                ],
              ),
            )),
            Expanded(
                child: Container(
              color: Colors.deepOrange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(FontAwesomeIcons.broom),
                  Text('Limpeza'),
                  TextButton(
                    child:
                        Icon(FontAwesomeIcons.arrowRight, color: Colors.black),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return IncluirItensLista('Limpeza');
                      }));
                    },
                  )
                ],
              ),
            )),
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
