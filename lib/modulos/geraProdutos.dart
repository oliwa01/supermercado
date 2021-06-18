import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GeraCadastroProduto extends StatefulWidget {
  const GeraCadastroProduto({Key? key}) : super(key: key);

  @override
  _GeraCadastroProdutoState createState() => _GeraCadastroProdutoState();
}

class _GeraCadastroProdutoState extends State<GeraCadastroProduto> {
  var _produtos = [
    ["Sabão em pó", "Limpeza"],
    ["Amaciante", "Limpeza"],
    ["Detergente", "Limpeza"],
    ["Água sanitária", "Limpeza"],
    ["Esponja de aço", "Limpeza"],
    ["Buchinha de pia", "Limpeza"],
    ["Sabão em pedra", "Limpeza"],
    ["Sabonete", "Higiene"],
    ["Shampoo", "Higiene"],
    ["Condicionador", "Higiene"],
    ["Desinfetante", "Limpeza"],
    ["Lustra móveis", "Limpeza"],
    ["Tira manchas", "Limpeza"],
    ["Limpa vidros", "Limpeza"],
    ["Alcool", "Limpeza"],
    ["Saco de lixo 30l", "Limpeza"],
    ["Saco de lixo 50l", "Limpeza"],
    ["Refrigerante 2l", "Bebidas"],
    ["Suco garrafa 1l", "Bebidas"],
    ["Suco caixinha 500ml", "Bebidas"],
    ["Suco sachê", "Bebidas"],
    ["Leite integral litro", "Bebidas"],
    ["Leite desnatado litro", "Bebidas"],
    ["Arroz 5kg", "Alimentação"],
    ["Feijão 2kg", "Alimentação"],
    ["Macarrão", "Alimentação"],
    ["Extrato de tomate", "Alimentação"],
    ["Molho de tomate", "Alimentação"],
    ["Sal", "Alimentação"],
    ["Açucar", "Alimentação"],
    ["Achocolatado", "Alimentação"],
    ["Bolacha", "Alimentação"],
    ["Café", "Alimentação"],
    ["Farofa pronta", "Alimentação"],
    ["Fubá", "Alimentação"],
    ["Farinha de trigo", "Alimentação"],
    ["Farinha de milho", "Alimentação"],
    ["Farinha de mandioca", "Alimentação"],
    ["Sardinha", "Alimentação"],
    ["Atum", "Alimentação"],
    ["Maionese", "Alimentação"],
    ["Molho de pimenta", "Alimentação"],
    ["Ervilha", "Alimentação"],
    ["Milho verde", "Alimentação"],
    ["Seleta ", "Alimentação"],
    ["Doce de leite", "Alimentação"],
    ["Goiabada", "Alimentação"],
    ["Milho de pipoca", "Alimentação"],
    ["Óleo de cozinha", "Alimentação"],
    ["Leite em pó", "Alimentação"],
    ["Creme de leite", "Alimentação"],
    ["Leite condensado", "Alimentação"],
    ["Pão de forma", "Alimentação"],
    ["Alface", "Hortifluti"],
    ["Couve", "Hortifluti"],
    ["Batata", "Hortifluti"],
    ["Tomate", "Hortifluti"],
    ["Cenoura", "Hortifluti"],
    ["Beterraba", "Hortifluti"],
    ["Chicória", "Hortifluti"],
    ["Mandioca", "Hortifluti"],
    ["Chuchu", "Hortifluti"],
    ["Espinafre", "Hortifluti"],
    ["Banana", "Hortifluti"],
    ["Ovos", "Hortifluti"],
    ["Uva", "Hortifluti"],
    ["Abacate", "Hortifluti"],
    ["Mamão", "Hortifluti"],
    ["Melancia", "Hortifluti"],
    ["Melão", "Hortifluti"],
    ["Jiló", "Hortifluti"],
    ["Quiabo", "Hortifluti"],
    ["Salsa", "Hortifluti"],
    ["Cheiro verde", "Hortifluti"],
    ["Cebola", "Hortifluti"],
    ["Queijo Minas", "Carnes e Frios"],
    ["Queijo Mussarela", "Carnes e Frios"],
    ["Queijo outros", "Carnes e Frios"],
    ["Manteiga", "Carnes e Frios"],
    ["Margarina", "Carnes e Frios"],
    ["Iogurte", "Carnes e Frios"],
    ["Presunto", "Carnes e Frios"],
    ["Peixe", "Carnes e Frios"],
    ["Frango", "Carnes e Frios"],
    ["Carne vermelha", "Carnes e Frios"],
    ["Carne seca", "Carnes e Frios"],
    ["Salsicha", "Carnes e Frios"]
  ];
  Future _geradados() async {
    CollectionReference products =
        FirebaseFirestore.instance.collection('Produtos');
    for (int i = 0; i < _produtos.length; i++) {
      print(_produtos[i][0]);
      products.doc(_produtos[i][0]).set({
        'produto': _produtos[i][0], // John Doe
        'categoria': _produtos[i][1], // Stokes and Sons
        'listacompras': false
      });
    }
  }

  @override
  void initState() {
    _geradados();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
    );
  }
}
