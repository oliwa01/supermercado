import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListaItensCategoriaProdutos extends StatefulWidget {
  final String cat;
  ListaItensCategoriaProdutos(this.cat);

  @override
  _ListaItensCategoriaProdutosState createState() =>
      _ListaItensCategoriaProdutosState();
}

class _ListaItensCategoriaProdutosState
    extends State<ListaItensCategoriaProdutos> {
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
              Navigator.pop(context, 'OK');
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Color colorTile = Colors.transparent;
  Widget build(BuildContext context) {
    CollectionReference compras =
        FirebaseFirestore.instance.collection('Comprar');
    CollectionReference produtos =
        FirebaseFirestore.instance.collection('Produtos');

    Future<void> inclui_lista_compras(nome, categoria) {
      // Call the user's CollectionReference to add a new user
      return compras.doc(nome).set({
        'produto': nome,
        'categoria': categoria,
        'comprado': false
      }).catchError((error) => _alertaInclusaoErro(Error));
    }

    Future<void> set_produto_na_lista_compras(nome, categoria) {
      // Call the user's CollectionReference to add a new user
      return produtos.doc(nome).update({'listacompras': true}).catchError(
          (error) => _alertaInclusaoErro(Error));
    }

    Future<void> exclui_lista_compras(nome, categoria) {
      // Call the user's CollectionReference to add a new user
      return compras
          .doc(nome)
          .delete()
          .catchError((error) => _alertaInclusaoErro(Error));
    }

    Future<void> unset_produto_na_lista_compras(nome, categoria) {
      // Call the user's CollectionReference to add a new user
      return produtos.doc(nome).update({'listacompras': false}).catchError(
          (error) => _alertaInclusaoErro(Error));
    }

    final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
        .collection('Produtos')
        .where('categoria', isEqualTo: widget.cat)
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
                leading: TextButton(
                    child: Icon(FontAwesomeIcons.minusCircle),
                    onPressed: () {
                      unset_produto_na_lista_compras(
                          document['produto'], document['categoria']);
                      exclui_lista_compras(
                          document['produto'], document['categoria']);
                    }),
                tileColor:
                    document['listacompras'] ? Colors.green : Colors.white,
                title: new Text(document['produto']),
                subtitle: new Text(document['categoria']),
                trailing: TextButton(
                    child: Icon(FontAwesomeIcons.plusCircle),
                    onPressed: () {
                      set_produto_na_lista_compras(
                          document['produto'], document['categoria']);
                      inclui_lista_compras(
                          document['produto'], document['categoria']);
                    }),
                onTap: () {},
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
