import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supermercado1/pages/IncluirItensLista.dart';

class RowCategoriaMenuLista extends StatefulWidget {
  String categoria = '';
  final IconData icone;

  RowCategoriaMenuLista(this.categoria, this.icone);
  @override
  _RowCategoriaMenuListaState createState() => _RowCategoriaMenuListaState();
}

class _RowCategoriaMenuListaState extends State<RowCategoriaMenuLista> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(widget.icone),
        Text(widget.categoria),
        TextButton(
          child: Icon(FontAwesomeIcons.arrowRight, color: Colors.black),
          onPressed: () {
            print(widget.categoria);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return IncluirItensLista(widget.categoria);
            }));
          },
        )
      ],
    );
  }
}
