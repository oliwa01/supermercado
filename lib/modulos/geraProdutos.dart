import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GeraCadastroProduto extends StatefulWidget {
  const GeraCadastroProduto({Key? key}) : super(key: key);

  @override
  _GeraCadastroProdutoState createState() => _GeraCadastroProdutoState();
}

class _GeraCadastroProdutoState extends State<GeraCadastroProduto> {
  var _produtos = [
    ["Abacate 1 Unidade Aprox. 300g", 1.35, "Hortifruti", false],
    ["Abacaxi em Cubos Pratico 1 Pacote 400g", 11.99, "Hortifruti", false],
    ["Abacaxi Pérola Premium  Doce Mel 1 Unidade", 9.99, "Hortifruti", false],
    ["Abóbora Japonesa 1 Unidade Aprox. 1,5kg", 8.99, "Hortifruti", false],
    [
      "Abobrinha Italiana Pacote 1 Unidade Aprox.1kg",
      5.99,
      "Hortifruti",
      false
    ],
    ["Alface Crespa 1 Unidade", 2.79, "Hortifruti", false],
    ["Alface Lisa 1 Unidade", 1.19, "Hortifruti", false],
    ["Alho In Natura Member's Mark 1 Pacote 500g", 23.99, "Hortifruti", false],
    ["Alho Poró Matsusako 1 Unidade Aprox.170g", 3.49, "Hortifruti", false],
    ["Alho Triturado Member's Mark Pote 1kg", 19.99, "Hortifruti", false],
    [
      "Ameixa Seca sem Caroço Raiz do Bem Pacote 1kg",
      44.98,
      "Hortifruti",
      false
    ],
    ["Banana Nanica 8 Unidades Aprox. 1,6kg", 3.02, "Hortifruti", false],
    ["Banana Passa Tropdan Pacote 1kg", 34.98, "Hortifruti", false],
    ["Banana Prata 8 Unidades Aprox. 1,6kg", 4.40, "Hortifruti", false],
    [
      "Batata Doce Roxa Pacote 1 Unidade Aprox. 1,2kg",
      4.79,
      "Hortifruti",
      false
    ],
    ["Batata Pacote 1 Pacote Aprox.2kg", 12.89, "Hortifruti", false],
    ["Berinjela Pacote 1 Unidade Aprox. 600g", 4.19, "Hortifruti", false],
    ["Brócolis Ninja 1 Unidade", 6.90, "Hortifruti", false],
    ["Castanha do Pará Member's Mark Vidro 400g", 39.99, "Hortifruti", false],
    ["Cebola Dulciana Fugita Pacote Aprox. 1kg", 5.99, "Hortifruti", false],
    ["Cebola para Tempero Fugita 1 Pacote 1kg", 5.99, "Hortifruti", false],
    ["Cebola Roxa Fugita 1 Pacote 1kg", 6.99, "Hortifruti", false],
    ["Cebola Suave Fugita 1 Pacote 1kg", 6.98, "Hortifruti", false],
    ["Cenoura 1 Unidade Aprox. 1kg", 2.98, "Hortifruti", false],
    [
      "Cheiro Verde Salsinha e Cebolinha Lavadas La Vita Pacote 60g",
      3.98,
      "Hortifruti",
      false
    ],
    ["Couve Manteiga Lavada La Vita Pacote 200g", 4.99, "Hortifruti", false],
    ["Couve Manteiga Maço 1 Unidade", 2.98, "Hortifruti", false],
    ["Cranberries Member's Mark Pacote 1,02Kg", 44.99, "Hortifruti", false],
    ["Damasco Seco Raiz do Bem Pacote 1kg", 59.98, "Hortifruti", false],
    ["Framboesa 1 Bandeja Aprox. 125g", 21.99, "Hortifruti", false],
    ["Kiwi Bandeja 600g", 12.99, "Hortifruti", false],
    ["Laranja Lima Disney Lucato Pacote 1kg", 7.90, "Hortifruti", false],
    ["Laranja Member's Mark 1 Pacote 10kg", 26.99, "Hortifruti", false],
    ["Laranja Pêra Fresh Citrus 1 Pacote 3kg", 11.99, "Hortifruti", false],
    ["Laranja Pêra Ide Frutas 1 Pacote 3kg", 9.49, "Hortifruti", false],
    ["Laranja Pera Lucato 1 Pacote 3kg", 12.99, "Hortifruti", false],
    ["Limão Tahiti Pacote 1kg", 3.49, "Hortifruti", false],
    [
      "Maça Red Importada Pacote 1 Pacote Aprox.1kg",
      12.98,
      "Hortifruti",
      false
    ],
    [
      "Maçãs Pré Lavadas Looney Tunes Rasip Pacote 1,5kg",
      7.99,
      "Hortifruti",
      false
    ],
    ["Mamão Formosa 1 Unidade Aprox. 1,2kg", 4.79, "Hortifruti", false],
    ["Mamão Papaya 1 Unidade Aprox. 500g", 3.00, "Hortifruti", false],
    [
      "Mandioquinha Salsa Santa Mônica Bandeja 900g",
      11.98,
      "Hortifruti",
      false
    ],
    ["Manga Palmer 1 Unidade Aprox. 500g", 3.50, "Hortifruti", false],
    ["Manga Tommy 1 Unidade Aprox. 400g", 1.40, "Hortifruti", false],
    ["Maracujá Azedo 1 Unidade Aprox. 300g", 2.40, "Hortifruti", false],
    ["Melancia Member's Mark 1 Unidade", 15.98, "Hortifruti", false],
    ["Melão Amarelo Cepi 1 Unidade Aprox. 1,8kg", 7.18, "Hortifruti", false],
    [
      "Melão Doce Redinha Rei 1 Unidade Aprox. 1,7kg",
      13.58,
      "Hortifruti",
      false
    ],
    ["Mexerica Ponkan 1 Unidade Aprox. 200g", 0.38, "Hortifruti", false],
    [
      "Ovos Brancos Grandes Incorbal Bandeja 30 Unidade",
      16.98,
      "Hortifruti",
      false
    ],
    [
      "Ovos Brancos Grandes Member's Mark Bandeja 12 Unidades",
      7.98,
      "Hortifruti",
      false
    ],
    [
      "Ovos Brancos Grandes Member's Mark Bandeja 60 Unidades",
      29.98,
      "Hortifruti",
      false
    ],
    [
      "Ovos Brancos Iana Grandes Bandeja 30 Unidades",
      16.98,
      "Hortifruti",
      false
    ],
    [
      "Ovos Brancos Member's Mark Bandeja 20 Unidades",
      12.98,
      "Hortifruti",
      false
    ],
    [
      "Ovos Caipira Ares do Campo Bandeja 20 Unidades",
      17.98,
      "Hortifruti",
      false
    ],
    [
      "Ovos Caipira Grandes Mr. Caipira Bandeja 10 Unidades",
      15.99,
      "Hortifruti",
      false
    ],
    [
      "Ovos Caipira Orgânico Ômega 3 e Vitamina E Fazenda da Toca Bandeja 10 Unidades",
      14.99,
      "Hortifruti",
      false
    ],
    [
      "Ovos Caipira Vermelho Label Rouge Bandeja 10 Unidades",
      13.99,
      "Hortifruti",
      false
    ],
    [
      "Ovos Caipiras Vermelhos Korin Bandeja 10 Unidades",
      13.99,
      "Hortifruti",
      false
    ],
    [
      "Ovos de Codorna Member's Mark Bandeja 30 Unidades Ovo de Codorna com 30 Unidades",
      5.98,
      "Hortifruti",
      false
    ],
    ["Ovos Extra Brancos Incorbal 20 Unidades", 12.98, "Hortifruti", false],
    [
      "Ovos Grandes Brancos Josidith Bandeja 12 Unidades",
      6.98,
      "Hortifruti",
      false
    ],
    [
      "Ovos Grandes Brancos Korin Bandeja 10 Unidades",
      13.99,
      "Hortifruti",
      false
    ],
    [
      "Ovos Orgânicos Caipira Fazenda da Toca Bandeja 18 Unidades",
      20.99,
      "Hortifruti",
      false
    ],
    [
      "Ovos Vermelhos Grandes Member's Mark Bandeja 20 Unidades",
      13.98,
      "Hortifruti",
      false
    ],
    [
      "Ovos Vermelhos Tipo Grandes Iana Bandeja 30 Unidades",
      17.98,
      "Hortifruti",
      false
    ],
    [
      "Ovos Vermelhos Tipo Grandes Member's Mark Bandeja 12 Unidades",
      8.49,
      "Hortifruti",
      false
    ],
    ["Pepino Comum Pacote 1 Unidade Aprox.700g", 2.51, "Hortifruti", false],
    ["Pimentão Amarelo Rei", 3.99, "Hortifruti", false],
    ["Pimentão Verde 1 Unidade Aprox. 500g", 3.50, "Hortifruti", false],
    [
      "Pimentão Vermelho Rei Pacote,1 Unidade Aprox. 500g",
      3.99,
      "Hortifruti",
      false
    ],
    ["Quiabo Pacote 1 Unidade Aprox. 300g", 4.19, "Hortifruti", false],
    ["Repolho Roxo 1 Unidade Aprox. 1,2kg", 3.59, "Hortifruti", false],
    ["Rúcula Hidropônica 1 Unidade", 3.99, "Hortifruti", false],
    ["Salada Verão Lavada La Vita Pacote 200g", 6.98, "Hortifruti", false],
    ["Sweet Milho Trebeschi 1 Bandeja 450g", 6.98, "Hortifruti", false],
    [
      "Tomate Baby Gourmet Kano Caixa 450g 1 Pote 450g",
      9.98,
      "Hortifruti",
      false
    ],
    ["Tomate Italiano Pacote 1 Unidade Aprox. 1kg", 9.99, "Hortifruti", false],
    ["Uva Doce sem Sementes Doce Mel 1 Pote 250g", 3.79, "Hortifruti", false],
    ["Vagem Macarrão 1 Unidade Aprox. 500g", 9.95, "Hortifruti", false],
  ];
  Future _geradados() async {
    for (int i = 0; i < _produtos.length; i++) {
      print(_produtos[i][0].toString());
      print(_produtos[i][2].toString());
      print('****************************************');
      FirebaseFirestore.instance
          .collection(_produtos[i][2].toString())
          .doc(_produtos[i][0].toString())
          .set({
        'produto': _produtos[i][0].toString(),
        'preco': _produtos[i][1], // John Doe
        'categoria': _produtos[i][2].toString(), // Stokes and Sons
        'selecionado': false
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
