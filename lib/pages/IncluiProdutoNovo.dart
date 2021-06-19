import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../home.dart';

class IncluiProdutoNovo extends StatefulWidget {
  const IncluiProdutoNovo({Key? key}) : super(key: key);

  @override
  _IncluiProdutoNovoState createState() => _IncluiProdutoNovoState();
}

class _IncluiProdutoNovoState extends State<IncluiProdutoNovo> {
  int _selectedIndex = 0;
  //
  String _nome = '';
  String _categoria = '';
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

  List<String> catlist = [
    'Departamento',
    'Alimentação',
    'Bebidas',
    'Carnes e Frios',
    'Higiene',
    'Hortifluti',
    'Limpeza',
  ];
  String selectedCategoria = 'Departamento';
  DropdownButton<String> androidDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currency in catlist) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(
      icon: const Icon(FontAwesomeIcons.store, color: Colors.blueAccent),
      iconSize: 40,
      elevation: 20,
      style: const TextStyle(color: Colors.black, fontSize: 40),
      underline: Container(
        height: 2,
        color: Colors.blueAccent,
      ),
      value: selectedCategoria,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectedCategoria = value!;
        });
      },
    );
  }

  _alertaerro() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: Colors.white,
        title: const Text('Produto'),
        content: const Text('Preenchimento do campo Produto é obrigatório. '),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  _alertaInclusaoErro(erro) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: Colors.white,
        title: const Text('Erro'),
        content: Text(erro),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  _alertaInclusaoOk() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: Colors.white,
        title: const Text('Produto'),
        content: const Text('Produto Incluido com Sucesso'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              _nome = '';
              selectedCategoria = "Departamento";
              Navigator.pop(context, 'OK');
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _controllerNome = TextEditingController(text: "");
    CollectionReference produtos =
        FirebaseFirestore.instance.collection('Produtos');

    final widthSize = MediaQuery.of(context).size.width;
    final heightSize = MediaQuery.of(context).size.height;

    nomeDigitado(value) {
      setState(() {
        _nome = value;
        _controllerNome = value;
      });

      return _nome;
    }

    Future<void> addProd() {
      // Call the user's CollectionReference to add a new user
      return produtos
          .doc(_nome)
          .set({
            'produto': _nome,
            'categoria': selectedCategoria,
            'listacompras': false
          })
          .then((value) => _alertaInclusaoOk())
          .catchError((error) => _alertaInclusaoErro(Error));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Compras'),
      ),
      body: Container(
        color: Colors.white,
        height: heightSize * 0.9,
        width: widthSize,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              Expanded(child: androidDropdown()),
              selectedCategoria != "Departamento"
                  ? Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          child: TextField(
                            controller: _controllerNome,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.black, fontSize: 25),
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(32, 16, 32, 16),
                                hintText: "Produto",
                                hintStyle: TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32))),
                            onChanged: (value) => {
                              nomeDigitado(value),
                            },
                          )))
                  : Expanded(child: Container()),
              selectedCategoria != "Departamento"
                  ? Expanded(
                      child: Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red),
                      child: TextButton(
                        onPressed: addProd,
                        child: Text(
                          "INCLUIR PRODUTO",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ))
                  : Expanded(child: Container()),
            ],
          ),
        ),
      ),
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
