import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supermercado1/pages/incluirProdutosDoCatalogo.dart';

class RowCategoriaMenu extends StatefulWidget {
  String categoria = '';
  final IconData icone;

  RowCategoriaMenu(this.categoria, this.icone);
  @override
  _RowCategoriaMenuState createState() => _RowCategoriaMenuState();
}

class _RowCategoriaMenuState extends State<RowCategoriaMenu> {
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
              return IncluirProdutosDoCatalogo(widget.categoria);
            }));
          },
        )
      ],
    );
  }
}
