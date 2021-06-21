import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supermercado1/classes/ListaComprasOrdemAlfabetica.dart';
import 'package:supermercado1/classes/ListaComprasOrdemCategorias.dart';
import 'package:supermercado1/modulos/MenuLateral.dart';
import 'package:supermercado1/pages/IncluiListaCompras.dart';
import 'package:supermercado1/pages/IncluiProdutoNovo.dart';
import 'package:supermercado1/pages/selecionaProdutosCatalogo.dart';

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
              : Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return IncluiListaCompras();
                }));
    });
  }

  @override
  GlobalKey<SliderMenuContainerState> _key =
      new GlobalKey<SliderMenuContainerState>();
  late String title = "SuperMercado";

  Future<void> _resetLista() async {
    FirebaseFirestore.instance
        .collection('Comprar')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        FirebaseFirestore.instance
            .collection('Comprar')
            .doc(doc.id)
            .update({'comprado': false});
      });
    });
  }

  void initState() {
    title = "Lista de Compras";
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
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
          sliderMenu: MenuLateral(
            onItemClick: (title) {
              _key.currentState!.closeDrawer();

              (title == 'Produtos Catalogos')
                  ? Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                      return SelecionaProdutosCatalogos();
                    }))
                  : (title == 'Produtos Novos')
                      ? Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                          return IncluiProdutoNovo();
                        }))
                      : (title == 'Reset Lista')
                          ? _resetLista()
                          : Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                              return IncluiListaCompras();
                            }));
              title = title;
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
            label: 'Produtos',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.plusCircle, color: Colors.white),
            label: 'Produtos',
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
