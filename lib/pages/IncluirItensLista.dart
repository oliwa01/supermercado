import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supermercado1/classes/ListaItensCategoriaProdutos.dart';

import '../home.dart';


class IncluirItensLista extends StatefulWidget {
  final String categoria;
  IncluirItensLista(this.categoria);

  @override
  _IncluirItensListaState createState() => _IncluirItensListaState();
}

class _IncluirItensListaState extends State<IncluirItensLista> {
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
        title: Text('Lista de Compras'),
      ),
      body: ListaItensCategoriaProdutos(widget.categoria),
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
