import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supermercado1/classes/listItemCatalogo.dart';

import '../home.dart';

class IncluirProdutosDoCatalogo extends StatefulWidget {
  String categoria = '';
  IncluirProdutosDoCatalogo(this.categoria);

  @override
  _IncluirProdutosDoCatalogoState createState() =>
      _IncluirProdutosDoCatalogoState();
}

class _IncluirProdutosDoCatalogoState extends State<IncluirProdutosDoCatalogo> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      (index == 0)
          ? Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Home();
            }))
          : (index == 1)
              ? Navigator.pop(context)
              : (index == 2)
                  ? Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                      return Home();
                    }))
                  : Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                      return Home();
                    }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos de ${widget.categoria}'),
      ),
      body: ListItemCatalogo(widget.categoria),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.lessThan, color: Colors.white),
            label: 'Voltar',
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
