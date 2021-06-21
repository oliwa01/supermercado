import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListaComprasOrdemCategoria extends StatefulWidget {
  @override
  _ListaComprasOrdemCategoriaState createState() =>
      _ListaComprasOrdemCategoriaState();
}

class _ListaComprasOrdemCategoriaState
    extends State<ListaComprasOrdemCategoria> {
  @override
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

  _alertaDeletaOk() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: Colors.white,
        title: const Text('Produto'),
        content: const Text('Produto Excluido da Lista'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context, 'OK');
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  bool produtoNoCarrinho = false;
  List<String> catlist = [
    'Bebidas',
    'Doces Biscoito',
    'Frios Laticinios',
    'Higiene',
    'Hortifruti',
    'Limpeza',
    'Mercearia',
    'Padaria',
    'Saudáveis'
  ];
  Widget build(BuildContext context) {
    CollectionReference compras =
        FirebaseFirestore.instance.collection('Comprar');
    CollectionReference produtos =
        FirebaseFirestore.instance.collection('Produtos');

    Future<void> itemNoCarrinho(nome, categoria, bool poetira) {
      return compras
          .doc(nome)
          .update({'comprado': poetira})
          .then((value) => {})
          .catchError((error) => _alertaInclusaoErro(Error));
    }

    Future<void> liberaProduto(nome, categoria) {
      return produtos
          .doc(nome)
          .update({'listacompras': false})
          .then((value) => {})
          .catchError((error) => _alertaInclusaoErro(Error));
    }

    Future<void> exclui_lista_compras(nome, categoria) {
      // Call the user's CollectionReference to add a new user
      return compras
          .doc(nome)
          .delete()
          .then((value) => _alertaDeletaOk())
          .catchError((error) => _alertaInclusaoErro(Error));
    }

    final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
        .collection('Comprar')
        .orderBy('produto', descending: false)
        .snapshots();
    //
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            return Card(
              child: ListTile(
                tileColor: document['comprado']
                    ? Colors.grey
                    : document['categoria'] == catlist[0]
                        ? Colors.red
                        : document['categoria'] == catlist[1]
                            ? Colors.yellowAccent
                            : document['categoria'] == catlist[2]
                                ? Colors.green
                                : document['categoria'] == catlist[3]
                                    ? Colors.blueAccent
                                    : document['categoria'] == catlist[4]
                                        ? Colors.amber
                                        : document['categoria'] == catlist[5]
                                            ? Colors.deepOrange
                                            : document['categoria'] ==
                                                    catlist[6]
                                                ? Colors.indigo
                                                : document['categoria'] ==
                                                        catlist[7]
                                                    ? Colors.pink
                                                    : document['categoria'] ==
                                                            catlist[8]
                                                        ? Colors.orange
                                                        : Colors.white,
                title: new Text(document.id),
                subtitle: new Text(document['categoria']),
                leading: TextButton(
                    child:
                        Icon(FontAwesomeIcons.minusCircle, color: Colors.white),
                    onPressed: () {
                      liberaProduto(document['produto'], document['categoria']);
                      exclui_lista_compras(
                          document['produto'], document['categoria']);
                    }),
                trailing: TextButton(
                  child: document['comprado']
                      ? Icon(FontAwesomeIcons.cartArrowDown,
                          color: Colors.deepPurple)
                      : Icon(FontAwesomeIcons.cartPlus, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      itemNoCarrinho(document['produto'], document['categoria'],
                          !document['comprado']);
                    });
                  },
                ),
                onTap: () {},
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
