import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GeraCadastroProduto extends StatefulWidget {
  const GeraCadastroProduto({Key? key}) : super(key: key);

  @override
  _GeraCadastroProdutoState createState() => _GeraCadastroProdutoState();
}

class _GeraCadastroProdutoState extends State<GeraCadastroProduto> {
  var _produtos = [
    ["Baguette Francesa Member's Mark Aprox. 300g", "6.60", "Padaria", false],
    [
      "Bolinho Baunilha com Recheio Avelã Flormel Caixa com 14 Unidades 40g cada",
      "37.99",
      "Padaria",
      false
    ],
    [
      "Bolinho Brigadeiro Bauducco Pack 14 Unidades 40g Cada",
      "14.99",
      "Padaria",
      false
    ],
    [
      "Bolinho Chocolate com Recheio Avelã Flormel Caixa com 14 Unidades 40g cada",
      "37.90",
      "Padaria",
      false
    ],
    [
      "Bolinho com Gotas de Chocolate Bauducco com Pack com 14 Unidades 40g Cada",
      "Produto indisponível",
      "Padaria",
      false
    ],
    [
      "Bolinho de Baunilha com Recheio de Goiabada Flormel Caixa com 14 Unidades 40g Cada",
      "Produto indisponível",
      "Padaria",
      false
    ],
    ["Bolo 3 Chocolates Member's Mark Aprox. 1kg", "35.99", "Padaria", false],
    [
      "Bolo Baunilha Recheio Gotas de Chocolate Casa Suíça 250g",
      "8.99",
      "Padaria",
      false
    ],
    ["Bolo Brigadeiro Member's Mark Aprox. 1kg", "35.97", "Padaria", false],
    [
      "Bolo Chocolate com Gotas de Chocolate sem Glúten Jasmine Pacote 300g",
      "19.29",
      "Padaria",
      false
    ],
    ["Bolo Churros Member's Mark Aprox. 1kg", "25.99", "Padaria", false],
    ["Bolo com Gotas de Chocolate Panco Pacote 300g", "5.99", "Padaria", false],
    [
      "Bolo de Baunilha com Gotas de Chocolate Recheio Chocolate Ana Maria Pacote70g",
      "Produto indisponível",
      "Padaria",
      false
    ],
    [
      "Bolo de Baunilha Recheio Baunilha Ana Maria Pacote 70g",
      "Produto indisponível",
      "Padaria",
      false
    ],
    [
      "Bolo De Cenoura com Cobertura de Chocolate Member's Mark Aprox. 800g",
      "15.19",
      "Padaria",
      false
    ],
    ["Bolo de Chocolate Member's Mark Aprox. 1Kg", "21.99", "Padaria", false],
    ["Bolo de Chocolate Panco Pacote 300g", "5.99", "Padaria", false],
    ["Bolo De Laranja Member's Mark Aprox. 1kg", "21.99", "Padaria", false],
    ["Bolo de Laranja Panco Pacote 300g", "6.35", "Padaria", false],
    [
      "Bolo de Paçoca Member's Mark  1 unidade Aprox. 850g",
      "19.53",
      "Padaria",
      false
    ],
    ["Bolo Duplo Desejo Member's Mark Aprox. 1kg", "35.97", "Padaria", false],
    [
      "Bolo Frutas Vermelhas Amor aos Pedaços Caixa 550g",
      "37.99",
      "Padaria",
      false
    ],
    [
      "Bolo Laranja com Chia sem Glúten Jasmine Pacote 300g",
      "15.89",
      "Padaria",
      false
    ],
    ["Bolo Pão de Mel Amor aos Pedaços 550g", "37.99", "Padaria", false],
    ["Bolo Pão de Mel Member's Mark Aprox. 1kg", "25.99", "Padaria", false],
    [
      "Bolo Premium Chocolate Member's Mark Aprox. 1.2kg",
      "47.99",
      "Padaria",
      false
    ],
    [
      "Bolo Suíço Amêndoas Premium Casa Suíça 270g",
      "Produto indisponível",
      "Padaria",
      false
    ],
    [
      "Bolo Suíço Chocolate Casa Suíça 280g",
      "Produto indisponível",
      "Padaria",
      false
    ],
    [
      "Bolo Suíço Nozes Premium Casa Suíça 270g",
      "Produto indisponível",
      "Padaria",
      false
    ],
    [
      "Bolo Tapioca com Coco Member's Mark Aprox. 1kg",
      "23.99",
      "Padaria",
      false
    ],
    [
      "Brioche Francês Member's Mark 1 Unidade Aprox. 450g",
      "9.45",
      "Padaria",
      false
    ],
    [
      "Croissant de Chocolate Member's Mark Aprox. 300g",
      "13.80",
      "Padaria",
      false
    ],
    [
      "Croissant Manteiga Member's Mark Aprox. 6 a 8 Unidades pacote 200g",
      "9.58",
      "Padaria",
      false
    ],
    ["Crouton Integral Member's Mark Pacote 500g", "24.99", "Padaria", false],
    [
      "Cup Cake Laranja Member's Mark 6 Unidades Aprox. 250g",
      "8.40",
      "Padaria",
      false
    ],
    [
      "Cup Cake Red Velvet Member's Mark 2 Unidades. Aprox. 350g",
      "8.75",
      "Padaria",
      false
    ],
    [
      "Cupcake de Chocolate Member's Mark Aprox. 350g",
      "9.45",
      "Padaria",
      false
    ],
    [
      "Donuts Diversos Sabores Member's Mark Aprox. 400g",
      "31.85",
      "Padaria",
      false
    ],
    [
      "Donuts Rings Sabores Member's Mark 9 Unidades Aprox. 500g",
      "26.95",
      "Padaria",
      false
    ],
    ["Medialuna Manteiga Member's Mark Aprox. 200g", "10.78", "Padaria", false],
    [
      "Mini Baguete Pré-Assada Gergelim Member's Mark Pacote 940g",
      "15.99",
      "Padaria",
      false
    ],
    [
      "Mini Donuts Sabores Sortidos Member's Mark 12 Unidades Aprox.200g",
      "12.20",
      "Padaria",
      false
    ],
    ["Mini Pão Francês Member's Mark Pacote 1.9Kg", "23.99", "Padaria", false],
    [
      "Minimuffin Baunilha com Gotas de Chocolate Ana Maria Little Bites Pacote 66g",
      "2.99",
      "Padaria",
      false
    ],
    [
      "Minimuffin Chocolate com Gotas de Chocolate Ana Maria Little Bites Pacote 66g",
      "2.79",
      "Padaria",
      false
    ],
    [
      "Muffins Sortidos Member's Mark 6 Unidades Aprox. 400g",
      "8.01",
      "Padaria",
      false
    ],
    ["Pãezinhos Panco Egg Sponge Pacote 250g", "7.69", "Padaria", false],
    ["Pão Artesano Integral Plus Vita Pacote 500g", "8.99", "Padaria", false],
    ["Pão Australiano Member's Mark Aprox. 400g", "9.20", "Padaria", false],
    [
      "Pão Azeitona Fabricação Própria Member's Mark Aprox. 300g",
      "10.47",
      "Padaria",
      false
    ],
    [
      "Pão Bisnaguinha Cenoura com Mandioquinha Nutrella Pacote 300g",
      "6.49",
      "Padaria",
      false
    ],
    ["Pão Bisnaguinha Integral Panco Pacote 300g", "5.69", "Padaria", false],
    [
      "Pão Bisnaguinha Integral Turma da Nutrição Wickbold Pacote 300g",
      "5.19",
      "Padaria",
      false
    ],
    [
      "Pão Bisnaguinha Original Seven Boys Pacote 300g",
      "5.19",
      "Padaria",
      false
    ],
    ["Pão Bisnaguinha Panco Originais Pacote 300g", "5.19", "Padaria", false],
    [
      "Pão Bisnaguinha Plusvita Bisnaguito Pacote 300g",
      "6.29",
      "Padaria",
      false
    ],
    [
      "Pão Bisnaguinha Tradicional Zero Lactose Pullman Bisnaguito Pacote 300g",
      "4.49",
      "Padaria",
      false
    ],
    [
      "Pão Bisnaguinha Turma da Nutrição Wickbold Pacote 300g",
      "4.99",
      "Padaria",
      false
    ],
    ["Pão Caseiro Coco Panco Pacote 350g", "7.29", "Padaria", false],
    [
      "Pão Caseiro Fabricação Própria Member's Mark Aprox.300g",
      "5.04",
      "Padaria",
      false
    ],
    ["Pão Caseiro Milho Panco Pacote 500g", "6.79", "Padaria", false],
    ["Pão Ciabatta Member's Mark Aprox. 200g", "5.70", "Padaria", false],
    ["Pão da Avó Member's Mark Aprox. 300g", "9.00", "Padaria", false],
    ["Pão de Forma Artesano Pão na Chapa 500g", "8.19", "Padaria", false],
    ["Pão de Forma Artesano Pullman Pacote 500g", "8.39", "Padaria", false],
    [
      "Pão de Forma Castanha-do-Pará & Quinoa Nutrella Pacote 350g",
      "6.78",
      "Padaria",
      false
    ],
    [
      "Pão de Forma Damasco Canela & Chia Nutrella Pacote 350g",
      "Produto indisponível",
      "Padaria",
      false
    ],
    [
      "Pão de Forma Integral 12 Grãos Zero Açúcar Plusvita Pacote 350g",
      "9.89",
      "Padaria",
      false
    ],
    ["Pão de Forma Integral Bauducco Pacote 400g", "6.49", "Padaria", false],
    [
      "Pão de Forma Integral Cranberry Wickbold + Fibras Pacote 400g",
      "Produto indisponível",
      "Padaria",
      false
    ],
    [
      "Pão de Forma Integral Grãos Ancestrais Wickbold Do Forno Pacote 500g",
      "8.29",
      "Padaria",
      false
    ],
    ["Pão de Forma Integral Panco Pacote 500g", "6.39", "Padaria", false],
    [
      "Pão de Forma Integral Pullman Artesano Pacote 500g",
      "8.89",
      "Padaria",
      false
    ],
    [
      "Pão de Forma Integral sem Casca Pullman Pacote 450g",
      "10.99",
      "Padaria",
      false
    ],
    ["Pão de Forma Integral Visconti Pacote 400g", "5.69", "Padaria", false],
    [
      "Pão de Forma Integral Wickbold + Proteína Pacote 400g",
      "9.49",
      "Padaria",
      false
    ],
    [
      "Pão de Forma Integral Wickbold Premium Pacote 450g",
      "5.79",
      "Padaria",
      false
    ],
    [
      "Pão de Forma Multigrãos sem Glúten Zero Lactose Wickbold Pacote 300g",
      "16.50",
      "Padaria",
      false
    ],
    [
      "Pão de Forma Original Plusvita Artesano Pacote 500g",
      "8.49",
      "Padaria",
      false
    ],
    [
      "Pão de Forma Original sem Glúten Zero Lactose Wickbold Pacote 300g",
      "15.99",
      "Padaria",
      false
    ],
    [
      "Pão de Forma Original Wickbold Do Forno Pacote 500g",
      "7.09",
      "Padaria",
      false
    ],
    ["Pão de Forma Panco Premium Pacote 500g", "5.59", "Padaria", false],
    [
      "Pão de Forma sem Casca Tradicional Pullman Pacote 450g",
      "11.99",
      "Padaria",
      false
    ],
    [
      "Pão de Forma Semente de Abóbora Linhaça Dourada & Cenoura Nutrella Pacote 350g",
      "6.78",
      "Padaria",
      false
    ],
    ["Pão de Forma Seven Boys Pacote 450g", "5.09", "Padaria", false],
    ["Pão de Forma Tradicional Bauducco 400g", "5.39", "Padaria", false],
    ["Pão de Forma Tradicional Plusvita Pacote 500g", "6.39", "Padaria", false],
    ["Pão de Forma Tradicional Pullman Pacote 500g", "5.49", "Padaria", false],
    ["Pão de Forma Tradicional Wickbold Pacote 450g", "5.39", "Padaria", false],
    [
      "Pão de Forma Wickbold + Cálcio Pacote 400g",
      "Produto indisponível",
      "Padaria",
      false
    ],
    ["Pão de Fruta Member's Mark Aprox. 450g", "9.00", "Padaria", false],
    [
      "Pão de Hamburguer com Gergelim Member's Mark Aprox. 400g",
      "9.60",
      "Padaria",
      false
    ],
    [
      "Pão de Hambúrguer Member's Mark com 8 Unidades Aprox. 600g",
      "14.39",
      "Padaria",
      false
    ],
    [
      "Pão de Leite Seven Boys Pacote 450g",
      "Produto indisponível",
      "Padaria",
      false
    ],
    ["Pão de Mandioquinha Member's Mark Aprox. 450g", "8.09", "Padaria", false],
    [
      "Pão de Sanduíche Frutas e Castanhas sem Glutén Jasmine Pacote 350g",
      "16.99",
      "Padaria",
      false
    ],
    [
      "Pão de Sanduíche Multigrãos sem Glúten Jasmine Pacote 350g",
      "16.99",
      "Padaria",
      false
    ],
    [
      "Pão de Sanduíche Tradicional sem Glúten Jasmine Pacote 350g",
      "16.89",
      "Padaria",
      false
    ],
    [
      "Pão Doce com Recheio Sabor Doce de Leite Sobremesa no Espeto Santa Massa Bandeja Bandeja 300g",
      "Produto indisponível",
      "Padaria",
      false
    ],
    [
      "Pão Francês Integral Member's Mark Aprox. 250g",
      "3.75",
      "Padaria",
      false
    ],
    [
      "Pão Francês Member's Mark 1 Pacote Aprox. 300g com 4 Unidades",
      "4.20",
      "Padaria",
      false
    ],
    [
      "Pão Frutas. Grãos & Castanhas Nutrella Pacote 550g",
      "9.79",
      "Padaria",
      false
    ],
    [
      "Pão Hot Dog Member's Mark 6 Unidades Aprox. 500g",
      "12.00",
      "Padaria",
      false
    ],
    [
      "Pão Integral 12 Grãos Plusvita Vitagrão Pacote 450g",
      "6.79",
      "Padaria",
      false
    ],
    ["Pão Integral 14 Grãos Nutrella Pacote 450g", "9.99", "Padaria", false],
    ["Pão Integral 15 Grãos Panco Pacote 380g", "6.99", "Padaria", false],
    [
      "Pão Integral 7 Grãos Nutrella Pacote 450g",
      "Produto indisponível",
      "Padaria",
      false
    ],
    [
      "Pão Integral Castanha-do-Pará e Linhaça Panco Pacote 380g",
      "7.39",
      "Padaria",
      false
    ],
    [
      "Pão Integral Castanha-do-Pará e Quinoa Wickbold Grão Sabor Pacote 500g",
      "9.49",
      "Padaria",
      false
    ],
    [
      "Pão Integral Chia e Macadâmia Wickbold Pacote 400g",
      "8.99",
      "Padaria",
      false
    ],
    [
      "Pão Integral de Fermentação Natural e Zero Gordura Trans Limiar Pacote 500g",
      "6.45",
      "Padaria",
      false
    ],
    [
      "Pão Integral Girassol e Castanha Wickbold Pacote 400g",
      "8.99",
      "Padaria",
      false
    ],
    [
      "Pão Integral Grãos & Castanhas Nutrella Pacote 450g",
      "9.69",
      "Padaria",
      false
    ],
    [
      "Pão Integral Member's Mark Unidade Aprox. 450g",
      "7.20",
      "Padaria",
      false
    ],
    ["Pão Integral Nutrella Pacote 550g", "11.50", "Padaria", false],
    ["Pão Integral Ômega 3 Panco Pacote 380g", "7.19", "Padaria", false],
    ["Pão Integral Plusvita Pacote 500g", "6.99", "Padaria", false],
    ["Pão Integral Pullman Pacote 500g", "6.49", "Padaria", false],
    [
      "Pão Integral Teff e Avelã Wickbold Pacote 400g",
      "8.59",
      "Padaria",
      false
    ],
    ["Pão Integral Zero Açúcar Panco Pacote 380g", "7.39", "Padaria", false],
    [
      "Pão Italiano Calabresa Member's Mark Unidade Aprox. 550g",
      "12.64",
      "Padaria",
      false
    ],
    ["Pão Italiano Member's Mark Aprox. 450g", "9.86", "Padaria", false],
    [
      "Pão para Hambúrguer Australiano Wickbold Pacote 320g",
      "7.29",
      "Padaria",
      false
    ],
    [
      "Pão para Hambúrguer com Malte Wickbold Pacote 320g",
      "7.99",
      "Padaria",
      false
    ],
    ["Pão Sírio Grande Beiruthe 400g", "10.29", "Padaria", false],
    [
      "Pão Sírio Médio Tradicional Pita Bread Pacote 640g",
      "13.99",
      "Padaria",
      false
    ],
    ["Pão Sírio Mini Beiruthe 300g", "9.29", "Padaria", false],
    ["Pão Sovado Panco Pacote 500g", "9.09", "Padaria", false],
    [
      "Pão Sueco Integral Multigrãos Florio Pacote 200g",
      "13.99",
      "Padaria",
      false
    ],
    ["Pão Tortilha Fit Rap10 Pouch 330g", "6.99", "Padaria", false],
    [
      "Pão Tortilha Integral Chia e Quinoa Rap10 Pouch 198g",
      "7.49",
      "Padaria",
      false
    ],
    ["Pão Tortilha Integral Rap10 Pouch 330g", "7.28", "Padaria", false],
    [
      "Pão Tortilha Integral Wrap Wickbold Pouch 270g",
      "5.99",
      "Padaria",
      false
    ],
    [
      "Pão Tortilha Original Wickbold Tá Pronto! Pouch 270g",
      "6.99",
      "Padaria",
      false
    ],
    ["Pão Tortilha Tradicional Rap10 Pouch 330g", "6.99", "Padaria", false],
    ["Pão Tradicional Visconti Pacote 400g", "4.99", "Padaria", false],
    [
      "Pastel de Nata Member's Mark 4 Unidades Aprox. 200g",
      "10.40",
      "Padaria",
      false
    ],
    [
      "Rosca de Coco Padaria Nossa Member's Mark Bandeja 700g",
      "16.03",
      "Padaria",
      false
    ],
    [
      "Sanduíche de Frango com Bacon Sodebo Caixa 220g",
      "Produto indisponível",
      "Padaria",
      false
    ],
    [
      "Sanduíche Integral Frango e Azeitona Sodebo Caixa 150g",
      "9.90",
      "Padaria",
      false
    ],
    [
      "Sanduíche Integral Peito de Peru Sodebo Caixa 150g",
      "9.90",
      "Padaria",
      false
    ],
    ["Torta de Limão Member's Mark Aprox. 400g", "12.80", "Padaria", false],
    [
      "Torta de Maçã Americana Member's Mark Aprox. 800g",
      "17.59",
      "Padaria",
      false
    ],
    ["Ácido Limpa Pedras Reax Nobel Galão 5l", "54.98", "Limpeza", false],
    ["Água Perfumada Lavanda Mato Doce 500ml", "49.98", "Limpeza", false],
    ["Água Sanitária Brilux Galão 5l", "10.50", "Limpeza", false],
    ["Água Sanitária Cloro Ativo Ypê Galão 5l", "10.98", "Limpeza", false],
    [
      "Água Sanitária Dragão Galão 5l",
      "Produto indisponível",
      "Limpeza",
      false
    ],
    ["Água Sanitária Girando Sol Galão 5l", "9.99", "Limpeza", false],
    ["Água Sanitária Member´s Mark Galão 5l", "10.99", "Limpeza", false],
    ["Água Sanitária Qboa Galão 5l", "9.49", "Limpeza", false],
    ["Água Sanitária Super Candida Galão 5l", "9.69", "Limpeza", false],
    [
      "Álcool Desinfetante Multiuso Aerossol INM 70° Super Bom Domline 300ml",
      "14.98",
      "Limpeza",
      false
    ],
    [
      "Álcool em Gel Coperalcool Pack com 2 Unidades 500g Cada",
      "16.65",
      "Limpeza",
      false
    ],
    [
      "Álcool em Gel Neutro Limpeza Geral Member's Mark Frasco 500g",
      "16.98",
      "Limpeza",
      false
    ],
    ["Álcool Líquido 70° Bactericida Top Frasco 1l", "10.98", "Limpeza", false],
    ["Álcool Líquido Higienizador Cif 2l", "16.88", "Limpeza", false],
    [
      "Álcool Líquido Member's Mark Pack com 3 Unidades 1l Cada",
      "14.48",
      "Limpeza",
      false
    ],
    [
      "Álcool Multiuso Aerossol INPM 66.6 Super Bom DomLine 400ml",
      "14.98",
      "Limpeza",
      false
    ],
    [
      "Alcool Tradicional 46° INPM Coperalcool Pack com 3 Unidades 1l Cada",
      "21.99",
      "Limpeza",
      false
    ],
    [
      "Alvejante 3 em 1 Multi Brilux Galão Leve 5l Pague 4.5l",
      "15.99",
      "Limpeza",
      false
    ],
    [
      "Alvejante Sem Cloro Alvejante Member's Mark Galão 5l",
      "39.99",
      "Limpeza",
      false
    ],
    [
      "Amaciante Concentrado Baby Dreams Member's Mark Galão 3l",
      "23.99",
      "Limpeza",
      false
    ],
    [
      "Amaciante Concentrado Spring Flowers Member´s Mark Galão 5l",
      "49.99",
      "Limpeza",
      false
    ],
    [
      "Amaciante de Roupa Concentrado Adorável Downy Perfume Collection Frasco 1.35l",
      "25.99",
      "Limpeza",
      false
    ],
    [
      "Amaciante de Roupa Concentrado Água Fresca Downy Frasco 1.5l",
      "27.99",
      "Limpeza",
      false
    ],
    [
      "Amaciante de Roupa Concentrado Brisa de Verão Downy Frasco 1.5l",
      "24.99",
      "Limpeza",
      false
    ],
    [
      "Amaciante de Roupa Concentrado Coco e Menta Downy Naturals Frasco 1.35l",
      "27.90",
      "Limpeza",
      false
    ],
    [
      "Amaciante de Roupa Concentrado Lírios do Campo Downy Frasco 3l",
      "29.98",
      "Limpeza",
      false
    ],
    [
      "Amaciante de Roupa Concentrado Místico Downy Perfume Collection Frasco 1.35l",
      "27.99",
      "Limpeza",
      false
    ],
    [
      "Amaciante de Roupa Concentrado Pro Comfort 5l",
      "58.90",
      "Limpeza",
      false
    ],
    [
      "Amaciante de Roupa Concentrado Puro Cuidado Intense Hipoalergênico Comfort Leve 1.5l Pague 1.25l",
      "Produto indisponível",
      "Limpeza",
      false
    ],
    [
      "Amaciante de Roupa Concentrado Puro Cuidado Intense Intensivo Comfort Leve 1.5l Pague 1.25l",
      "Produto indisponível",
      "Limpeza",
      false
    ],
    [
      "Amaciante de Roupa Diluído Aconchego Ypê Galão 5l",
      "15.50",
      "Limpeza",
      false
    ],
    [
      "Amaciante de Roupa Diluído Carinho Qboa Galão 5l",
      "14.99",
      "Limpeza",
      false
    ],
    [
      "Amaciante de Roupa Diluído Floral Paris Girando Sol Galão 5l",
      "12.99",
      "Limpeza",
      false
    ],
    [
      "Amaciante de Roupa Diluído Magia Mon Bijou Galão 5l",
      "14.99",
      "Limpeza",
      false
    ],
    [
      "Amaciante de Roupa Diluído Magic Sonho Galão 5l",
      "16.50",
      "Limpeza",
      false
    ],
    [
      "Amaciante de Roupa Pureza Mon Bijou Garrafa 5L",
      "15.50",
      "Limpeza",
      false
    ],
    [
      "Amaciante de Roupas Concentrado Blue Ypê Frasco 1.5l",
      "18.99",
      "Limpeza",
      false
    ],
    ["Amaciante Diluído Super Candida Galão 5l", "14.99", "Limpeza", false],
    [
      "Aparelho e Odorizador de Ambiente Lavanda & Vanilla Glade Automatic 269ml + Refil",
      "54.98",
      "Limpeza",
      false
    ],
    [
      "Bloco Sanitário para Caixa Acoplada Mr Músculo Professional 40g com 6 unidades",
      "38.99",
      "Limpeza",
      false
    ],
    [
      "Cloro Gel Mr.Músculo Pack com 2 Unidades 750ml Cada",
      "17.99",
      "Limpeza",
      false
    ],
    [
      "Colher de Sobremesa Descartável Member's Mark com 60 Unidades",
      "9.98",
      "Limpeza",
      false
    ],
    [
      "Colher Reforçada Descartável Member's Mark com 60 Unidades",
      "12.98",
      "Limpeza",
      false
    ],
    [
      "Conjunto de Escovas Limpeza Taças Member's Mark Caixa 3 Unidades",
      "29.98",
      "Limpeza",
      false
    ],
    [
      "Conjunto de Talheres Descartáveis Member's Mark Premium Caixa 72 Unidades",
      "34.98",
      "Limpeza",
      false
    ],
    [
      "Copo Descartável 50ml Member's Mark com 200 Unidades",
      "2.41",
      "Limpeza",
      false
    ],
    [
      "Copo Descartável Azul Member's Mark com 20 Unidades 473ml cada",
      "12.99",
      "Limpeza",
      false
    ],
    [
      "Copo Descartável Branco Minaplast Pacote 100 Unidades 300ml Cada",
      "9.98",
      "Limpeza",
      false
    ],
    [
      "Copo Descartável Member's Mark com 20 Unidades 300ml cada",
      "14.98",
      "Limpeza",
      false
    ],
    [
      "Copo Descartável Minaplast com 100 Unidades 180ml cada",
      "5.48",
      "Limpeza",
      false
    ],
    [
      "Copo Descartável Minaplast com 100 Unidades 50ml cada",
      "2.98",
      "Limpeza",
      false
    ],
    [
      "Copo Descartável Vermelho Member´s Mark 20 Unidades 473ml cada",
      "12.98",
      "Limpeza",
      false
    ],
    [
      "Desengordurante Ultimate Multiuso Members Mark Frasco 1.1l",
      "9.98",
      "Limpeza",
      false
    ],
    ["Desinfetante de Eucalipto Kalipto Galão 5l", "13.99", "Limpeza", false],
    [
      "Desinfetante Higienizador para Uso Geral Casa Downy Frasco 500ml",
      "14.98",
      "Limpeza",
      false
    ],
    ["Desinfetante Lavanda Bak Ypê Galão 5l", "14.99", "Limpeza", false],
    [
      "Desinfetante Lavanda Dragão Galão 5l",
      "Produto indisponível",
      "Limpeza",
      false
    ],
    [
      "Desinfetante Original Lysoform Pack com 4 Unidades 1l Cada",
      "34.98",
      "Limpeza",
      false
    ],
    [
      "Desinfetante para Uso Geral Lavanda Pinho Sol Galão 3.8L Tamanho Econômico",
      "19.98",
      "Limpeza",
      false
    ],
    [
      "Desinfetante para Uso Geral Pinho Member's Mark Garrafa 2l",
      "7.99",
      "Limpeza",
      false
    ],
    [
      "Desinfetante Pato Germinex Marine Pack com 3 unidades 500ml Cada",
      "26.99",
      "Limpeza",
      false
    ],
    ["Desinfetante Pinho Bril Plus Galão 5l", "25.99", "Limpeza", false],
    [
      "Desinfetante Spray Mata 99.9% dos Vírus e Bactérias Brisa da Manhã Lysol Frasco 360ml",
      "19.99",
      "Limpeza",
      false
    ],
    [
      "Desinfetante Spray Mata 99.9% dos Vírus e Bactérias Pureza do Algodão Lysol Frasco 360ml",
      "19.99",
      "Limpeza",
      false
    ],
    [
      "Desinfetante Superfícies Spray Original Lysoform 360ml",
      "22.99",
      "Limpeza",
      false
    ],
    [
      "Desinfetante Tira-Limo X-14 Veja Pack com 2 Unidades 500ml Cada",
      "21.99",
      "Limpeza",
      false
    ],
    [
      "Desinfetante Tira-Limo X-14 Veja Pack com 3 Unidades 500ml Cada",
      "38.99",
      "Limpeza",
      false
    ],
    ["Desinfetante Uso Geral Girando Sol Galão 5l", "12.99", "Limpeza", false],
    [
      "Desinfetante Uso Geral Original Lysoform 500ml Borrifador",
      "10.98",
      "Limpeza",
      false
    ],
    [
      "Desinfetante Uso Geral Original Lysoform Galão 5l",
      "28.99",
      "Limpeza",
      false
    ],
    [
      "Desinfetante Uso Geral Pato Power Pack com 3 Unidades 500ml Cada",
      "26.99",
      "Limpeza",
      false
    ],
    [
      "Desumidificador Closet Secar Pack com 2 Unidades 250g Cada",
      "27.99",
      "Limpeza",
      false
    ],
    [
      "Desumidificador Neutro Member's Mark Pack 8 Unidades 230g Cada",
      "49.98",
      "Limpeza",
      false
    ],
    [
      "Detergente em Pó para Lava-Louças Finish Power Frasco 1kg",
      "44.99",
      "Limpeza",
      false
    ],
    [
      "Detergente Gel Concentrado Limpol Aloe Vera Pack 3 Unidades 511g Cada",
      "16.99",
      "Limpeza",
      false
    ],
    [
      "Detergente Gel Concentrado Limpol Cristal Pack 3 Unidades 511g Cada",
      "16.99",
      "Limpeza",
      false
    ],
    [
      "Detergente Limpa-Pisos Laminados Original Bravo Pack com 3 Unidades 750ml Cada",
      "32.99",
      "Limpeza",
      false
    ],
    [
      "Detergente Líquido Clear Ype Pack 6 Unidades 500Ml cada",
      "9.69",
      "Limpeza",
      false
    ],
    [
      "Detergente para Lava-Louça Dish Washer Member's Mark Pacote com 48 Unidades",
      "29.99",
      "Limpeza",
      false
    ],
    [
      "Detergente para Louças Limpol Coco Pack 6 Unidades 500ml Cada",
      "10.68",
      "Limpeza",
      false
    ],
    [
      "Detergente para Louças Limpol Cristal Pack 6 Unidades 500ml Cada",
      "10.68",
      "Limpeza",
      false
    ],
    [
      "Detergente para Louças Limpol Neutro Galão 5l",
      "14.99",
      "Limpeza",
      false
    ],
    [
      "Detergente para Louças Ypê Clear Galão Leve 5l Pague 4.5l",
      "Produto indisponível",
      "Limpeza",
      false
    ],
    [
      "Detergente para Louças Ypê Neutro Pack 6 Unidades 500ml Cada",
      "10.50",
      "Limpeza",
      false
    ],
    [
      "Difusor Black&White Secar Pack 2 Unidades 100ml Cada",
      "54.99",
      "Limpeza",
      false
    ],
    [
      "Esponja de Aço Bombril Pack 7 Pacotes com 8 Unidades",
      "Produto indisponível",
      "Limpeza",
      false
    ],
    [
      "Esponja Limpeza Extrema Scotch-Brite Pack com 10 Unidades",
      "20.89",
      "Limpeza",
      false
    ],
    [
      "Esponja Multiuso Scotch-Brite com 10 Unidades",
      "20.98",
      "Limpeza",
      false
    ],
    [
      "Esponja Não Risca Scotch-Brite com 10 Unidades",
      "21.98",
      "Limpeza",
      false
    ],
    [
      "Evita Mofo Baby Member's Mark Pack 2 Unidades 180g Cada",
      "13.99",
      "Limpeza",
      false
    ],
    [
      "Evita Mofo Neutro Member's Mark Pack 2 Unidades 180g Cada",
      "13.99",
      "Limpeza",
      false
    ],
    [
      "Faca Reforçada Descartável Member's Mark com 60 Unidades",
      "12.98",
      "Limpeza",
      false
    ],
    [
      "Facilitador para Roupa Member's Mark Pack 3 Unidades 500ml Cada",
      "21.98",
      "Limpeza",
      false
    ],
    [
      "Facilitador para Roupa Passe Bem Pack 3 Unidades 500ml Cada",
      "30.99",
      "Limpeza",
      false
    ],
    [
      "Filtro de Papel 102 Member's Mark Caixa com 120 Unidades",
      "15.99",
      "Limpeza",
      false
    ],
    [
      "Filtro de Papel 103 Member's Mark Caixa com 120 Unidades",
      "15.99",
      "Limpeza",
      false
    ],
    [
      "Garfo Descartável Member's Mark com 60 Unidades",
      "9.98",
      "Limpeza",
      false
    ],
    [
      "Garfo Reforçado Descartável Member's Mark com 60 Unidades",
      "15.98",
      "Limpeza",
      false
    ],
    [
      "Gel Sanitário com Aplicador Pato Purific Marine 38g com 3 Unidades",
      "54.98",
      "Limpeza",
      false
    ],
    [
      "Guardanapo de Papel Coquetel  Folha Dupla Scott Grand Hotel 23.8cm x 21.8cm Pack com 9  Unidades 50 Folhas Cada",
      "29.98",
      "Limpeza",
      false
    ],
    [
      "Guardanapo de Papel Folha Dupla Extra Macio Mascot Excelence 23.5cm x 24cm 200 Unidades",
      "12.99",
      "Limpeza",
      false
    ],
    [
      "Guardanapo de Papel Santepel Pack com 12 Unidades 50 Folhas Cada",
      "Produto indisponível",
      "Limpeza",
      false
    ],
    [
      "Guardanapo Folha Tripla Member's Mark Pacote com 40 Unidades",
      "29.98",
      "Limpeza",
      false
    ],
    [
      "Guardanapo Interfolhado Folha Dupla 300 Folhas Excellence Elite Professional Pacote 16cmx21cm",
      "Produto indisponível",
      "Limpeza",
      false
    ],
    [
      "Guardanapo Interfolhado Folha Simples Elite Pacote 300 Unidades",
      "8.59",
      "Limpeza",
      false
    ],
    [
      "Guardanapo Santepel 24cm x 22cm Pack com 16 Unidades 50 Folhas Cada",
      "22.98",
      "Limpeza",
      false
    ],
    [
      "Guardanapo Sofisticado de Papel Folha Dupla Grand Hotel 31.8cm x 32.8cm Pack com  9 Unidades 50 Folhas Cada",
      "65.99",
      "Limpeza",
      false
    ],
    [
      "Guardanapos de Papel Tamanho P Folha Simples Dia a Dia Scott 24cm x 21.8cm Pacote 50 Unidades",
      "25.99",
      "Limpeza",
      false
    ],
    [
      "Inseticida Aerossol Baygon Pack com 2 Unidades 360ml Cada",
      "18.99",
      "Limpeza",
      false
    ],
    [
      "Inseticida Isca Mata Baratas Raid Caixa 6 Unidades 2.6g Cada",
      "21.98",
      "Limpeza",
      false
    ],
    [
      "Inseticida Líquido Elétrico Raid Pack 4 Unidades 2.9ml Cada",
      "35.99",
      "Limpeza",
      false
    ],
    [
      "Inseticida Raid Multi-Insetos Pack 2 Unidades 420ml Cada",
      "18.99",
      "Limpeza",
      false
    ],
    [
      "Inseticida SBP Multi-Inseticida Pack 2 Unidades 450ml Cada",
      "19.18",
      "Limpeza",
      false
    ],
    [
      "Kit 2 Detergentes Tablete All In 1 Max 235.3g Cada + Secante brilhoso Lava Louça 250ml Finish Powerball",
      "42.99",
      "Limpeza",
      false
    ],
    [
      "Kit Esponja Cozinha + Banheiro Scotch-Brite 10 Unidades",
      "21.99",
      "Limpeza",
      false
    ],
    [
      "Kit Perfumado para Casa Odorizador 360ml + Spray 240ml + Difusor 100ml Secar",
      "40.98",
      "Limpeza",
      false
    ],
    [
      "Kit Tira-Manchas Gel Multiuso + Crystal White Vanish 1.5l Cada",
      "30.98",
      "Limpeza",
      false
    ],
    [
      "Lava Roupa Concentrado Baby Dreams Member's Mark Galão 3l",
      "30.98",
      "Limpeza",
      false
    ],
    [
      "Lava Roupas + Amaciante Vida Macia Pack 2 Unidades 1l Cada",
      "22.99",
      "Limpeza",
      false
    ],
    [
      "Lava Roupas Woolite Pack 3 Unidades 450ml Cada",
      "44.99",
      "Limpeza",
      false
    ],
    [
      "Lava-Roupa Líquido 75 Lavagens Ariel Galão 3l",
      "29.98",
      "Limpeza",
      false
    ],
    [
      "Lava-Roupas Concentrado Suave e Gentil Ariel Frasco 2l",
      "32.90",
      "Limpeza",
      false
    ],
    [
      "Lava-Roupas em Pó Floral Paris Girando Sol Pacote 5kg",
      "23.50",
      "Limpeza",
      false
    ],
    [
      "Lava-Roupas em Pó Maciez Tixan Ypê Pacote 5kg",
      "34.98",
      "Limpeza",
      false
    ],
    [
      "Lava-Roupas em Pó Omo Lavagem Perfeita Pacote 4kg Tamanho Família",
      "Produto indisponível",
      "Limpeza",
      false
    ],
    [
      "Lava-Roupas em Pó Omo Lavagem Perfeita Pro Pacote 5.6kg",
      "39.98",
      "Limpeza",
      false
    ],
    [
      "Lava-Roupas em Pó Roupas Brancas e Coloridas Limpeza Total Brilhante Pacote 4kg",
      "31.99",
      "Limpeza",
      false
    ],
    [
      "Lava-Roupas em Pó Tixan Ypê Pacote 5kg",
      "Produto indisponível",
      "Limpeza",
      false
    ],
    [
      "Lava-Roupas Líquido Omo Lavagem Perfeita Galão 5l",
      "42.99",
      "Limpeza",
      false
    ],
    [
      "Lava-Roupas Líquido Primavera Tixan Ypê Galão 5l",
      "29.99",
      "Limpeza",
      false
    ],
    ["Lava-Roupas Líquido Roma Coco Frasco 2l", "34.98", "Limpeza", false],
    [
      "Lava-Roupas Líquido Roupas Brancas e Coloridas Brilhante Galão 5l",
      "35.99",
      "Limpeza",
      false
    ],
    ["Lava-Roupas Líquido Ultimate Clean Galão 5l", "27.99", "Limpeza", false],
    [
      "Lenço Desengordurante Member's Mark Pote 75 Unidades",
      "25.98",
      "Limpeza",
      false
    ],
    [
      "Lenços Umedecidos Desifentantes Poder Cítrico Lysol Pacote 72 Unidades",
      "22.99",
      "Limpeza",
      false
    ],
    [
      "Limpa Inox Cremoso Reax Loção Pack 2 Unidades 400g Cada",
      "22.98",
      "Limpeza",
      false
    ],
    [
      "Limpador Concentrado de Pisos Cerâmica Noviça 1l",
      "18.98",
      "Limpeza",
      false
    ],
    [
      "Limpador Desengordurante Cozinha Laranja Mr Músculo Frasco Pack 2 Unidades 500ml Cada Refil",
      "17.98",
      "Limpeza",
      false
    ],
    [
      "Limpador Desengordurante Cozinha Limão Veja Pack com 3 Unidades 500ml Cada",
      "19.98",
      "Limpeza",
      false
    ],
    [
      "Limpador Desengordurante Poderoso Brilha Inox Kelldrin Pack com 2 Unidades 300ml Cada",
      "29.98",
      "Limpeza",
      false
    ],
    ["Limpador Desengordurante Pro Cif 2l", "19.99", "Limpeza", false],
    [
      "Limpador Limpeza Pesada Veja Pack com 2 Unidades 1l Cada",
      "16.99",
      "Limpeza",
      false
    ],
    [
      "Limpador Multiuso +Antibac Cif Pack com 6 Unidades 500ml Cada Oferta Leve 6 Pague 4",
      "14.87",
      "Limpeza",
      false
    ],
    ["Limpador Multiuso Gel Cif 475g", "9.98", "Limpeza", false],
    [
      "Limpador Multiuso Original 2x Mais Poder Veja Pack com 3 Unidades 500ml Cada Grátis 50% Desconto na 3ª Unidade",
      "8.99",
      "Limpeza",
      false
    ],
    [
      "Limpador Multiuso Original Mr Músculo Professional 750ml Borrifador",
      "12.99",
      "Limpeza",
      false
    ],
    ["Limpador Multiuso Pro Cif 2l", "19.99", "Limpeza", false],
    [
      "Limpador para Pisos Laminados Flores do Campo & Lavanda Destac Pack com 3 Unidades 750ml Cada",
      "23.99",
      "Limpeza",
      false
    ],
    [
      "Limpador Perfumado Glade Lavanda Mr Músculo Galão 5l",
      "32.99",
      "Limpeza",
      false
    ],
    [
      "Limpador Perfumado Lavanda e Bem Estar Veja Galão 4l",
      "32.99",
      "Limpeza",
      false
    ],
    [
      "Limpador Perfumado Mistero di Amore Casa & Perfume 5l",
      "32.99",
      "Limpeza",
      false
    ],
    [
      "Limpador Perfumado Romance Aroma Sense Veja Galão 4l Embalagem Econômica",
      "34.98",
      "Limpeza",
      false
    ],
    [
      "Limpador Perfumado Sensualidad Casa & Perfume 5l",
      "31.50",
      "Limpeza",
      false
    ],
    ["Limpa-Vidro Líquido Pro Cif 2l", "16.98", "Limpeza", false],
    [
      "Limpa-Vidros Ultimate Member´s Mark Pack 3 Unidades 500ml Cada",
      "22.98",
      "Limpeza",
      false
    ],
    [
      "Limpa-Vidros Vidrex Cristal Veja Pack com 3 Unidades 500ml Cada",
      "25.98",
      "Limpeza",
      false
    ],
    [
      "Lustra Móveis Lavanda Poliflor Pack 3 Unidades 500ml Cada",
      "25.98",
      "Limpeza",
      false
    ],
    [
      "Lustra-Móveis Lavanda Embeleza Bravo Pack com 3 Unidades 500ml Cada",
      "28.99",
      "Limpeza",
      false
    ],
    ["Luva Multiuso Amarela Scotch-Brite M", "7.48", "Limpeza", false],
    ["Luva Multiuso Limão Amarela Scotch-Brite G", "7.48", "Limpeza", false],
    [
      "Luvas para Limpeza Member's Mark Tamanho Único",
      "Produto indisponível",
      "Limpeza",
      false
    ],
    [
      "Mega Pano Microfibra Multiuso Member's Mark  Pack 4 Unidades  90x60cm Cada",
      "44.99",
      "Limpeza",
      false
    ],
    [
      "Mini Colher de Café Descartável Member's Mark com 300 Unidades",
      "9.48",
      "Limpeza",
      false
    ],
    ["Mop Noviça Spray Bettanin Refil", "38.99", "Limpeza", false],
    ["Mop Sekito Noviça Zig Zag", "51.99", "Limpeza", false],
    ["Mop Spray Noviça", "135.00", "Limpeza", false],
    ["Mop Twister Noviça", "185.00", "Limpeza", false],
    ["Mop Twister Noviça Refil 1 Unidade", "29.99", "Limpeza", false],
    ["Multi-Inseticida Automático SBP Caixa 250ml", "32.99", "Limpeza", false],
    [
      "Multi-Inseticida Automático SBP Frasco 250ml Refil",
      "28.99",
      "Limpeza",
      false
    ],
    [
      "Odorizador de Ambiente Brinde de Alegria Glade Frasco 360ml",
      "14.38",
      "Limpeza",
      false
    ],
    [
      "Odorizador de Ambiente em Gel Brinde de Alegria Glade Pote 70g",
      "21.99",
      "Limpeza",
      false
    ],
    [
      "Odorizador de Ambiente em Gel Citrus Pequenos Ambientes Glade Pack com 6 Unidades 70g Cada",
      "30.99",
      "Limpeza",
      false
    ],
    [
      "Odorizador de Ambiente em Gel Lavanda Glade Pote 70g",
      "30.99",
      "Limpeza",
      false
    ],
    [
      "Odorizador de Ambiente Lavanda & Vanilla Glade Automatic Pack 2 Unidades 269ml Cada",
      "44.99",
      "Limpeza",
      false
    ],
    [
      "Odorizador de Ambiente Lavanda Glade Professional Lata 432ml",
      "9.55",
      "Limpeza",
      false
    ],
    [
      "Odorizador de Ambiente Neutrafresh Glade Professional Lata 432ml",
      "10.98",
      "Limpeza",
      false
    ],
    [
      "Odorizador Glade Lavanda Toque de Frescor Refil com 4 Unidades 12ml Cada",
      "36.99",
      "Limpeza",
      false
    ],
    [
      "OFF Aerossol Repelente de Insetos Pack com 2 Unidades 165ml Cada",
      "42.98",
      "Limpeza",
      false
    ],
    ["Pá com Cabo Concept Noviça Bettanin Verde", "28.99", "Limpeza", false],
    [
      "Palito de Madeira Gina com 100 Pack 8 Unidades cada",
      "6.98",
      "Limpeza",
      false
    ],
    [
      "Pano Reutilizável Duramax Pack 3 Unidades com 58 Panos cada",
      "27.99",
      "Limpeza",
      false
    ],
    [
      "Pano Wiper Wypall X70 Plus Kimberly Clark Pacote com 88 Unidades",
      "44.98",
      "Limpeza",
      false
    ],
    [
      "Panos de Microfibra Azul Member's Mark 3 Unidades",
      "27.99",
      "Limpeza",
      false
    ],
    [
      "Panos de Microfibra Verde Member's Mark 3 Unidades",
      "27.99",
      "Limpeza",
      false
    ],
    ["Papel Alumínio Member's Mark 30cm X 100m", "54.98", "Limpeza", false],
    [
      "Papel Alumínio Member's Mark 30cm X 30m Metros",
      "24.98",
      "Limpeza",
      false
    ],
    [
      "Papel Antiaderente para Cozinhar Assa + Leve Dover Pack com 3 Unidades 30cm x 3m Cada",
      "19.99",
      "Limpeza",
      false
    ],
    [
      "Papel Filme Transparente Member's Mark com 1 Unidade 27.5cm X 120m",
      "28.99",
      "Limpeza",
      false
    ],
    [
      "Papel Manteiga Member's Mark 30cm X 15m 1 Unidade",
      "15.99",
      "Limpeza",
      false
    ],
    [
      "Papel Toalha Kitchen Jumbo Folha Dupla Pack com 3 rolos de 110 unidades de 19cm X 22cm cada",
      "12.98",
      "Limpeza",
      false
    ],
    [
      "Pastilha Adesiva Sanitária Lavanda Pato Caixa 10 Unidades",
      "14.99",
      "Limpeza",
      false
    ],
    [
      "Prato Plástico Descartável Raso Branco Minaplast 21cm com 10 unidades cada",
      "3.98",
      "Limpeza",
      false
    ],
    [
      "Prato Plástico Raso Minaplast 15cm com 10 unidades cada",
      "1.98",
      "Limpeza",
      false
    ],
    [
      "Removedor Perfumado Zulu Pack com 2 Unidades 900ml Cada",
      "34.99",
      "Limpeza",
      false
    ],
    [
      "Repelente de Poeira Pisos Porcelanato Noviça Bettanin Frasco 1l",
      "18.98",
      "Limpeza",
      false
    ],
    [
      "Repelente Elétrico SBP 45N Refil Pack com 4 Unidades 35ml Cada",
      "29.98",
      "Limpeza",
      false
    ],
    [
      "Revitalizador Instantâneo para Roupa Refresh Comfort 320ml",
      "14.98",
      "Limpeza",
      false
    ],
    ["Rodo Mágico Member's Mark", "47.99", "Limpeza", false],
    [
      "Rodo Máxi Aderência Noviça Turquesa 1 Unidade",
      "38.99",
      "Limpeza",
      false
    ],
    [
      "Sabão de Coco Tipo Artesanal em Barra Ufe Pack com 5 Unidades 200g Cada",
      "12.99",
      "Limpeza",
      false
    ],
    [
      "Sabão em Barra Glicerinado Neutro Ypê Pacote 1kg 5 Unidades",
      "7.99",
      "Limpeza",
      false
    ],
    [
      "Sabão em Barra Perfumado Ypê Multiativo Pack com 5 Unidades 200g Cada",
      "7.98",
      "Limpeza",
      false
    ],
    [
      "Saco Alvejado Básico Multiclean com 6 Unidades",
      "26.98",
      "Limpeza",
      false
    ],
    [
      "Saco Para Banheiro & Pia Dover Roll Perfumado Pack 2 Unidades 50 Sacos Cada",
      "28.99",
      "Limpeza",
      false
    ],
    [
      "Saco para Conservar Alimentos Freezer-Roll Pack 2 litros com 3 Rolos com 100 Unidades cada",
      "25.99",
      "Limpeza",
      false
    ],
    [
      "Saco para Conservar Alimentos Freezer-Roll Pack 3 litros com 3 Rolos com 100 Unidades cada",
      "32.98",
      "Limpeza",
      false
    ],
    [
      "Saco para Conservar Alimentos Freezer-Roll Pack 5 litros com 2 Rolos com 100 Unidades cada",
      "29.98",
      "Limpeza",
      false
    ],
    [
      "Saco para Freezer Bags Member's Mark com 50 Unidades 17.7cm  X 19.5cm",
      "26.98",
      "Limpeza",
      false
    ],
    [
      "Saco para Freezer Bags Member's Mark com 50 Unidades 26.8cm X 27.9cm",
      "32.99",
      "Limpeza",
      false
    ],
    [
      "Saco para Lixo 50 Litros Member's Mark com 100 Unidades",
      "69.99",
      "Limpeza",
      false
    ],
    [
      "Saco para Lixo Dover Roll 15l Pack 2 Unidades com 60 Sacos Cada",
      "55.99",
      "Limpeza",
      false
    ],
    [
      "Saco para Lixo Dover Roll Reciclado 100l Pack 2 Unidades 15 Sacos Cada",
      "75.99",
      "Limpeza",
      false
    ],
    [
      "Saco para Lixo Dover Roll Reciclado 30l Pack 2 Unidades 30 Sacos Cada",
      "55.99",
      "Limpeza",
      false
    ],
    [
      "Saco para Lixo Dover Roll Reciclado 50l Pack 2 Unidades 30 Sacos Cada",
      "75.99",
      "Limpeza",
      false
    ],
    [
      "Saco para Lixo Dover Roll Reforçado 100l com 25 Unidades",
      "55.99",
      "Limpeza",
      false
    ],
    [
      "Saco para Lixo Pia e Banheiro 34 x 40cm Member's Mark com 200 Unidades",
      "39.99",
      "Limpeza",
      false
    ],
    ["Sacola Térmica para 12kg Metrapack", "9.99", "Limpeza", false],
    [
      "Sacos para Lixo 6kg 30 Litros com 100 Unidades",
      "54.99",
      "Limpeza",
      false
    ],
    ["Saponáceo Cremoso Multiuso Pro Cif 2l", "25.98", "Limpeza", false],
    ["Saponáceo Cremoso Pinho Members Mark Pote 1l", "13.98", "Limpeza", false],
    [
      "Saponáceo Sapólio Radium Pack 2 Unidades 450ml Cada",
      "18.99",
      "Limpeza",
      false
    ],
    [
      "Secante Abrilhantador para Máquina de Lavar Louças Finish Frasco 250ml",
      "26.99",
      "Limpeza",
      false
    ],
    ["Spray Brilha Inox Scotch-Brite 3M 400 ml", "47.68", "Limpeza", false],
    ["Spray Mop Member's Mark com 2 Refis", "84.98", "Limpeza", false],
    [
      "Tira Manchas Colors Members Mark Frasco 2.5kg",
      "44.98",
      "Limpeza",
      false
    ],
    [
      "Tira Manchas em Pó Oxi Action Vanish Pacote 2.5kg",
      "89.99",
      "Limpeza",
      false
    ],
    [
      "Tira Manchas Gel Multiuso Crystal White Vanish Frasco 3l",
      "33.99",
      "Limpeza",
      false
    ],
    ["Tira Manchas Gel Multiuso Vanish Frasco 3l", "33.99", "Limpeza", false],
    [
      "Tira Manchas Resolv Vanish Pack com 3 Unidades 450ml Cada",
      "36.99",
      "Limpeza",
      false
    ],
    [
      "Tira Manchas Vanish White Clear Pack com 2 Unidades 900g Cada",
      "79.99",
      "Limpeza",
      false
    ],
    [
      "Tira Manchas White Members Mark White Frasco 2.5kg",
      "42.98",
      "Limpeza",
      false
    ],
    [
      "Toalha de Mãos Descartáveis Folha Dupla Neve 22.1 Com X 21.3 Com 100 Unidades",
      "16.99",
      "Limpeza",
      false
    ],
    [
      "Toalha de Papel Folha Dupla Snob Hiper 19cm X 22cm com 3 unidades cada",
      "16.50",
      "Limpeza",
      false
    ],
    [
      "Toalha Umedecida Bactericida para Superfícies Supply Wipes Pote com 150 Unidades",
      "29.98",
      "Limpeza",
      false
    ],
    [
      "Toalha Umedecida Desengordurante Supply Wipes Pote 150 Unidades",
      "39.99",
      "Limpeza",
      false
    ],
    [
      "Toalhas de Papel Interfolhado Member's Mark com 3 Maços 1500 folhas cada",
      "36.99",
      "Limpeza",
      false
    ],
    [
      "Toalhas Umedecidas Álcool Uso Geral Supply Wipes Pote 150 Unidades",
      "39.98",
      "Limpeza",
      false
    ],
    [
      "Vassoura Multiuso Concep Original Noviça 1 Unidade",
      "18.99",
      "Limpeza",
      false
    ],
    ["Vassoura Varry 1000 Concept Noviça 1 Unidade", "18.99", "Limpeza", false],
    [
      "Absorvente com Abas Antibacteriano Ultrafino Intimus Pacote 28 Unidades Leve Mais Pague Menos",
      "9.87",
      "Higiene",
      false
    ],
    [
      "Absorvente com Abas Extra Suave Dia & Noite Ultrafino Intimus Pacote 28 Unidades Leve Mais Pague Menos",
      "19.50",
      "Higiene",
      false
    ],
    [
      "Absorvente com Abas Extra Suave Intimus Tripla Proteção Pacote 32 Unidades",
      "11.99",
      "Higiene",
      false
    ],
    [
      "Absorvente com Abas Noturno Cobertura Seca Intimus Pacote 40 Unidades Leve Mais Por Menos",
      "16.97",
      "Higiene",
      false
    ],
    [
      "Absorvente com Abas Noturno Cobertura Suave Intimus Pacote 40 Unidades Leve Mais Por Menos",
      "16.97",
      "Higiene",
      false
    ],
    [
      "Absorvente com Abas Seca Always Noites Tranquilas Pacote 32 Unidades Leve Mais Pague Menos",
      "18.97",
      "Higiene",
      false
    ],
    [
      "Absorvente com Abas Seca Intimus Tripla Proteção Pacote 32 Unidades Leve Mais Pague Menos",
      "11.99",
      "Higiene",
      false
    ],
    [
      "Absorvente com Abas Seca Maxi Proteção Always Pacote 32 Unidades Leve Mais Pague Menos",
      "11.97",
      "Higiene",
      false
    ],
    [
      "Absorvente com Abas Seca Super Proteção Always Pacote 32 Unidades Leve Mais Pague Menos",
      "9.87",
      "Higiene",
      false
    ],
    [
      "Absorvente com Abas Suave Always Noites Tranquilas Pacote 32 Unidades Leve Mais Pague Menos",
      "18.97",
      "Higiene",
      false
    ],
    [
      "Absorvente com Abas Suave Maxi Proteção Always Pacote 32 Unidades Leve Mais Pague Menos",
      "11.97",
      "Higiene",
      false
    ],
    [
      "Absorvente com Abas Suave Noite e Dia Sempre Livre Adapt Plus Pacote 32 Unidades Leve Mais Pague Menos",
      "17.27",
      "Higiene",
      false
    ],
    [
      "Absorvente com Abas Suave Sempre Livre Adapt Plus Pacote 32 Unidades Leve Mais Pague Menos",
      "11.50",
      "Higiene",
      false
    ],
    [
      "Absorvente com Abas Suave Super Proteção Always Pacote 32 Unidades Leve Mais Pague Menos",
      "9.87",
      "Higiene",
      false
    ],
    [
      "Absorvente Interno Intimus Médio Caixa Leve 24 Pague 22 Unidades",
      "18.99",
      "Higiene",
      false
    ],
    [
      "Absorvente Interno ProComfort O.B. Médio Caixa 16 Unidades",
      "14.99",
      "Higiene",
      false
    ],
    [
      "Absorvente Interno ProComfort O.B. Super Caixa 16 Unidades",
      "14.99",
      "Higiene",
      false
    ],
    [
      "Absorvente Interno Super Intimus Caixa Leve 16 Pague 15 Unidades",
      "12.50",
      "Higiene",
      false
    ],
    [
      "Algodão Disco Member's Mark Pacote com 100 Unidades",
      "15.99",
      "Higiene",
      false
    ],
    ["Algodão Zig Zag Cremer 50g", "15.99", "Higiene", false],
    [
      "Ampolas Alta Moda Restauração Alfaparf Pack com 6 Unidades 15ml Cada",
      "43.99",
      "Higiene",
      false
    ],
    [
      "Ampolas Pantene Restauração Pro-V Pack 3 Unidades 15ml Cada",
      "18.99",
      "Higiene",
      false
    ],
    [
      "Aparelho Descartável para Barbear Gillette Prestobarba3 16 Unidades Grátis 4 Aparelhos",
      "64.87",
      "Higiene",
      false
    ],
    [
      "Bálsamo 7 Ervas Detox Alta Moda Alfaparf Frasco 1l",
      "28.87",
      "Higiene",
      false
    ],
    [
      "Carga de Aparelho para Barbear Gillette Mach3 Leve 8 Pague 6 Unidades",
      "39.97",
      "Higiene",
      false
    ],
    [
      "Carga de Aparelho para Barbear Gillette Mach3 Sensitive Leve 8 Pague 6 Unidades",
      "39.97",
      "Higiene",
      false
    ],
    [
      "Condicionador Alta Moda BB Cream Capilar Alfaparf Frasco 1l",
      "28.87",
      "Higiene",
      false
    ],
    ["Condicionador Aussie Mega Moist Frasco 778ml", "99.99", "Higiene", false],
    ["Condicionador Baby Johnson's Frasco 400ml", "22.99", "Higiene", false],
    ["Condicionador Balai Europa Oliva Frasco 1l", "49.99", "Higiene", false],
    ["Condicionador Balai Oriente Dead Frasco 1l", "49.99", "Higiene", false],
    [
      "Condicionador Bálsamo Inoar Argan Oil Frasco 1l",
      "22.97",
      "Higiene",
      false
    ],
    [
      "Condicionador Bamboo Strong & Tough Jacque Janine Frasco 1l",
      "34.87",
      "Higiene",
      false
    ],
    [
      "Condicionador Bed Head Tigi Urban Anti+Dotes Resurrection Frasco 750ml",
      "88.99",
      "Higiene",
      false
    ],
    [
      "Condicionador Blends Collection Rico em Vitamina C Inoar Frasco 1l",
      "22.97",
      "Higiene",
      false
    ],
    [
      "Condicionador Detox Capilar Tresemmé Frasco 750ml",
      "25.99",
      "Higiene",
      false
    ],
    [
      "Condicionador Extrato de Bamboo Felps Professional Frasco 1l",
      "74.99",
      "Higiene",
      false
    ],
    [
      "Condicionador Extreme Rescue & Repair Jacques Janine Frasco 1l",
      "34.87",
      "Higiene",
      false
    ],
    ["Condicionador Fava Tonka Balai Frasco 1l", "49.99", "Higiene", false],
    ["Condicionador Haskell Cavalo Forte Frasco 1l", "89.99", "Higiene", false],
    [
      "Condicionador Hidratação Pantene Frasco 750ml",
      "26.97",
      "Higiene",
      false
    ],
    [
      "Condicionador IL Salone Cachos Definidos Alfaparf Frasco 1l",
      "49.99",
      "Higiene",
      false
    ],
    ["Condicionador Intense One C.Kamura Frasco 1l", "99.99", "Higiene", false],
    [
      "Condicionador Pantene 3 Minutos Milagrosos Frasco 170ml",
      "25.99",
      "Higiene",
      false
    ],
    [
      "Condicionador Pantene Restauração Frasco 750ml",
      "26.97",
      "Higiene",
      false
    ],
    [
      "Condicionador Plástica Capilar Inoar Frasco 1l",
      "22.97",
      "Higiene",
      false
    ],
    [
      "Condicionador Reconstrução e Força Tresemmé Frasco 750ml",
      "25.99",
      "Higiene",
      false
    ],
    [
      "Condicionador Tutano e Ceramidas Bio Extratus Frasco 1l",
      "51.97",
      "Higiene",
      false
    ],
    [
      "Creme Dental 4 em 1 Menta Fresca Oral-B Pack com 12 Unidades 70 g Cada",
      "37.99",
      "Higiene",
      false
    ],
    [
      "Creme Dental Clean Mint  Total 12 Colgate Pack com 3 Unidades 140g Cada",
      "25.99",
      "Higiene",
      false
    ],
    [
      "Creme Dental Clean Mint Total 12 Colgate Pack com 4 Unidades 90g Cada",
      "16.97",
      "Higiene",
      false
    ],
    [
      "Creme Dental com Flúor Original Oral-B Pro-Gengiva Pack 6 Unidades 90g cada",
      "72.99",
      "Higiene",
      false
    ],
    [
      "Creme Dental Cool Mint Oral-B Extra Branco Pack com 12 Unidades 70g Cada",
      "37.99",
      "Higiene",
      false
    ],
    [
      "Creme Dental Crystal Mint Oral-B 3D White Perfection Pack com 6 Unidades 102g Cada",
      "66.99",
      "Higiene",
      false
    ],
    [
      "Creme Dental Extra Fresh Oral-B Pack com 3 Unidades 70g Cada",
      "5.97",
      "Higiene",
      false
    ],
    [
      "Creme Dental Luminous White Colgate Pack com 4 Unidades 70g Cada",
      "16.97",
      "Higiene",
      false
    ],
    [
      "Creme Dental Máxima Proteção Anticáries Colgate Pack com 4 Unidades 70g Cada",
      "16.50",
      "Higiene",
      false
    ],
    [
      "Creme Dental Menta Suave Oral-B Escudo Antiaçúcar Pack 3 Unidades 70g Cada",
      "5.97",
      "Higiene",
      false
    ],
    [
      "Creme Dental Natural Extracts Carvão Ativado e Menta Colgate Pack com 4 Unidades 90g Cada Leve Mais Pague Menos",
      "19.97",
      "Higiene",
      false
    ],
    [
      "Creme Dental Oral-B 3D White Brilliant Fresh Pack com 6 Unidades 70g Cada Leve 6 Pague 4",
      "19.87",
      "Higiene",
      false
    ],
    [
      "Creme Dental Sensitive Pro Alívio Imediato Colgate Pack com 3 Unidades 90g Cada",
      "29.99",
      "Higiene",
      false
    ],
    [
      "Creme Dental Sensitive Pro-Alívio Colgate Pack com 3 Unidades 110g Cada",
      "49.99",
      "Higiene",
      false
    ],
    [
      "Creme Dental Total 12 Whitening Colgate Pack com 4 Unidades 90g Cada",
      "16.97",
      "Higiene",
      false
    ],
    [
      "Creme Dental Tripla Ação Colgate Pack com 6 Unidades 90g Cada",
      "17.50",
      "Higiene",
      false
    ],
    [
      "Creme para Pentear Hidratação Pantene Pro-V Pote 600g",
      "18.97",
      "Higiene",
      false
    ],
    ["Cremer Algodão Bolinha Cremer 175g", "11.50", "Higiene", false],
    [
      "Desodorante Aerosol Dove Men Care Invisible Dry Pack 3 Unidades 89g Cada",
      "44.99",
      "Higiene",
      false
    ],
    [
      "Desodorante Aerosol Rexona Clinical Classic Pack 3 Unidades 91g cada",
      "47.99",
      "Higiene",
      false
    ],
    [
      "Desodorante Aerossol 48h Cuidado Total Dove Men Care Pack com 3 Unidades 150ml Cada",
      "44.99",
      "Higiene",
      false
    ],
    [
      "Desodorante Aerossol 48h Invisible Dry Dove Men Care Pack com 3 Unidades 150ml Cada",
      "44.99",
      "Higiene",
      false
    ],
    [
      "Desodorante Aerossol Dove Men Cuidado Total Pack 3 Unidades 89g Cada",
      "44.99",
      "Higiene",
      false
    ],
    [
      "Desodorante Aerossol Dove Original Pack com 3 Unidades 150ml Cada",
      "44.99",
      "Higiene",
      false
    ],
    [
      "Desodorante Aerossol Motionsense Cotton Dry Rexona Pack com 3 Unidades 150ml Cada",
      "33.87",
      "Higiene",
      false
    ],
    [
      "Desodorante Aerossol Motionsense Invisible Rexona Pack com 3 Unidades 150ml Cada",
      "33.87",
      "Higiene",
      false
    ],
    [
      "Desodorante Aerossol para os Pés Tenys Pé Baruel Pack 2 Unidades 110g cada",
      "25.99",
      "Higiene",
      false
    ],
    [
      "Desodorante Antitranspirante Aerossol Invisible Dry Dove Pack com 3 Unidades 150ml Cada",
      "46.99",
      "Higiene",
      false
    ],
    [
      "Desodorante Antitranspirante Aerossol Men Motionsense Active Dry Rexona Pack com 3 Unidades 150ml Cada",
      "33.87",
      "Higiene",
      false
    ],
    [
      "Desodorante Antitranspirante Aerossol Men Motionsense Invisible Rexona Pack com 3 Unidades 150ml Cada",
      "33.87",
      "Higiene",
      false
    ],
    [
      "Desodorante Antitranspirante Aerossol Men Motionsense V8 Rexona Pack com 3 Unidades 150ml Cada",
      "33.87",
      "Higiene",
      false
    ],
    [
      "Desodorante Antitranspirante Aerossol Motionsense Powder Dry Rexona Pack com 3 Unidades 150ml Cada",
      "33.87",
      "Higiene",
      false
    ],
    [
      "Desodorante em Pó Tenys Pé Canforado Baruel Pack 2 Unidades com 110g Cada",
      "25.99",
      "Higiene",
      false
    ],
    [
      "Desodorante em Pó Tenys Pé Woman Baruel Pack 2 Unidades com 92g Cada",
      "25.99",
      "Higiene",
      false
    ],
    [
      "Desodorante Rexona Clinical Men Aerossol Pack com 3 Unidades 91g Cada",
      "47.99",
      "Higiene",
      false
    ],
    [
      "Desodorante Rollon Dove Original Pack com 3 Unidades 50ml Cada",
      "30.99",
      "Higiene",
      false
    ],
    [
      "Desodorante Rollon Invisible Rexona Men Pack 3 Unidades com 50ml Cada",
      "28.99",
      "Higiene",
      false
    ],
    [
      "Desodorante Rollon Rexona Women Invisible Pack 3 Unidades 50ml cada",
      "28.99",
      "Higiene",
      false
    ],
    [
      "Desodorante Tenys Pé Baruel Sem Perfume Pack com 2 Unidades 110g Cada",
      "25.99",
      "Higiene",
      false
    ],
    [
      "Enxaguante Bucal Antisséptico Zero Álcool Menta Oral-B Complete Frasco 2l",
      "34.97",
      "Higiene",
      false
    ],
    [
      "Enxaguante Bucal Hortelã Listerine Cool Mint Frasco Leve 1500ml Pague 750ml",
      "25.47",
      "Higiene",
      false
    ],
    [
      "Enxaguante Bucal Zero Álcool Fresh Mint Plax Colgate Leve 1000ml Pague 700ml",
      "19.50",
      "Higiene",
      false
    ],
    [
      "Enxaguante Bucal Zero Álcool Menta Suave Listerine Frasco Leve 1.5l Pague 750ml",
      "25.47",
      "Higiene",
      false
    ],
    [
      "Enxaguante Bucal Zero Álcool Soft Mint Plax Embalagem Econômica Colgate 2l Grátis Válvula Dosadora",
      "39.99",
      "Higiene",
      false
    ],
    [
      "Enxaguante Bucal Zero Álcool Tutti Frutti Minions Plax Kids Colgate 250ml",
      "12.50",
      "Higiene",
      false
    ],
    [
      "Escova Dental Extramacia Tandy Colgate Pack com 4 Unidades",
      "13.99",
      "Higiene",
      false
    ],
    [
      "Escova Dental Hello Kitty Jadefrog com 3 Unidades",
      "14.99",
      "Higiene",
      false
    ],
    [
      "Escova Dental Macia Oral-B Complete Pack com 5 Unidades",
      "52.99",
      "Higiene",
      false
    ],
    [
      "Escova Dental Suave Luminous White 360° Colgate Pack com 5 Unidades",
      "39.99",
      "Higiene",
      false
    ],
    [
      "Escova Dental Suave Oral-B Color Collection Pack com 5 Unidades",
      "19.87",
      "Higiene",
      false
    ],
    [
      "Escova Dentes Suave e Macia Johnsons Professional com 5 Unidades",
      "38.99",
      "Higiene",
      false
    ],
    ["Espuma Barbear Insignia Mentol Garrafa 400ml", "45.99", "Higiene", false],
    ["Espuma de Barbear Insignia Garrafa 400ml", "45.99", "Higiene", false],
    [
      "Fio Dental Johnson Reach Essenc Pack 3 Unidades 100m cada",
      "29.99",
      "Higiene",
      false
    ],
    [
      "Fita Dental Johnson Reach Pack 3 Unidades 50m cada",
      "34.99",
      "Higiene",
      false
    ],
    [
      "Fralda Descartável Adulto Tena Slip UltraCare EG com 7 Unidades",
      "69.97",
      "Higiene",
      false
    ],
    [
      "Fralda Descartável Adulto Tena Slip UltraCare M com 20 Unidades Leve 20 Pague 17",
      "69.97",
      "Higiene",
      false
    ],
    [
      "Fralda Descartável Adulto Total Protection Unissex Member's Mark G com 24 Unidades",
      "69.99",
      "Higiene",
      false
    ],
    [
      "Fralda Descartável Adulto Total Protection Unissex Member's Mark M com 30 Unidades",
      "69.99",
      "Higiene",
      false
    ],
    [
      "Gel Antibacteriano para Mãos Fisher-Price Frasco 400g",
      "9.99",
      "Higiene",
      false
    ],
    [
      "Gel Dental Infantil Jadefrog Hello Kitty Pack 3 Unidades 50g Cada",
      "15.99",
      "Higiene",
      false
    ],
    [
      "Gel Higienizador Antisséptico Prote & Clean Frasco 1kg",
      "16.27",
      "Higiene",
      false
    ],
    [
      "Hastes Flexíveis Johnson & Johnson Cotonetes Caixa com 300 Unidades",
      "11.99",
      "Higiene",
      false
    ],
    ["Hastes Flexíveis Member's Mark 500 unidades", "13.99", "Higiene", false],
    ["Hidratante Abacate Orgânica Frasco 500ml", "34.97", "Higiene", false],
    [
      "Hidratante Corporal Aveia e Leite Instituto Español Frasco 950ml",
      "81.99",
      "Higiene",
      false
    ],
    [
      "Hidratante Corporal Chá Branco e Gengibre Orgânica Frasco 500ml",
      "34.97",
      "Higiene",
      false
    ],
    [
      "Hidratante Corporal Madras Mato Doce Frasco 500ml",
      "34.97",
      "Higiene",
      false
    ],
    [
      "Hidratante Corporal Verbena Mato Doce Frasco 500ml",
      "34.97",
      "Higiene",
      false
    ],
    [
      "Hidratante Corporal Water Gel Neutrogena Hydro Boost Frasco 400ml",
      "54.99",
      "Higiene",
      false
    ],
    [
      "Hidratante Intensivo Corporal Neutrogena Frasco 500ml",
      "98.99",
      "Higiene",
      false
    ],
    [
      "Hidratante Intensivo Corporal sem Fragrância Neutrogena Frasco 500ml",
      "98.99",
      "Higiene",
      false
    ],
    [
      "Higienizador para Mãos Gel 70° INPM Fisher Price Pack 3 Unidades 52g cada",
      "9.99",
      "Higiene",
      false
    ],
    [
      "Kit 1 Aparelho Recarregável para Barbear + 9 Cargas Gillette Mach3 Sensitive",
      "64.87",
      "Higiene",
      false
    ],
    ["Kit 3 Fios Dentais Gum com 90 Unidades Cada", "79.99", "Higiene", false],
    [
      "Kit Creme para Mãos Oceane Bath & Body 3 Unidades 30ml",
      "39.97",
      "Higiene",
      false
    ],
    [
      "Kit Escova Colgate + Gel Dental Infantil com Flúor Bubble Fruit Minions Colgate 100g",
      "19.99",
      "Higiene",
      false
    ],
    [
      "Kit Espuma para Banho 240ml e Creme para Mãos 30ml Oceane Bath & Body",
      "49.97",
      "Higiene",
      false
    ],
    [
      "Kit Pincel Maquiagem Member's Mark 8 Unidades",
      "59.99",
      "Higiene",
      false
    ],
    [
      "Kit Protetor Solar FPS 70 Sundown Praia e Piscina 200ml Grátis Protetor Solar Facial FPS 60 Neutrogena Sun Fresh 50ml",
      "29.47",
      "Higiene",
      false
    ],
    [
      "Kit Repelente Off! Aerossol 165ml + Loção Family 100ml + Loção Kids 200ml",
      "52.98",
      "Higiene",
      false
    ],
    [
      "Kit Shampoo + Condicionador Eico Cura Fios 2 Unidades 1l",
      "39.87",
      "Higiene",
      false
    ],
    [
      "Kit Shampoo + Condicionador Eico Cura Fios Tratamento dos Fios 2 Unidades 1l",
      "39.87",
      "Higiene",
      false
    ],
    [
      "Kit Shampoo + Condicionador Eico Liso Mágico 1l Cada",
      "39.87",
      "Higiene",
      false
    ],
    [
      "Kit Shampoo + Condicionador Flor de Lótus Résistance Inoar Frasco 2 Unidades 1L Cada",
      "39.99",
      "Higiene",
      false
    ],
    [
      "Kit Shampoo + Condicionador Pantene Liso Extremo 750ml Cada",
      "39.87",
      "Higiene",
      false
    ],
    [
      "Lenço de Papel Member's Mark Pack com 3 Unidades 120 folhas cada",
      "26.99",
      "Higiene",
      false
    ],
    [
      "Lenço Demaquilante Member's Mark Pack com 5 Pacotes 25 Unidades Cada",
      "24.91",
      "Higiene",
      false
    ],
    [
      "Lenço Umedecido Higiênico Feelclean Ecosoft Pacote 50 Unidades",
      "9.99",
      "Higiene",
      false
    ],
    [
      "Lenço Umedecido Higiênico Neve Supreme 48 Unidades",
      "11.99",
      "Higiene",
      false
    ],
    [
      "Lenço Umedecido Higiênico Neve Toque da Seda Pacote Leve 4 Pague 3 Unidades",
      "32.99",
      "Higiene",
      false
    ],
    [
      "Lenços Umedecidos Antissépticos Onecare Pack com 6 pacotes 15 Unidades Cada",
      "35.99",
      "Higiene",
      false
    ],
    [
      "Loção Hidratante Neutrogena Body Care Intensive Frasco 400ml",
      "34.99",
      "Higiene",
      false
    ],
    ["Máscara Capilar Eico Cura Fios Pote 1kg", "39.99", "Higiene", false],
    [
      "Máscara Capilar Jacques Janine Extreme Pote 500g",
      "29.97",
      "Higiene",
      false
    ],
    [
      "Máscara de Hidratação Blends Collection Rico em Vitamina C Inoar Frasco 1kg",
      "45.99",
      "Higiene",
      false
    ],
    [
      "Máscara de Hidratação Cavalo Forte Haskell Pote 1kg",
      "89.99",
      "Higiene",
      false
    ],
    [
      "Máscara de Proteção TNT Health Mask Pacote com 3 Unidades",
      "9.89",
      "Higiene",
      false
    ],
    [
      "Máscara de Tratamento Balai América Fava Tonka Pote 1kg",
      "49.99",
      "Higiene",
      false
    ],
    [
      "Máscara de Tratamento Bamboo Jacques Janine Pote  500g",
      "29.97",
      "Higiene",
      false
    ],
    [
      "Máscara de Tratamento Inoar Argan Oil Pote 1kg",
      "45.99",
      "Higiene",
      false
    ],
    [
      "Máscara de Tratamento Pantene Restauração Pote 600ml",
      "15.87",
      "Higiene",
      false
    ],
    [
      "Máscara Descartável Semifacial Monocamada Member's Mark Pacote 10 Unidades",
      "4.89",
      "Higiene",
      false
    ],
    [
      "Máscara Nutritiva Pantene Bambu Nutre & Cresce Pote 600ml",
      "15.87",
      "Higiene",
      false
    ],
    ["Máscara Plástica Capilar Inoar Pote 1kg", "45.99", "Higiene", false],
    [
      "Máscara Reconstrução Capilar SOS Extremo Felps Professional Pote 1kg",
      "79.99",
      "Higiene",
      false
    ],
    [
      "Pack Sabonete Íntimo Defesa Natural Intimus Caixa 2 Unidades 200ml",
      "31.99",
      "Higiene",
      false
    ],
    [
      "Papel Higiênico Folha Dupla Member's Mark 30m com 40 Unidades",
      "46.99",
      "Higiene",
      false
    ],
    [
      "Papel Higiênico Folha Dupla Neutro Neve Pacote com 40 Unidades",
      "46.50",
      "Higiene",
      false
    ],
    [
      "Papel Higiênico Folha Tripla Neutro Neve Pacote Leve 32 Pague 28 Unidades",
      "46.98",
      "Higiene",
      false
    ],
    [
      "Papel Higiênico Mirafiori Pacote com 40 Rolos 30mx10m",
      "45.99",
      "Higiene",
      false
    ],
    [
      "Papel Higiênico Personal Vip Folha Dupla embalagem 40 Unidades",
      "39.99",
      "Higiene",
      false
    ],
    [
      "Papel Higiênico Royal Care Pacote com 40 Unidades",
      "49.99",
      "Higiene",
      false
    ],
    [
      "Protetor Diário Member's Mark com 160 Unidades",
      "22.99",
      "Higiene",
      false
    ],
    [
      "Protetor Diário sem Abas Antibacteriano Intimus Pacote com 80 Unidades",
      "11.97",
      "Higiene",
      false
    ],
    [
      "Protetor Diário Sem Abas Carefree 80 Unidades",
      "11.97",
      "Higiene",
      false
    ],
    [
      "Protetor Diário sem Abas Intimus Days Pacote Leve 160 Pague 110 Unidades",
      "31.99",
      "Higiene",
      false
    ],
    [
      "Repelente de Insetos OFF! Kids Pack 2 Unidades 200ml Cada",
      "48.99",
      "Higiene",
      false
    ],
    [
      "Roupa Íntima Descartável G/EG Unissex Tena Pants Confort Pacote 16 Unidades Embalagem Econômica",
      "45.97",
      "Higiene",
      false
    ],
    [
      "Roupa Íntima Descartável G/XG Plenitud Femme com 16 Unidades",
      "39.97",
      "Higiene",
      false
    ],
    [
      "Roupa Íntima Descartável Noturna G/EG Unissex Tena Pants com 7 Unidades",
      "24.67",
      "Higiene",
      false
    ],
    [
      "Roupa Íntima Descartável Noturna P/M Unissex Tena Pants com 7 Unidades",
      "24.67",
      "Higiene",
      false
    ],
    [
      "Roupa Íntima Descartável P/M Plenitud Femme com 16 Unidades",
      "39.97",
      "Higiene",
      false
    ],
    [
      "Roupa Íntima Descartável P/M Unissex Tena Pants Confort Pacote 16 Unidades Embalagem Econômica",
      "45.97",
      "Higiene",
      false
    ],
    [
      "Roupa Íntima Descartável Plenitud Tam X/XG com 32 Unidades",
      "99.99",
      "Higiene",
      false
    ],
    [
      "Sabonete Antibacteriano Cuida e Protege Dove Pack com 8 Unidades 90g Cada",
      "18.99",
      "Higiene",
      false
    ],
    [
      "Sabonete Dove Original Pack com 8 Unidades 90g Cada",
      "18.50",
      "Higiene",
      false
    ],
    [
      "Sabonete em Barra Aveia Nivea Pack com 8 Unidades 85g Cada",
      "22.99",
      "Higiene",
      false
    ],
    [
      "Sabonete em Barra Flor de Laranjeira e Vetiver Giorno Bagno Pacote 180g",
      "14.99",
      "Higiene",
      false
    ],
    [
      "Sabonete em Barra Hidratante Creme Care Nivea Pack com 8 Unidades 90g Cada",
      "17.97",
      "Higiene",
      false
    ],
    [
      "Sabonete em Barra Johnson's Daily Care Lavanda Pack com 12 Unidades 80g Cada",
      "18.99",
      "Higiene",
      false
    ],
    [
      "Sabonete em Barra Lavanda e Baunilha Giorno Bagno Pacote 180g",
      "14.99",
      "Higiene",
      false
    ],
    [
      "Sabonete em Barra Limpeza Profunda Original Protex Pack com 8 Unidades 85g Cada Leve 8 Pague 6",
      "17.99",
      "Higiene",
      false
    ],
    [
      "Sabonete em Barra Madras Mato Doce Pack com 2 Unidades 110g Cada",
      "20.99",
      "Higiene",
      false
    ],
    [
      "Sabonete em Barra Nutri Protect Vitamina E Protex Pack com 8 Unidades 85g Cada Leve 8 Pague 6",
      "17.99",
      "Higiene",
      false
    ],
    [
      "Sabonete em Barra Paris Classic Acqua Lounge Kit com 3 Unidades 90g Cada",
      "26.99",
      "Higiene",
      false
    ],
    [
      "Sabonete em Barra Phebo Odor de Rosas Pack com 6 Unidades 90g Cada",
      "19.99",
      "Higiene",
      false
    ],
    [
      "Sabonete em Barra Protex Ômega 3 Pack com 8 Unidades 85g Cada",
      "17.99",
      "Higiene",
      false
    ],
    [
      "Sabonete em Barra Rejuvenescedora Amêndoas Johnson's Nutri Spa Pack 12 Unidades 80g Cada",
      "20.99",
      "Higiene",
      false
    ],
    [
      "Sabonete em Barra Rosas Giorno Bagno Pacote 180g",
      "14.99",
      "Higiene",
      false
    ],
    [
      "Sabonete em Barra Verbena Acqua Lounge Caixa 180g",
      "13.99",
      "Higiene",
      false
    ],
    [
      "Sabonete em Barra Verbena e Sândalo Giorno Bagno Pacote 180g",
      "14.99",
      "Higiene",
      false
    ],
    [
      "Sabonete em Barra Verbena Mato Doce Pack com 2 Unidades 110g Cada",
      "20.99",
      "Higiene",
      false
    ],
    [
      "Sabonete em Gel Aromaterapia Instituto Español Frasco 750ml",
      "35.99",
      "Higiene",
      false
    ],
    [
      "Sabonete Gel Avena Aveia Instituto Español Frasco 1.250ml",
      "49.99",
      "Higiene",
      false
    ],
    [
      "Sabonete Giorno Bagno Pacote Uomo Amarelo 180g",
      "16.99",
      "Higiene",
      false
    ],
    [
      "Sabonete Giorno Bagno Pacote Uomo Laranja 180g",
      "16.99",
      "Higiene",
      false
    ],
    ["Sabonete Giorno Bagno Pacote Uomo Verde 180g", "16.99", "Higiene", false],
    [
      "Sabonete Líquido Aloe Vera Instituto Español Frasco 1.250ml",
      "49.99",
      "Higiene",
      false
    ],
    [
      "Sabonete Líquido Antibacteriano para as Mãos Protex Frasco 1l",
      "49.97",
      "Higiene",
      false
    ],
    [
      "Sabonete Líquido Antisséptico Member's Mark Frasco 1.1l",
      "19.99",
      "Higiene",
      false
    ],
    [
      "Sabonete Líquido Erva Doce Prote & Clean Frasco1.1l",
      "20.99",
      "Higiene",
      false
    ],
    [
      "Sabonete Líquido Extrato de Calêndula Member's Mark Frasco 980ml",
      "48.99",
      "Higiene",
      false
    ],
    [
      "Sabonete Liquido Glicerina Granado Pack com 2 Unidades 250ml Cada",
      "34.98",
      "Higiene",
      false
    ],
    [
      "Sabonete Líquido Íntimo Delicate Care Protex Cuidado Íntimo Pack com 2 Unidades 200ml Cada Leve 400ml Pague 300ml",
      "31.99",
      "Higiene",
      false
    ],
    [
      "Sabonete Líquido para Mãos Erva Doce Prote&Clean Galão 5l",
      "36.99",
      "Higiene",
      false
    ],
    [
      "Sabonete Líquido Pitanga Member's Mark Frasco 980ml",
      "48.99",
      "Higiene",
      false
    ],
    [
      "Sabonete Líquido Verbena Member's Mark Frasco 980ml",
      "48.99",
      "Higiene",
      false
    ],
    [
      "Sabonete Nivea Leite Pack 12 Unidades 85g cada",
      "22.99",
      "Higiene",
      false
    ],
    [
      "Shampoo + Condicionador Pantene Hidratação Intensa Pack com 2 Unidades 750ml Cada",
      "39.87",
      "Higiene",
      false
    ],
    [
      "Shampoo + Condicionador Pantene Reparação Pack com 2 Unidades 750ml Cada",
      "39.87",
      "Higiene",
      false
    ],
    [
      "Shampoo 2 em 1 Anticaspa Men Limpeza Diária Clear 400ml",
      "23.87",
      "Higiene",
      false
    ],
    [
      "Shampoo 2 em 1 Transformers Bumblebee View Cosméticos Frasco 1L",
      "37.99",
      "Higiene",
      false
    ],
    [
      "Shampoo 2 em 1 Transformers Megatron View Cosméticos Frasco 1L",
      "37.99",
      "Higiene",
      false
    ],
    [
      "Shampoo 7 Ervas Detox Alta Moda Alfaparf Frasco 1l",
      "26.87",
      "Higiene",
      false
    ],
    [
      "Shampoo Alfaparf Bb Cream Alta Moda Frasco 1l",
      "26.87",
      "Higiene",
      false
    ],
    [
      "Shampoo Algas Dead Sea Equilíbrio do PH Balai Vegan Frasco 1L",
      "49.99",
      "Higiene",
      false
    ],
    [
      "Shampoo Anticaspa Ice Cool Menthol Men Clear 400ml",
      "23.87",
      "Higiene",
      false
    ],
    [
      "Shampoo Bamboo Strong & Tough Jacques Janine Frasco 1l",
      "32.87",
      "Higiene",
      false
    ],
    [
      "Shampoo Bio-Crescimento Extrato de Bamboo Profissional Felps Frasco 1L",
      "64.99",
      "Higiene",
      false
    ],
    [
      "Shampoo Blends Collection Rico em Vitamina C Inoar Frasco 1l",
      "22.97",
      "Higiene",
      false
    ],
    ["Shampoo Detox Capilar Tresemmé Frasco 750ml", "20.99", "Higiene", false],
    [
      "Shampoo e Condicionador Salão em Casa Eico Life Kit 2 Unidades de 800ml Cada",
      "39.99",
      "Higiene",
      false
    ],
    [
      "Shampoo Extreme Rescue & Repair Jacques Janine Frasco 1l",
      "32.87",
      "Higiene",
      false
    ],
    [
      "Shampoo Fava Tonka Hidratação Profunda Balai Vegan Frasco 1L",
      "49.99",
      "Higiene",
      false
    ],
    [
      "Shampoo Força com Pimenta Bio Extratus Frasco 1l",
      "73.97",
      "Higiene",
      false
    ],
    ["Shampoo Hidratante Inoar Argan Frasco 1l", "22.97", "Higiene", false],
    [
      "Shampoo IL Salone Cachos Definidos Alfaparf Frasco 1l",
      "45.99",
      "Higiene",
      false
    ],
    [
      "Shampoo Infantil Extra Suave Huggies Frasco 600ml",
      "14.87",
      "Higiene",
      false
    ],
    [
      "Shampoo Infantil Gotas de Brilho Johnson's Frasco Pack com 2 Unidades 400ml Cada",
      "29.88",
      "Higiene",
      false
    ],
    ["Shampoo Intense One C.Kamura Frasco 1l", "89.99", "Higiene", false],
    ["Shampoo Oliva e Aloe Europa Balai Frasco 1l", "49.99", "Higiene", false],
    ["Shampoo Pantene Hidratação Frasco 750ml", "26.97", "Higiene", false],
    ["Shampoo Pantene Restauração Frasco 750ml", "26.97", "Higiene", false],
    ["Shampoo Plástica Capilar Inoar Frasco 1l", "22.97", "Higiene", false],
    [
      "Shampoo Reconstrução e Força Tresemmé Frasco 750ml",
      "20.99",
      "Higiene",
      false
    ],
    [
      "Shampoo Remoção da Oleosidade  Head & Shoulders Frasco 700ml",
      "26.97",
      "Higiene",
      false
    ],
    [
      "Shampoo Suave LOL Surprise View Cosméticos Frasco 1l",
      "37.99",
      "Higiene",
      false
    ],
    [
      "Shampoo Vegetal Chá Branco & Gengibre Orgânica Frasco 1l",
      "49.99",
      "Higiene",
      false
    ],
    [
      "Shampoo Vegetal Coconut Fresh Orgânica Frasco 1l",
      "49.99",
      "Higiene",
      false
    ],
    [
      "Soft-Picks Original Cuidado Dental G.U.M Pack 3 Caixas 120 Unidades",
      "49.99",
      "Higiene",
      false
    ],
    [
      "Toalha Umedecida Adulto Plenitud Pacote 42 Unidades",
      "15.99",
      "Higiene",
      false
    ],
    [
      "Bebida à Base de Amêndoa Ades Caixa 1l",
      "12.99",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida à Base de Amêndoa Chocolate Blue Diamond Almond Breeze Caixa 1l",
      "9.98",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida à Base de Amêndoa e Cacau Silk Caixa 1l",
      "12.99",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida à Base de Amêndoa Original Blue Diamond Almond Breeze Caixa 1l",
      "12.99",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida à Base de Amêndoa Original Nuts Caixa 1l",
      "10.99",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida à Base de Amêndoa Original Zero Açúcar Nuts Caixa 1l",
      "10.99",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida à Base de Amêndoa Silk Caixa 1l",
      "12.99",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida à Base de Amêndoa Zero Açúcar Silk Caixa 1l",
      "12.99",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida à Base de Arroz e Coco Nature's Heart Caixa 1l",
      "12.99",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida à Base de Arroz Integral Nestlé Nesfit Caixa 1l",
      "13.29",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida à Base de Aveia Integral Nestlé Nesfit Caixa 1l",
      "13.29",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida à Base de Aveia Nature's Heart Caixa 1l",
      "12.99",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida à base de Castanha de Caju A Tal da Castanha Caixa 1l",
      "15.98",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida à base de Castanha de Caju Original A Tal da Castanha Caixa 1l",
      "14.98",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida à Base de Castanha-de-Caju Nature's Heart Caixa 1l",
      "12.99",
      "Frios Laticinios",
      false
    ],
    ["Bebida à Base de Coco Silk Caixa 1l", "12.99", "Frios Laticinios", false],
    [
      "Bebida à Base de Oleagenosas Caju + Amendoim A Tal Da Castanha Caixa com Tampa Caixa 1l",
      "14.98",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida à Base de Vitaminas Yakult Taffman EX Caixa 110ml com 6 Unidades",
      "20.99",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida Láctea Chocolate Nescau Pack 6 Unidades 270ml Cada",
      "23.99",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida Láctea UHT Banana Zero Lactose Piracanjuba Whey Caixa 250ml",
      "3.99",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida Láctea UHT Banana Zero Lactose Yopro 15g High Protein Caixa 250ml",
      "6.49",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida Láctea UHT Cacau Zero Lactose Piracanjuba Whey Caixa 250ml",
      "3.99",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida Láctea UHT Café Zero Lactose Itambé Pro Whey Caixa 200ml",
      "5.49",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida Láctea UHT Chocolate com Aveia Piracanjuba Imunoday Caixa 200ml",
      "3.98",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida Láctea UHT Chocolate Danette Caixa 1l",
      "5.99",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida Láctea UHT Chocolate Zero Lactose Itambé Pro Whey Caixa 200ml",
      "4.69",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida Láctea UHT Chocolate Zero Lactose Piracanjuba Imunoday Caixa 200ml",
      "3.98",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida Láctea UHT Chocolate Zero Lactose Yopro 15g High Protein Caixa 250ml",
      "6.49",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida Láctea UHT Coco com Batata-Doce Zero Lactose Yopro 15g High Protein Caixa 250ml",
      "6.49",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida Láctea UHT de Chocolate Nestlé Nescau Pack com 9 Unidades 200ml Cada Leve 9 Pague 8 Unidades",
      "15.50",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida Láctea UHT Frutas Vermelhas Zero Lactose Piracanjuba Whey Caixa 250ml",
      "5.29",
      "Frios Laticinios",
      false
    ],
    [
      "Bebida Láctea UHT Original Piracanjuba Imunoday Caixa 200ml",
      "4.99",
      "Frios Laticinios",
      false
    ],
    [
      "Canelone Presunto e Queijo Dona Thereza 400g",
      "15.99",
      "Frios Laticinios",
      false
    ],
    [
      "Canelone Quatro Queijos Dona Thereza 400g",
      "15.99",
      "Frios Laticinios",
      false
    ],
    [
      "Capeletti 4 Queijos Mezzani Pacote 1kg",
      "13.39",
      "Frios Laticinios",
      false
    ],
    ["Capeletti Carne Mezzani Pacote 1kg", "14.29", "Frios Laticinios", false],
    ["Capeletti Carne Rana Sachê 250g", "25.69", "Frios Laticinios", false],
    ["Copa Fatiada Sadia Pacote 100g", "13.99", "Frios Laticinios", false],
    [
      "Creme Chantilly Spray Fleischmann Lata 250g",
      "19.99",
      "Frios Laticinios",
      false
    ],
    ["Creme Chantilly Vigor Spray 250g", "17.90", "Frios Laticinios", false],
    [
      "Creme de Queijo Minas Frescal Light Tirolez Pote 200g",
      "6.99",
      "Frios Laticinios",
      false
    ],
    [
      "Creme de Queijo Minas Frescal Original Tirolez Pote 200g",
      "5.99",
      "Frios Laticinios",
      false
    ],
    [
      "Creme de Queijo Ricota Light Tirolez Pote 200g",
      "5.49",
      "Frios Laticinios",
      false
    ],
    [
      "Creme de Queijo Ricota Original Tirolez Pote 200g",
      "4.79",
      "Frios Laticinios",
      false
    ],
    [
      "Creme Vegetal com Sal Qualy Vita Pote 500g",
      "6.99",
      "Frios Laticinios",
      false
    ],
    [
      "Creme Vegetal Original com Sal Becel 500g",
      "6.50",
      "Frios Laticinios",
      false
    ],
    [
      "Frescatino 3 Ingredientes Polenghi Pack com 2 Unidades 500g Cada",
      "26.99",
      "Frios Laticinios",
      false
    ],
    [
      "Gnochi 4 Queijos Firma Itália Caixa 390g",
      "14.99",
      "Frios Laticinios",
      false
    ],
    [
      "Gran Ravióli Recheio Gorgonzola. Nozes e Castanhas Rana Gourmet Sachê 250g",
      "30.90",
      "Frios Laticinios",
      false
    ],
    [
      "Gran Ravióli Recheio Trufa Branca. Cogumelos e Queijo Rana Gourmet Sachê 250g",
      "30.90",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte de Morango Fazenda Bela Vista Pack com 6 Unidades 180ml Cada",
      "10.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Desnatado Cookies & Cream Zero Lactose Natural Whey Verde Campo Garrafa 250g",
      "6.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Desnatado Doce de Leite Zero Lactose Natural Whey Verde Campo Garrafa 250g",
      "8.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Desnatado Frutas Vermelhas Fazenda Bela Vista Garrafa 500g",
      "3.90",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Desnatado Frutas Vermelhas. Aveia e Hibisco Zero Lactose Nesfit Garrafa 850g",
      "11.49",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Desnatado Maracujá. Aveia e Gengibre Zero Lactose Nestlé Nesfit Garrafa 850g",
      "11.49",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Desnatado Morango Zero Lactose Natural Whey 28g de Proteína Verde Camp Garrafa 500g",
      "11.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Desnatado Morango Zero Lactose Natural Whey Verde Campo Garrafa 250g",
      "6.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Desnatado Morango Zero Lactose Nestlé Molico Garrafa 850g",
      "9.89",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Desnatado Pasta de Amendoim Natural Whey Verde Campo Garrafa 250g",
      "8.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Frutas Vermelhas Fazenda Bela Vista Pack com 6 Unidades 180g Cada",
      "10.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Grego Calda Blueberry Vigor Pote 100g",
      "2.49",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Grego Calda Frutas Vermelhas Vigor Pote 100g",
      "2.49",
      "Frios Laticinios",
      false
    ],
    ["Iogurte Grego Flocos Vigor Pote 100g", "0.99", "Frios Laticinios", false],
    [
      "Iogurte Grego Parcialmente Desnatado Morango + Leite Light Danone 800g Leve 8 Pague 7 Unidades",
      "15.79",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Grego Tradicional + Morango + Maracujá Light Nestlé 540g com 6 Unidades",
      "9.19",
      "Frios Laticinios",
      false
    ],
    ["Iogurte Grego Vigor Pote 100g", "2.49", "Frios Laticinios", false],
    [
      "Iogurte Integral Coco Batavo Pedaços Pote 500g",
      "5.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Integral Fazenda Bela Vista Pack com 3 Unidades 170g Cada",
      "5.49",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Integral Fruta com Cereais Meu Malvado Favorito Vigor Copo 165g",
      "3.79",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Integral Morango Batavo Pedaços Pote 500g",
      "5.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Integral Morango Danone 1.35kg",
      "8.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Integral Morango Danone 600g com 6 Unidades",
      "11.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Integral Morango Danoninho 600g com 6 Unidades",
      "13.29",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Integral Vitamina de Frutas Danone Garrafa 1.35kg Embalagem Supereconômica",
      "10.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Laranja Cenoura e Mel Fazenda Bela Vista Pack com 3 Unidades 170g Cada",
      "5.49",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Mel Fazenda Bela Vista Pack com 3 Unidades 170g Cada",
      "5.49",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Morango + Salada de Frutas + Maçã e Banana Ninho 540g com 6 Unidades",
      "3.59",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Natural Fazenda Bela Vista Pack com 3 Unidades 170gr Cada",
      "5.49",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Parcialmente Desnatado Coco Fazenda Bela Vista Garrafa 500g",
      "3.90",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Parcialmente Desnatado Fazenda Bela Vista Garrafa 500g",
      "3.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Parcialmente Desnatado Fazenda Bela Vista Pack com 6 Unidades 180g Cada",
      "10.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Parcialmente Desnatado Maçã e Banana Nestlé Ninho Garrafa 850g",
      "9.89",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Parcialmente Desnatado Morango Calda Morango Nestlé Copo 150g",
      "2.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Parcialmente Desnatado Morango Chamyto Go Garrafa 100g",
      "2.19",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Parcialmente Desnatado Morango Fazenda Bela Vista Garrafa 500g",
      "3.90",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Parcialmente Desnatado Morango Nestlé Garrafa 1.25kg",
      "10.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Parcialmente Desnatado Morango Vigor Garrafa 1.26kg",
      "9.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Parcialmente Desnatado Vitamina de Frutas Nestlé Garrafa 1.25kg",
      "10.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Parcialmente Desnatado Vitamina de Frutas Vigor Garrafa 1.26kg",
      "5.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Petit Suisse Morango & Banana Danoninho para Levar Pouch 70g",
      "3.49",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Petit Suisse Morango Danoninho para Levar 70g",
      "2.99",
      "Frios Laticinios",
      false
    ],
    [
      "Iogurte Petit Suisse Morango Toy Story 4 Danoninho Bandeja 480g 12 Unidades Leve Mais Pague Menos",
      "3.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Desnatado Leitíssimo Pack com 6 Unidades 1l Cada",
      "32.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Desnatado Molico Nestlé Pack 12 Unidades 1l cada",
      "55.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Fermentado Desnatado Chamyto 450g com 6 Unidades",
      "4.19",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Fermentado Desnatado Yakult 40 Pack com 6 Unidades 80g Cada",
      "9.19",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Fermentado Desnatado Yakult Pack com 6 Unidades 80g Cada",
      "7.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Fermentado Integral Aveia. Mamão e Cereais Activia pack 800g com 8 Unidades Grátis 1 Unidade",
      "11.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Fermentado Morango Activia Bandeja 800g 8 Unidades",
      "7.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Fermentado Tradicional Actimel Pack 600g com 6 Unidades",
      "12.09",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Integral Ninho Pack 12 Unidades 1l Cada",
      "56.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Integral Paulista Pack 12 Unidades 1Lt Cada",
      "50.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Integral Paulista Pack 6 Unidades 1Lt Cada",
      "26.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Integral Piracanjuba Pack 12 Unidades 1l cada",
      "42.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Kefir Desnatado Sabor Morango Sem Açúcar Zero Lactose Garrafa 500g",
      "11.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Kefir Integral Sem Açúcar Zero Lactose Garrafa 500g",
      "11.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Pasteurizado Homogeneizado Tipo A Desnatado Fazenda Bela Vista Garrafa 1l",
      "5.36",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Pasteurizado Homogeneizado Tipo A Integral Fazenda Bela Vista Garrafa 1l",
      "5.12",
      "Frios Laticinios",
      false
    ],
    [
      "Leite Pasteurizado Homogeneizado Tipo A Semidesnatado Fazenda Bela Vista Garrafa 1l",
      "5.12",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Desnatado Italac Pack 12 Unidades 1Lt Cada",
      "47.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Desnatado Piracanjuba Pack com 12 Unidades 1l Cada",
      "42.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Desnatado Zero Lactose Itambé Nolac Caixa 1l",
      "4.89",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Integral Italac Pack com 12 Unidades 1l Cada",
      "48.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Integral Itambé Kids Dez Vitaminas Caixa 1l",
      "4.69",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Integral Itambé Natural Milk Caixa com Tampa 1l",
      "4.69",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Integral Itambé Pack 6 Unidades Garrafa 1l Cada",
      "25.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Integral sem Estabilizante Paulista Garrafa 1l",
      "4.79",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Integral Tirol Pack 12 Unidades 1l Cada",
      "42.50",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Integral Zero Lactose Italac Caixa 1l",
      "5.09",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Integral Zero Lactose Itambé Nolac Caixa com Tampa 1l",
      "5.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Integral Zero Lactose Leitíssimo Pack com 6 Unidades 1l Cada",
      "32.50",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Integral Zero Lactose Nestlé Ninho Forti+ Caixa com Tampa 1l",
      "5.29",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Leitíssimo Integral Pack 6 Unidades 1l cada",
      "29.50",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Semi Desnatado Itambé Pack 6 Unidade 1L Cada",
      "25.50",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Semidesnatado Italac Pack com 12 Unidades 1l Cada",
      "47.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Semidesnatado Itambé Rico em Cálcio Caixa com Tampa 1l",
      "3.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Semidesnatado Piracanjuba Pack com 12 Unidades 1l Cada",
      "42.99",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Semidesnatado Zero Lactose Italac Caixa 1l",
      "4.79",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Semidesnatado Zero Lactose Itambé Nolac Caixa 1l",
      "4.89",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Semidesnatado Zero Lactose Leitbom Caixa 1l",
      "3.98",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Semidesnatado Zero Lactose Nestlé Ninho Levinho Forti+ Caixa com Tampa 1l",
      "5.49",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Semidesnatado Zero Lactose Paulista Garrafa 1l",
      "4.89",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Semidesnatado Zero Lactose Piracanjuba Caixa com Tampa 1l",
      "4.79",
      "Frios Laticinios",
      false
    ],
    [
      "Leite UHT Semidesnatado Zero Lactose Premiare Tirol Caixa 1l",
      "4.19",
      "Frios Laticinios",
      false
    ],
    ["Manteiga com Sal Aviação Pote 200g", "8.25", "Frios Laticinios", false],
    ["Manteiga com Sal Aviação Pote 500g", "19.49", "Frios Laticinios", false],
    [
      "Manteiga com Sal Isigny Ste Mère Pote 250g",
      "32.50",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga Com Sal Member's Mark Pote 500g",
      "18.99",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga com Sal Zero Lactose Piracanjuba Pote 200g",
      "11.50",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga Comum com Sal Itacolomy Pote 500g",
      "17.29",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga Comum com Sal Veneza Pote 500g",
      "19.89",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga de Búfala com Sal Bom Destino Pote 500g",
      "19.79",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga de Primeira Qualidade com Sal Itambé Pote 500g",
      "18.99",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga de Primeira Qualidade com Sal Tina Pote 500g",
      "17.99",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga de Primeira Qualidade com Sal Tirol Pote 500g",
      "15.99",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga Extra com Sal Batavo Pote 200g",
      "7.99",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga Extra com Sal Batavo Pote 500g",
      "21.79",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga Extra com Sal Gran Mestri Lata 200g",
      "10.49",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga Extra com Sal Président Gastronomique Pote 200g",
      "10.29",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga Extra com Sal Qualy Pote 500g",
      "19.90",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga Extra com Sal Zero Lactose Gran Mestri Pote 200g",
      "13.29",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga Extra sem Sal Gran Mestri Lata 200g",
      "10.49",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga Extra sem Sal Président Gastronomique Pote 200g",
      "8.85",
      "Frios Laticinios",
      false
    ],
    [
      "Manteiga Italiana Sem Sal Burro Soresina Pote 250G",
      "39.90",
      "Frios Laticinios",
      false
    ],
    ["Manteiga sem Sal Aviação Pote 200g", "8.39", "Frios Laticinios", false],
    ["Manteiga sem Sal Batavo Pote 200g", "7.99", "Frios Laticinios", false],
    [
      "Margarina com Sal Primor Forno e Fogão Pack com 4 Unidades 100g Cada",
      "6.99",
      "Frios Laticinios",
      false
    ],
    [
      "Margarina Cremosa com Sal Qualy Qmix Pote 500g",
      "5.99",
      "Frios Laticinios",
      false
    ],
    [
      "Massa para Lasanha e Canelone Dona Thereza 500g",
      "9.99",
      "Frios Laticinios",
      false
    ],
    [
      "Massa para Lasanha Member's Mark Pacote 500g",
      "10.79",
      "Frios Laticinios",
      false
    ],
    [
      "Mortadela com Azeitona Perdigão Ouro Pacote 200g",
      "7.49",
      "Frios Laticinios",
      false
    ],
    [
      "Mortadela Defumada Perdigão Ouro Pacote 200g",
      "6.99",
      "Frios Laticinios",
      false
    ],
    [
      "Peito de Peru Defumado e Cozido Sadia Soltíssimo Pacote 200g",
      "10.59",
      "Frios Laticinios",
      false
    ],
    [
      "Petit Suisse Morango Danoninho Pack com 2 Unidades 320g Cada",
      "5.99",
      "Frios Laticinios",
      false
    ],
    [
      "Polenguinho Light Pack com 16 Unidades 34g Cada",
      "33.99",
      "Frios Laticinios",
      false
    ],
    [
      "Presunto Cozido Fatiado Perdigão Pacote 200g",
      "6.89",
      "Frios Laticinios",
      false
    ],
    [
      "Presunto Cozido Fatiado Sadia Pacote 200g",
      "8.69",
      "Frios Laticinios",
      false
    ],
    [
      "Presunto Cozido sem Capa de Gordura Boua Pacote 200g",
      "7.99",
      "Frios Laticinios",
      false
    ],
    [
      "Presunto Cru e Queijo Tortellini Pacote 250g",
      "25.79",
      "Frios Laticinios",
      false
    ],
    [
      "Presunto Cru Fatiado Sadia Speciale Pacote 80g",
      "22.10",
      "Frios Laticinios",
      false
    ],
    ["Presunto Fatiado Seara Pacote 200g", "5.90", "Frios Laticinios", false],
    [
      "Presunto Parma Fatiado Sadia Pacote 100g",
      "22.90",
      "Frios Laticinios",
      false
    ],
    [
      "Presunto Serrano Fatiado Haciendas Reserva Pacote 100g",
      "28.79",
      "Frios Laticinios",
      false
    ],
    [
      "Presunto Serrano Fatias Extras Finas Haciendas Reserva Pacote 100g",
      "26.89",
      "Frios Laticinios",
      false
    ],
    [
      "Pudim Leite Condensado Congelado Mr. Bey Sobremesas Premium Caixa 360g 4 Unidades",
      "17.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Azul Président Le Blue Pacote 150g",
      "8.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Brie Au Bleu Ile de France Pote 125g",
      "29.50",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Brie Ile de France Pacote 125g com 5 Unidades",
      "38.99",
      "Frios Laticinios",
      false
    ],
    ["Queijo Brie Ile de France Pote 125g", "28.99", "Frios Laticinios", false],
    ["Queijo Brie Président Pacote 125g", "23.29", "Frios Laticinios", false],
    [
      "Queijo Burrata de Búfala Bom Destino Pote 200g",
      "18.29",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Camembert Ile de France Pote 125g",
      "28.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Camembert Intense Sélection Polenghi Caixa 220g",
      "26.50",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Camembert Président Pacote 125g",
      "23.29",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Cottage Lacfree Verde Campo Pote 200g",
      "11.59",
      "Frios Laticinios",
      false
    ],
    ["Queijo Cottage Tirolez Pote 400g", "16.29", "Frios Laticinios", false],
    [
      "Queijo Cream Cheese Light Danubio 300g",
      "8.89",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Cream Cheese Light Polenghi Pote 300g",
      "8.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Cream Cheese Tradicional Danubio 300g",
      "8.89",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Cream Cheese Tradicional Polenghi Pote 300g",
      "8.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo de Coalho Espeto Ipanema 7 Unidades",
      "17.20",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Emmental Fracionado Vigor Pacote 145g",
      "8.89",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Frescal Ultrafiltrado Light Polenghi Frescatino Pack com 2 Unidades 250g Cada",
      "27.49",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Frescal Ultrafiltrado Light Polenghi Pote 400g",
      "12.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Frescal Ultrafiltrado Polenghi Pote 400g",
      "12.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Gorgonzola Fracionado Vigor Pacote 100g",
      "4.58",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Gouda Fatiado Holland Kroon Plástico 90g",
      "9.90",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Gouda Holândes com Ervas Garden Herbs Plástico 150g",
      "29.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Gouda Holandês com Pimenta Holland Kroon Plástico 150g",
      "31.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Gouda Ralado Vigor Pacote 150g",
      "12.89",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Gouda Rembrandt Plástico 200g",
      "44.99",
      "Frios Laticinios",
      false
    ],
    ["Queijo Gruyère Vigor Pacote 145g", "8.99", "Frios Laticinios", false],
    [
      "Queijo Italiano Grana Padano Gran Soresina Latteria Soresina Bandeja 125g",
      "29.90",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Maasdam Fatiado Holland Kroon Bandeja 90g",
      "16.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Minas Frescal Búfala Bom Destino 500g",
      "17.45",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Minas Frescal Fazenda Bela Vista 500g",
      "14.95",
      "Frios Laticinios",
      false
    ],
    ["Queijo Minas Padrão Tirolez 500g", "24.95", "Frios Laticinios", false],
    [
      "Queijo Mussarela de Búfala Bom Destino Pote 250g",
      "17.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Mussarela de Búfala Fatiado Bom Destino Bandeja 150g",
      "11.89",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Mussarela Fatiado Latelli Aprox. 800g",
      "29.52",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Mussarela Fatiado Piracanjuba Pacote 150g",
      "6.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Mussarela Fatiado Piracanjuba Pacote 500g",
      "22.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Mussarela Fatiado Tirol Bandeja 400g",
      "13.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Mussarela Light Tirolez Pacote 150g",
      "8.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Mussarela Light Zero Lactose Tirolez Pacote 150g",
      "8.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Mussarela Member's Mark Fatias 200g",
      "7.89",
      "Frios Laticinios",
      false
    ],
    ["Queijo Mussarela Tirolez Pacote 150g", "7.40", "Frios Laticinios", false],
    [
      "Queijo Parmesão Fatiado Faixa Azul Pacote 300g",
      "45.89",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Parmesão Lascas Faixa Azul 150g",
      "16.20",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Parmesão Ralado Faixa Azul Pacote 100g",
      "9.49",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Parmesão Ralado Gran Mestri Pacote 500g",
      "35.49",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Parmesão Ralado Gran Mestri pacote com 3 unidades 100g cada",
      "22.59",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Parmesão Ralado Vigor Pacote 150g",
      "12.89",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Parmesão Ralado Vigor Pacote 1kg",
      "59.49",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Parmesão Reserva Especial Faixa Azul Caixa 205g",
      "27.79",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Parmigiano Reggiano Gran Soresina Pacote 125g",
      "39.90",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Pecorino Romano Ralado Rar Importados Pacote 100G",
      "14.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Petit Suisse Morango Chambinho Bandeja 320g com 8 Unidades",
      "5.59",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Prato Fatiado Piracanjuba Pacote 150g",
      "6.98",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Prato Fatiado Tirol Bandeja 400g",
      "13.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Prato Fatiado Tirolez Pacote 150g",
      "7.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Prato Lanche Ipanema Peça 500g",
      "15.00",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Prato Member's Mark Fatias 200g",
      "7.89",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Provolone Curado Defumado Tirolez 300g",
      "17.97",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Ralado 3 Queijos Vigor Pacote 150g",
      "24.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Sabor Original Polenguinho Pack com 24 Unidades 17g Cada",
      "17.99",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Tipo Grana Lascas Gran Formaggio Pacote 300g",
      "37.50",
      "Frios Laticinios",
      false
    ],
    [
      "Queijo Tipo Grana Ralado Gran Formaggio Pacote 100g",
      "13.99",
      "Frios Laticinios",
      false
    ],
    ["Ravióli 4 Queijos Rana Sachê 250g", "25.69", "Frios Laticinios", false],
    [
      "Ravióli Abóbora com Cebolas Grelhadas Rana Gioiaverde Sachê 250g",
      "28.90",
      "Frios Laticinios",
      false
    ],
    [
      "Ravióli Alcachofra Rana Gioiaverde Sachê 250g",
      "28.90",
      "Frios Laticinios",
      false
    ],
    [
      "Ravióli Cogumelo Porcini e Champignon Rana Sachê 250g",
      "25.69",
      "Frios Laticinios",
      false
    ],
    [
      "Ravióli Frango e Alecrim Rana Sachê 250g",
      "25.69",
      "Frios Laticinios",
      false
    ],
    [
      "Ravióli Ricota e Espinafre Rana Sachê 250g",
      "25.69",
      "Frios Laticinios",
      false
    ],
    [
      "Requeijão Cremoso Cheddar Catupiry 250g",
      "10.99",
      "Frios Laticinios",
      false
    ],
    [
      "Requeijão Cremoso Light Catupiry 500g",
      "12.49",
      "Frios Laticinios",
      false
    ],
    [
      "Requeijão Cremoso Light Member's Mark Pote 500g",
      "10.90",
      "Frios Laticinios",
      false
    ],
    [
      "Requeijão Cremoso Member's Mark Pote 500g",
      "10.90",
      "Frios Laticinios",
      false
    ],
    [
      "Requeijão Cremoso Original Catupiry 250g",
      "10.89",
      "Frios Laticinios",
      false
    ],
    [
      "Requeijão Cremoso Original Catupiry 410g",
      "17.99",
      "Frios Laticinios",
      false
    ],
    [
      "Requeijão Cremoso Original Profissional Catupiry 1.5kg",
      "46.99",
      "Frios Laticinios",
      false
    ],
    [
      "Requeijão Cremoso Tradicional Catupiry 500g",
      "12.49",
      "Frios Laticinios",
      false
    ],
    [
      "Requeijão Cremoso Tradicional Tirol Pote 500g",
      "11.99",
      "Frios Laticinios",
      false
    ],
    [
      "Requeijão Cremoso Zero Lactose Gran Mestri Pack 2 Unidades 180g cada",
      "18.90",
      "Frios Laticinios",
      false
    ],
    [
      "Requeijão de Búfala Bom Destino Pote 400g",
      "19.39",
      "Frios Laticinios",
      false
    ],
    [
      "Rondele Recheado de Presunto e Queijo Romanha Pacote 500g",
      "10.90",
      "Frios Laticinios",
      false
    ],
    [
      "Rondelli Espinafre. Mussarela e Requeijão Dona Thereza 400g",
      "15.89",
      "Frios Laticinios",
      false
    ],
    [
      "Rondelli Mussarela de Búfala com Manjericão + Molho Branco Dona Thereza 600g",
      "21.59",
      "Frios Laticinios",
      false
    ],
    [
      "Rondelli Presunto e Queijo Dona Thereza 400g",
      "14.89",
      "Frios Laticinios",
      false
    ],
    [
      "Salame Espanhol Haciendas Pacote 100g",
      "21.39",
      "Frios Laticinios",
      false
    ],
    [
      "Salame Hamburguês Fatiado Sadia Pacote 100g",
      "12.90",
      "Frios Laticinios",
      false
    ],
    [
      "Salame Hamburguês Fatiado Seara Pacote 100g",
      "8.29",
      "Frios Laticinios",
      false
    ],
    [
      "Salame Hamburguês Haciendas Reserva Pacote 100g",
      "23.39",
      "Frios Laticinios",
      false
    ],
    [
      "Salame Italiano com Borda Temperada Pimenta Seara Pacote 100g",
      "9.99",
      "Frios Laticinios",
      false
    ],
    [
      "Salame Italiano Fatiado Sadia Pacote 100g",
      "12.99",
      "Frios Laticinios",
      false
    ],
    [
      "Salame Italiano Fatiado Seara Pacote 100g",
      "8.90",
      "Frios Laticinios",
      false
    ],
    [
      "Salame Pepperoni Fatiado Sadia Pacote 100g",
      "12.99",
      "Frios Laticinios",
      false
    ],
    ["Salame Perdigão Peça 1kg", "55.90", "Frios Laticinios", false],
    [
      "Salsicha Hot-Dog Sadia Pacote 500g com 10 Unidades",
      "11.90",
      "Frios Laticinios",
      false
    ],
    [
      "Salsicha Tradicional Seara Pacote 500g",
      "8.89",
      "Frios Laticinios",
      false
    ],
    [
      "Salsicha Viena Tradicional Perdigão Ouro Pacote 330g",
      "9.99",
      "Frios Laticinios",
      false
    ],
    [
      "Shot Diário Probióticos Tradicional Activia Pack com 6 Unidades 100g Cada",
      "12.99",
      "Frios Laticinios",
      false
    ],
    [
      "Sobremesa Chocolate ao Leite Danette com 12 Unidades",
      "15.99",
      "Frios Laticinios",
      false
    ],
    [
      "Sobremesa Chocolate Chandelle Pack com 8 Unidades 90g Cada",
      "11.79",
      "Frios Laticinios",
      false
    ],
    [
      "Sobremesa Láctea Chocolate ao Leite Danette Bandeja Pack com 12 Unidades 1.08kg",
      "16.89",
      "Frios Laticinios",
      false
    ],
    [
      "Sobremesa Láctea Pudim de Leite Condensado Batavo Delícias do Forno Pote 200g 2 Unidades",
      "5.19",
      "Frios Laticinios",
      false
    ],
    ["Tagliatelle Mezzani Pacote 500g", "5.99", "Frios Laticinios", false],
    ["Talharim Mezzani 500g", "5.49", "Frios Laticinios", false],
    [
      "Tortelloni Espinafre Rana Gioiaverde Sachê 250g",
      "29.99",
      "Frios Laticinios",
      false
    ],
    [
      "Bala Beijos Fini Caixa com 12 Unidades de 15g Cada",
      "7.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Beijos Fini Caixa com 12 Unidades de 15g Cada",
      "7.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Butter Toffees Chocolate Arcor Pacote 500g",
      "11.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Butter Toffees Chocolate Arcor Pacote 500g",
      "11.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Butter Toffees Leite Arcor Pacote 500g",
      "11.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Butter Toffees Leite Condensado Arcor Pacote 500g",
      "11.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Butter Toffees Leite Condensado Arcor Pacote 500g",
      "11.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bala de Gelatina Ursinhos Mini Fini com Caixa com 12 Unidades de 15g Cada",
      "7.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bala de Gelatina Ursinhos Mini Fini com Caixa com 12 Unidades de 15g Cada",
      "7.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bala de Goma Gomets Frutas Dori Pack 960g com 30 Unidades",
      "13.90",
      "Doces Biscoito",
      false
    ],
    [
      "Bala de Goma Sortida Gomets Gum Drops `Pacote 1kg",
      "10.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Dentaduras Fini Caixa com 12 Unidades de 15g Cada",
      "7.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Dentaduras Fini Caixa com 12 Unidades de 15g Cada",
      "7.99",
      "Doces Biscoito",
      false
    ],
    ["Bala Framboesa 7 Belo Pacote 600g", "8.98", "Doces Biscoito", false],
    [
      "Bala Fruit-tella Zero Açúcar Strawberry Cream Caixa 19.8g",
      "24.49",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Fruta Sortida Sweet Originals Pote 966g",
      "49.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Halls Cereja Pack com 21 Unidades",
      "17.98",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Halls Extra Forte Pack com 21 Unidades",
      "17.98",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Halls Mini Mentol Pack com 18 Unidades",
      "25.98",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Mastigável Paçoquita Santa Helena Pacote 700g",
      "13.50",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Menta Mentos Pack com 16 Unidades",
      "24.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Recheada de Mel Arcor Pacote 600g",
      "12.98",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Recheada de Mel Arcor Pacote 600g",
      "12.98",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Skittles Wild Berry Pacote 38g com 14 Unidades",
      "23.98",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Sortida Rainbow Mentos Pack com 16 Unidades 38g Cada",
      "24.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Tubes Ácido Fini Caixa com 12 Unidades de 17g Cada",
      "7.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Tubes Ácido Fini Caixa com 12 Unidades de 17g Cada",
      "7.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bala Yogurte 100 Frutas Vermelhas Dori 600g",
      "7.49",
      "Doces Biscoito",
      false
    ],
    [
      "Bananada com Açúcar Fazendinha Caixa com 24 Unidades 30g Cada",
      "25.98",
      "Doces Biscoito",
      false
    ],
    [
      "Bananada Zero Açúcar Fazendinha Pack 32 Unidades 23g Cada",
      "42.98",
      "Doces Biscoito",
      false
    ],
    [
      "Barra Chocolate ao Leite Milky Sticky Member's Mark Pack com 16 Unidades 12.5g Cada",
      "18.98",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Cereal Avelã + Nibs de Cacau Zero Açúcares &Joy Caixa 12 Unidades de 25g Cada",
      "29.99",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Cereal Banana + Damasco + Nozes Zero Açúcares &Joy Caixa 12 Unidades de 25g Cada",
      "29.99",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Cereal Banana com Cobertura de Chocolate Supino Caixa 16 Unidades de 24g Cada",
      "21.98",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Cereal Castanhas e Frutas NutsBar Banana Brasil Caixa 12 Unidades de 25g Cada",
      "29.98",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Cereal Castanhas e Frutas NutsBar Banana Brasil Caixa 12 Unidades de 25g Cada",
      "29.98",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Cereal Castanhas e Sementes NutsBar Banana Brasil Caixa 12 Unidades de 25g Cada",
      "29.98",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Cereal Castanhas. Coco e Nibs de Cacau NutsBar Banana Brasil Caixa 12 Unidades de 25g Cada",
      "29.98",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Cereal Cranberry &Joy Caixa 12 Unidades de 30g Cada",
      "29.99",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Cereal Cranberry &Joy Caixa 12 Unidades de 30g Cada",
      "29.99",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Cereal Nozes e Canela Mixed Nuts Agtal Caixa 12 Unidades de 30g Cada",
      "29.99",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Cereal Original Mixed Nuts Agtal Caixa 12 Unidades de 30g Cada",
      "29.99",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Cereal Proteica Coco + Amêndoa &Joy Caixa 12 Unidades de 35g Cada",
      "44.98",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Cereal Sementes Mixed Nuts Agtal Caixa 12 Unidades de 30g Cada",
      "29.99",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Chocolate ao Leite Gold Sicao Pacote 1.01kg",
      "32.78",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Chocolate ao Leite Lindt Lindor Pack com 2 Unidades 100g Cada",
      "44.98",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Chocolate ao Leite Member's Mark 300g",
      "24.99",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Chocolate com Avelãs Schogetten Pack com 3 Unidades 100gr Cada",
      "29.90",
      "Doces Biscoito",
      false
    ],
    [
      "Barra de Chocolate Meio Amargo Member's Mark 300g",
      "24.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Amanteigado Collection Santa Edwiges Lata Lata 150g",
      "17.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Amanteigado Santa Edwiges Laço Lata 150g",
      "18.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Amanteigado Santa Edwiges Laço Lata 150g",
      "18.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Amanteigado Santa Jacobsens Lata 680g",
      "64.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Amanteigado Santa Jacobsens Lata 680g",
      "64.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Amanteigado Tradicional Marilan Pacote 330g",
      "8.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Amanteigado Winter Woodland Jacobsens Bakery Lata 400g",
      "36.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Amanteigado Winter Woodland Jacobsens Bakery Lata 400g",
      "36.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Champanhe Member's Mark Pacote 500g",
      "18.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Chocolate Oreo Pack 8 Unidades 36g cada",
      "9.89",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Cobertura Chocolate Amargo Petit Beurre Griesson Caixa 150g",
      "12.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Cookie Bauducco Original Pack 3 Unidades 100g cada",
      "13.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Cookie Bauducco Original Pack 3 Unidades 100g cada",
      "13.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito de Baunilha Member's Mark Pacote 400g",
      "12.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito De Chocolate Petit-Beurre Griesson Caixa 150g",
      "12.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito de Chocolate Recheio Baunilha Oreo Pack com 3 Unidades 90g Cada",
      "7.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito de Leite Marilan Pacote com 3 Unidades 400g",
      "4.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito de Polvilho Salgado Member's Mark Pacote 300g",
      "9.79",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Doce Rosquinhas Sabor Coco Mabel Pacote 900g Pacote Família",
      "7.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Integral Cacau. Aveia e Mel Bauducco Cereale Pack com 3 Unidades 170g Cada",
      "8.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Integral Club Social Pacote 288g",
      "7.49",
      "Doces Biscoito",
      false
    ],
    ["Biscoito Lata Emojii 267g", "16.99", "Doces Biscoito", false],
    [
      "Biscoito Maria Leite Marilan Pacote 700g",
      "7.99",
      "Doces Biscoito",
      false
    ],
    ["Biscoito Maria Marilan Pacote 400g", "3.99", "Doces Biscoito", false],
    ["Biscoito Marilan Maizena Pacote 400g", "4.99", "Doces Biscoito", false],
    [
      "Biscoito Marilan Mini Maisena Pacote 350g",
      "5.79",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Mini Oreo Pack com 10 Unidades 35g Cada",
      "15.98",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Minipretzel Salinis sem Glúten Zero Lactose Schär Pacote  60g",
      "12.98",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Minipretzel Salinis sem Glúten Zero Lactose Schär Pacote  60g",
      "12.98",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Original Club Social Pacote 288g Embalagem Econômica",
      "7.49",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Pastel de Queijo com Goiaba Sequilhos Tentação Pote 500g",
      "18.59",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Queijo Suíço Bon Gouter Caixa 100g",
      "4.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Recheado com Chocolate Delicious Chocolate Member's Mark Pacote 225g",
      "14.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Recheado com Chocolate Delicious Chocolate Member's Mark Pacote 225g",
      "14.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Recheio Creme de Iogurte Gullón Diet Nature Caixa 220g",
      "22.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Salgado Importado Original Salted Dux Pacote com 9 Unidades 216g",
      "12.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Tipo Mini Churros Assado e Crocante com Doce de Leite Caixa 290g",
      "24.98",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoito Wafer Cacau sem Glúten Schär Pacote 125g",
      "19.48",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoitos Amanteigados Bakery Danesita Short Bread Caixa 250g",
      "24.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoitos Amanteigados Bakery Danesita Short Bread Caixa 250g",
      "24.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoitos Amanteigados Jacobsens Bakery Lata 150g",
      "16.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoitos Amanteigados Sortidos Bakery Danesita Caixa 200g",
      "12.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoitos Banana e Chocolate Old Denmark Lata 150g",
      "16.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoitos de Chocolate Borggreve Caixa 300gr",
      "13.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoitos de Chocolate Borggreve Caixa 300gr",
      "13.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoitos Sortidos Special Moments Pastelaria Dan Cake 200g",
      "13.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoitos Sortidos Special Moments Pastelaria Dan Cake 200g",
      "13.99",
      "Doces Biscoito",
      false
    ],
    [
      "Biscoitos tipo Wafer Geback Hans Freitag Mischung Pacote 500g",
      "19.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bolinha Doce de Leite com Coco Flormel Caixa com 18 Unidades 10g cada",
      "34.98",
      "Doces Biscoito",
      false
    ],
    ["Bombom Collection Witor's Pacote 450g", "42.99", "Doces Biscoito", false],
    [
      "Bombom com Recheio Cremoso e Cobertura de Chocolate Lacta Sonho de Valsa Pacote 1kg",
      "33.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bombom com Recheio de Chocolate e Cobertura de Chocolate Branco Lacta Ouro Branco Pacote 1kg",
      "33.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bombom com Recheio de Pistache Solidanorsc Caixa 400g",
      "34.98",
      "Doces Biscoito",
      false
    ],
    ["Bombom Crispy Witor's Pacote 1kg", "84.99", "Doces Biscoito", false],
    ["Bombom Crispy Witor's Pacote 1kg", "84.99", "Doces Biscoito", false],
    [
      "Bombom de Chocolate Sortidos Jacques Premium Caixa  500g",
      "56.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bombom Ferrero Rocher  Caixa 12 Unidades",
      "28.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bombom Ferrero Rocher  Caixa 12 Unidades",
      "28.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bombom Maxi Assortiti Sorini Itália Pacote 700g",
      "54.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bombom Maxi Assortiti Sorini Itália Pacote 700g",
      "54.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bombom Nestlé Especialidades Caixa com 15 Unidades 251g",
      "10.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bombom Sortido Garotices Garoto Caixa 250g",
      "10.50",
      "Doces Biscoito",
      false
    ],
    [
      "Bombom Sortido Garotices Garoto Caixa 250g",
      "10.50",
      "Doces Biscoito",
      false
    ],
    [
      "Bombom Sortido Lacta Favoritos Caixa 250.6g",
      "9.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bombons Seashells de Chocolate com Avelãs Donckels 500g",
      "36.90",
      "Doces Biscoito",
      false
    ],
    [
      "Bombons Secrets Solidarnosc Caixa 238g",
      "26.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bombons Secrets Solidarnosc Caixa 238g",
      "26.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bombons Sortidos de Chocolate Recheados Di Costa 150g",
      "17.99",
      "Doces Biscoito",
      false
    ],
    [
      "Bombons Sortidos Flormel Caixa com 12 Unidades 15gr Cada",
      "54.98",
      "Doces Biscoito",
      false
    ],
    [
      "Bombons Sortidos Jacques Pralines Caixa 125g",
      "19.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chiclete Morango Bubbaloo Adams Caixa com 60 Unidades",
      "8.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chiclete sem Açúcar Fini Pack 12 Unidades 18g Cada",
      "28.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chiclete Tutti Frutti Bubbaloo Adams Caixa com 60 Unidades",
      "8.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Amargo com Recheio Caramelo Royal Thins Sea Salt Caixa 300g",
      "25.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Amargo com Recheio Caramelo Royal Thins Sea Salt Caixa 300g",
      "25.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Amargo com Recheio Menta Royal Mints Caixa 300g",
      "25.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Amargo Excellence Lindt Pack com 2 Unidades 100g Cada",
      "41.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Amargo Jacques Pack com 2 Unidades 200g Cada",
      "44.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Amargo Swiss Alps Dark Tablete 300g",
      "29.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate ao Leite Bis Lacta Pack 3 Unidades 126g Cada",
      "9.88",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate ao Leite Bis Xtra Pack com 15 Unidades 45g Cada",
      "34.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate ao Leite com Amêndoas e Caramelo Crocante Hershey's Symphony Pacote 192g",
      "24.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Ao Leite com Amêndoas Planalto Caixa 10 Unidades 230g",
      "26.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Ao Leite com Amêndoas Planalto Caixa 10 Unidades 230g",
      "26.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate ao leite com Amendoim Shot Lacta Pack com 20 Unidades",
      "26.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate ao Leite com Amendoim Shot Pacote 165g Tamanho Família",
      "7.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate ao Leite Diamante Negro Pacote 165g Tamanho Família",
      "8.49",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate ao Leite em Barra Diamante Negro Lacta Pack com 20 Unidades 20g Cada",
      "26.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate ao Leite em Barra Diamante Negro Lacta Pack com 20 Unidades 20g Cada",
      "26.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate ao Leite Jacques Pack 2 Unidades 200g Cada",
      "44.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate ao Leite Lacta Pacote 165g Tamanho Família",
      "8.49",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate ao Leite Língua de Gato Sarotti Pack com 2 Unidades 100g Cada",
      "32.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate ao Leite Meninos Kinder Ovo Pack com 2 Unidades 20g Cada",
      "13.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate ao Leite Nougat de Mel e Amêndoas Toblerone Pacote 360g",
      "37.48",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Ao Leite Planalto Caixa 10 Unidades 230g",
      "26.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate ao Leite Recheio Creme de Amendoim Reese's Pacote 192g",
      "24.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate ao Leite Recheio Cremoso Lindt Lindor Caixa 200g",
      "69.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate ao Leite Swiss Alps Tablete 300g",
      "29.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Baton Duobranco Pack com 30 Unidades 16g Cada",
      "27.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Branco Baton Garoto Pack com 30 Unidades 16g Cada",
      "27.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Branco Bis Lacta Pack com 3 Unidades",
      "9.88",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Branco Bis Xtra Oreo Pack com 15 Unidades 45g Cada",
      "34.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Branco Bis Xtra Oreo Pack com 15 Unidades 45g Cada",
      "34.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Branco Laka Lacta Pack com 20 Unidades 20g Cada",
      "26.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Branco Laka Lacta Pack com 20 Unidades 20g Cada",
      "26.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Caramel Sea Salt Lindt Pack 2 Unidades 100g Cada",
      "41.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Caramel Sea Salt Lindt Pack 2 Unidades 100g Cada",
      "41.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Caramelo 5 Star Lacta Pack com 18 Unidades 40g Cada",
      "32.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate com Amêndoa Jacques Premium Pack com 2 Unidades 200g Cada",
      "44.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate com Recheio de Mousse de Chocolate Jacques Pack com 2 Unidades 160g Cada",
      "39.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Dark Lindt Pack 2 Unidades 100g Cada",
      "41.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Dark Schogetten Pack com 3 Unidades 100g Cada",
      "29.90",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate em Barra Cookie & Cream Maxilicious Chocofun 300g",
      "19.90",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate em Barra Peanut Caramel Crisp Maxilicious Chocofun 295g",
      "22.90",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Extra Dark Lindt Pack 2 Unidades 100g Cada",
      "41.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Fines Belgian Callebaut Pacote 400g",
      "42.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Laka Oreo Pack com 20 Unidades 20g Cada",
      "26.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Laka Oreo Pack com 20 Unidades 20g Cada",
      "26.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Língua de Gato Member's Mark Pack com 2 Unidades com 100g Cada",
      "32.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Língua de Gato Member's Mark Pack com 2 Unidades com 100g Cada",
      "32.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate M&Ms Amendoim Pack com 18 Unidades 45g Cada",
      "46.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate M&Ms Amendoim Pack com 18 Unidades 45g Cada",
      "46.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate M&Ms Pack com 18 Unidades 45g Cada",
      "44.98",
      "Doces Biscoito",
      false
    ],
    ["Chocolate Meio Amargo Nestlé 1kg", "26.96", "Doces Biscoito", false],
    [
      "Chocolate Meio Amargo Sicao Gold Pacote 1.01kg",
      "39.78",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Napolitano Sortido Swiss Alps Pacote 1kg",
      "98.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Schoko Baren Sarotti Pack com 2 Unidades 100g Cada",
      "22.90",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Snickers Caixa 21.5g com 18 Unidades",
      "17.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Suíço ao Leite com Avelãs Inteiras Lindt Swiss Premium Cartucho 300g",
      "69.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Suíço ao Leite Lindt Swiss Premium Cartucho 300g",
      "69.98",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Tortuguita Brigadeiro e Baunilha Arcor Pack com 24 Unidades 28g Cada",
      "24.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Tortuguita Brigadeiro e Baunilha Arcor Pack com 24 Unidades 28g Cada",
      "24.99",
      "Doces Biscoito",
      false
    ],
    [
      "Chocolate Tortuguita de Baunilha Arcor Pack com 24 Unidades 28g Cada",
      "24.99",
      "Doces Biscoito",
      false
    ],
    ["Chocolates Mentirinha Katz 270g", "25.98", "Doces Biscoito", false],
    ["Cocada Cuida Bem 480g", "62.98", "Doces Biscoito", false],
    [
      "Cocada Zero Flormel Caixa com 24 Unidades 25g Cada",
      "56.98",
      "Doces Biscoito",
      false
    ],
    [
      "Cookie Integral Cacau a Avelã Bauducco Pack com 12 Unidades 40g Cada",
      "26.99",
      "Doces Biscoito",
      false
    ],
    [
      "Cookies Amanteigados Jacobsens Tivoli  Lata 150g",
      "19.99",
      "Doces Biscoito",
      false
    ],
    ["Cookies Chip Chocolate Dan Cake 200g", "14.99", "Doces Biscoito", false],
    ["Cookies Chip Chocolate Dan Cake 200g", "14.99", "Doces Biscoito", false],
    [
      "Creme de Avelã com Cacau Nutella Pote 650g",
      "32.50",
      "Doces Biscoito",
      false
    ],
    [
      "Creme de Avelã Crocante Ovomaltine Pote 660g",
      "39.99",
      "Doces Biscoito",
      false
    ],
    [
      "Doce de Amendoim Gibi Santa Helena Pacote 1.5kg",
      "23.99",
      "Doces Biscoito",
      false
    ],
    [
      "Doce de Amendoim Gibi Santa Helena Pacote 1.5kg",
      "23.99",
      "Doces Biscoito",
      false
    ],
    [
      "Doce de Leite La Serenissima Pote 400g",
      "29.98",
      "Doces Biscoito",
      false
    ],
    ["Doce de Leite Los Nietitos Vidro 780g", "44.99", "Doces Biscoito", false],
    ["Doce de Leite Vacalin Pote 800g", "27.00", "Doces Biscoito", false],
    [
      "Duo Keks Kakao Biscoito de Chocolate Griesson Pacote 500g",
      "17.99",
      "Doces Biscoito",
      false
    ],
    ["Goiabada Cascão Alinutri 700g", "21.48", "Doces Biscoito", false],
    ["Goiabada Cascão Alinutri 700g", "21.48", "Doces Biscoito", false],
    ["Goiabada Cascão Ralston 800g", "8.38", "Doces Biscoito", false],
    ["Goiabada Ralston 800g", "7.88", "Doces Biscoito", false],
    ["Goma de Mascar Hortelã Chiclets 280g", "22.99", "Doces Biscoito", false],
    [
      "Goma de Mascar Mentos Pack 15 Unidades 6g Cada",
      "11.98",
      "Doces Biscoito",
      false
    ],
    [
      "Goma de Mascar Pure Fresh Mentos Pack com 2 Unidades 56g Cada",
      "13.98",
      "Doces Biscoito",
      false
    ],
    [
      "Goma de Mascar Sabor Hortelã Trident Pack com 21 Unidades 8g Cada",
      "24.98",
      "Doces Biscoito",
      false
    ],
    [
      "Goma de Mascar Sabor Menta Trident Pack com 21 Unidades 8g Cada",
      "24.98",
      "Doces Biscoito",
      false
    ],
    [
      "Goma de Mascar Sabor Menta Trident Pack com 21 Unidades 8g Cada",
      "24.98",
      "Doces Biscoito",
      false
    ],
    [
      "Goma de Mascar sem Açúcar Pure Fresh Mentos Pack com 15 Unidades 6g Cada",
      "11.98",
      "Doces Biscoito",
      false
    ],
    [
      "Goma de Mascar sem Açúcar Pure Fresh Mentos Pack com 15 Unidades 6g Cada",
      "11.98",
      "Doces Biscoito",
      false
    ],
    [
      "Goma de Mascar Trident Morango Pack com 21 Unidades 8g Cada",
      "24.98",
      "Doces Biscoito",
      false
    ],
    [
      "Goma de Mascar Zero Açúcar Pure Fruit Mentos Pack com 15 Unidades 127.5g Cada",
      "14.49",
      "Doces Biscoito",
      false
    ],
    [
      "Gotas de Chocolate Branco Belga Callebaut Pacote 400g",
      "45.98",
      "Doces Biscoito",
      false
    ],
    [
      "Gotas de Chocolate Meio Amargo 70.5% Cacau Callebaut Pacote 400g",
      "46.48",
      "Doces Biscoito",
      false
    ],
    ["Kit Kat Pop Choc Nestlé Sachê 140g", "19.98", "Doces Biscoito", false],
    ["Língua de Gato Sem Açúcar Katz 200g", "44.99", "Doces Biscoito", false],
    [
      "Mentos Pure Fresh Goma de Mascar Pack com 2 Unidades 56gr Cada",
      "13.98",
      "Doces Biscoito",
      false
    ],
    [
      "Mentos Pure Fruit Goma de Mascar Pack com 15 Unidades 6gr Cada",
      "11.98",
      "Doces Biscoito",
      false
    ],
    [
      "Mentos Pure Fruit Goma de Mascar Pack com 15 Unidades 6gr Cada",
      "11.98",
      "Doces Biscoito",
      false
    ],
    ["Mil Folhas Member's Mark Pacote 200g", "9.48", "Doces Biscoito", false],
    [
      "Mini Buster Cookies Lata Colecionável Santa Edwiges 300g",
      "21.99",
      "Doces Biscoito",
      false
    ],
    [
      "Mini Waflle Cobertura Chocolate ao Leite Bahlsen Pack com 2 Unidades 100g Cada",
      "32.98",
      "Doces Biscoito",
      false
    ],
    ["Paçoca de Rolha Paçoquita Pote 1.25kg", "28.99", "Doces Biscoito", false],
    [
      "Paçoca Zero Flormel Caixa com 24 Unidades 20g",
      "49.98",
      "Doces Biscoito",
      false
    ],
    [
      "Paçoquita com Chocolate Santa Helena Caixa 432g com 24 Unidades",
      "25.98",
      "Doces Biscoito",
      false
    ],
    [
      "Paçoquita Crocante Chocolate Santa Helena 360g com 24 Unidades",
      "19.99",
      "Doces Biscoito",
      false
    ],
    [
      "Paçoquita Diet Santa Helena Caixa 528g com 24 Unidades",
      "24.99",
      "Doces Biscoito",
      false
    ],
    [
      "Paçoquita Quadrada Santa Helena Caixa 1kg com 50 Unidades",
      "24.99",
      "Doces Biscoito",
      false
    ],
    ["Pão de Mel Dark Lambertz Caixa 500g", "23.99", "Doces Biscoito", false],
    [
      "Pão de Mel Schokoladen Lebkuchen Lambertz 500g",
      "22.99",
      "Doces Biscoito",
      false
    ],
    ["Pé de Moleque Santa Helena Pote 705g", "20.98", "Doces Biscoito", false],
    [
      "Pé de Moleque Sem Adição de Açúcar Chocolate Katz 300g",
      "39.99",
      "Doces Biscoito",
      false
    ],
    ["Pirulito Framboesa 7 Belo Pacote 600g", "8.98", "Doces Biscoito", false],
    ["Rosca Nata Minnas Pote 420g", "14.90", "Doces Biscoito", false],
    ["Rosca Nata Minnas Pote 420g", "14.90", "Doces Biscoito", false],
    [
      "Tubinhos Recheados com Chocolate Cream Lata 330g",
      "21.99",
      "Doces Biscoito",
      false
    ],
    [
      "Wafer Chocolate Bauducco Pack com 3 Unidades 140g Cada",
      "8.99",
      "Doces Biscoito",
      false
    ],
    [
      "Wafer Coberto com Chocolate Kinder Bueno Pack com 3 Unidades 43g Cada",
      "13.68",
      "Doces Biscoito",
      false
    ],
    [
      "Wafer Recheio Creme com Cacau Amandita Caixa 200g",
      "9.99",
      "Doces Biscoito",
      false
    ],
    [
      "Wafer Recheio Torrone de Avelã Cobertura Chocolate ao Leite First Class Bahlsen Pack com 2 Unidades 250g Cada",
      "48.79",
      "Doces Biscoito",
      false
    ],
    [
      "Wafer Sortido Hans Freitag Pacote 400g",
      "15.99",
      "Doces Biscoito",
      false
    ],
    ["Abacaxi em Calda Rodelas Schramm Lata 400g", "11.99", "Mercearia", false],
    [
      "Açafrão - Cúrcuma em Pó Member's Mark Vidro 190g",
      "16.99",
      "Mercearia",
      false
    ],
    [
      "Achocolatado em Pó Instantâneo Nescau 3.0 Nestlé Pacote 760g",
      "13.99",
      "Mercearia",
      false
    ],
    ["Achocolatado Em Pó Light Toddy 380g", "8.91", "Mercearia", false],
    ["Achocolatado em Pó Original Toddy 1.02kg", "12.99", "Mercearia", false],
    [
      "Achocolatado em Pó Original Toddy 2kg + Econômica",
      "18.99",
      "Mercearia",
      false
    ],
    ["Achocolatado Nescau 2.0 Nestlé 1.2kg", "15.98", "Mercearia", false],
    ["Achocolatado Ovomaltine 750g", "22.98", "Mercearia", false],
    [
      "Achocolatado Zero Açúcar Linea Pack com 2 Unidades 210g Cada",
      "19.82",
      "Mercearia",
      false
    ],
    [
      "Açúcar Confeiteiro Glaçúcar União Pacote 500g",
      "2.89",
      "Mercearia",
      false
    ],
    [
      "Açúcar Cristal Cristalçúcar Clássicos União Pacote 1kg",
      "3.19",
      "Mercearia",
      false
    ],
    [
      "Açúcar Cristal Especial Colombo Caravelas 1kg",
      "2.99",
      "Mercearia",
      false
    ],
    [
      "Açúcar Cristal Especial Colombo Caravelas 5kg",
      "14.99",
      "Mercearia",
      false
    ],
    ["Açúcar Cristal Native Orgânico Pacote 5kg", "18.99", "Mercearia", false],
    [
      "Açúcar Cristal Orgânico Native Pack com 50 Unidades 5g Cada",
      "5.99",
      "Mercearia",
      false
    ],
    ["Açúcar Cristal Safira Pacote 5kg", "13.50", "Mercearia", false],
    ["Açúcar Cristal União Orgânico Pacote 1kg", "5.79", "Mercearia", false],
    ["Açúcar de Coco Copra 350g", "27.99", "Mercearia", false],
    ["Açúcar Demerara Da Barra 1kg", "3.79", "Mercearia", false],
    ["Açúcar Demerara Native Orgânico Pacote 1kg", "4.39", "Mercearia", false],
    ["Açúcar Demerara Native Orgânico Pacote 5kg", "29.99", "Mercearia", false],
    ["Açúcar Demerara Naturale União Pacote 1kg", "4.79", "Mercearia", false],
    ["Açúcar Mascavo Docican Pacote 1kg", "7.69", "Mercearia", false],
    ["Açúcar Mascavo Native Orgânico Pacote 250g", "5.99", "Mercearia", false],
    ["Açúcar Mascavo União Pacote 1kg", "13.50", "Mercearia", false],
    ["Açúcar Refinado Doçúcar União Pacote 1kg", "4.19", "Mercearia", false],
    [
      "Açúcar Refinado Especial Alto Alegre Pacote 5kg",
      "14.99",
      "Mercearia",
      false
    ],
    ["Açúcar Refinado Especial Caravelas 1kg", "3.19", "Mercearia", false],
    ["Açúcar Refinado Especial União Pacote 1kg", "3.29", "Mercearia", false],
    ["Açúcar Refinado Granulado União Pacote 1kg", "4.79", "Mercearia", false],
    ["Açúcar Refinado Vida Pacote 1kg", "3.39", "Mercearia", false],
    [
      "Adoçante Culinário Forno & Fogão Linea Pacote 400g",
      "27.59",
      "Mercearia",
      false
    ],
    ["Adoçante em Pó Fit União Pacote 500g", "3.49", "Mercearia", false],
    [
      "Adoçante em Pó Linea Sucralose Caixa com 200 Envelopes 800mg Cada",
      "22.41",
      "Mercearia",
      false
    ],
    ["Adoçante em Pó Xilitol Linea Pacote 300g", "35.47", "Mercearia", false],
    [
      "Adoçante Líquido Sucralose Linea Pack com 2 Unidades 75ml Cada",
      "19.19",
      "Mercearia",
      false
    ],
    [
      "Adoçante Stevia Linea Pack com 2 Unidades 60ml Cada",
      "21.43",
      "Mercearia",
      false
    ],
    [
      "Alcaparra em Conserva Di Salerno Pack com 2 Unidades 90g Cada",
      "25.99",
      "Mercearia",
      false
    ],
    [
      "Alcaparra em Conserva Raiola Pack com 3 Unidades 65g",
      "23.99",
      "Mercearia",
      false
    ],
    ["Alecrim em Folhas Member's Mark Vidro 80g", "13.99", "Mercearia", false],
    [
      "Alho Desidratado Granulado Member's Mark Vidro 210g",
      "19.99",
      "Mercearia",
      false
    ],
    [
      "Amendoim Crocante Crokíssimo Santa Helena Pacote 1.01kg",
      "17.99",
      "Mercearia",
      false
    ],
    [
      "Amendoim Crocante Natural Pettiz Dori 1.010kg",
      "15.99",
      "Mercearia",
      false
    ],
    [
      "Amendoim Japonês Mendorato Santa Helena Pacote 1.010kg",
      "15.00",
      "Mercearia",
      false
    ],
    ["Amendoim Japonês Pettiz Dori 1.010kg", "15.99", "Mercearia", false],
    [
      "Amendoim Torrado e Salgado Agtal Pacote 450g",
      "14.98",
      "Mercearia",
      false
    ],
    [
      "Amendoim Torrado sem Pele Grelhaditos Santa Helena Pacote 1.010kg",
      "17.99",
      "Mercearia",
      false
    ],
    ["Amido de Milho Maizena Duryea Caixa 1kg", "18.99", "Mercearia", false],
    ["Arroz 7 Cereais Integral Ráris Pacote 1kg", "13.99", "Mercearia", false],
    ["Arroz 7 Grãos & Cenoura Ráris Pacote 1kg", "13.99", "Mercearia", false],
    ["Arroz 7 Grãos Integrais Ráris Pacote 1kg", "13.99", "Mercearia", false],
    [
      "Arroz Agulhinha Polido Biodinâmico Volkmann Pacote 1kg",
      "10.50",
      "Mercearia",
      false
    ],
    ["Arroz Arbório Divella 1kg", "19.99", "Mercearia", false],
    ["Arroz Arbório Scotti Caixa 1Kg", "19.99", "Mercearia", false],
    ["Arroz Arbório Tipo 1 La Pastina Caixa 1kg", "17.99", "Mercearia", false],
    ["Arroz Basmati Scotti Caixa 500g", "11.99", "Mercearia", false],
    [
      "Arroz Branco Camil Reserva Especial Pacote 5kg",
      "23.50",
      "Mercearia",
      false
    ],
    ["Arroz Branco Cristal 5kg", "22.48", "Mercearia", false],
    [
      "Arroz Branco Longo Fino Tipo 1 Tio João Pacote 5kg",
      "29.50",
      "Mercearia",
      false
    ],
    ["Arroz Branco Tipo 1 Biju Pacote 1kg", "5.79", "Mercearia", false],
    ["Arroz Branco Tipo 1 Camil 1kg", "4.49", "Mercearia", false],
    ["Arroz Branco Tipo 1 Camil 2kg", "8.39", "Mercearia", false],
    ["Arroz Branco Tipo 1 Camil 5kg", "19.48", "Mercearia", false],
    ["Arroz Branco Tipo 1 Namorado Pacote 5kg", "18.98", "Mercearia", false],
    ["Arroz Branco Tipo 1 Prato Fino Pacote 2kg", "10.50", "Mercearia", false],
    ["Arroz Branco Tipo 1 Prato Fino Pacote 5kg", "23.99", "Mercearia", false],
    [
      "Arroz Branco Tipo 1 Tio Urbano Seleção Especial Pacote 1kg",
      "4.69",
      "Mercearia",
      false
    ],
    ["Arroz Carnaroli Scotti Caixa 1Kg", "19.99", "Mercearia", false],
    [
      "Arroz Carnaroli Tipo 1 La Pastina Caixa 1kg",
      "18.99",
      "Mercearia",
      false
    ],
    [
      "Arroz Cateto Integral Orgânico Volkmann Pacote 1kg",
      "15.99",
      "Mercearia",
      false
    ],
    [
      "Arroz Cateto Polido Orgânico Volkmann Pacote 1kg",
      "15.99",
      "Mercearia",
      false
    ],
    [
      "Arroz Integral 7 Cereais + Soja Tio João Pacote 1kg",
      "11.99",
      "Mercearia",
      false
    ],
    ["Arroz Integral 7 Grãos Tio João Pacote 1kg", "10.99", "Mercearia", false],
    [
      "Arroz Integral Agulhinha Volkmann Orgânico Pacote 1kg",
      "10.50",
      "Mercearia",
      false
    ],
    ["Arroz Integral Camil 2kg", "9.79", "Mercearia", false],
    [
      "Arroz Integral Orgânico Cozido no Vapor Vapza Caixa 250g",
      "5.99",
      "Mercearia",
      false
    ],
    ["Arroz Integral Orgânico Tio João Pacote 1kg", "8.98", "Mercearia", false],
    ["Arroz Integral Prato Fino Pacote 2Kg", "9.99", "Mercearia", false],
    ["Arroz Integral Tio João Pacote 2kg", "12.50", "Mercearia", false],
    ["Arroz Japonês Scotti Caixa 500g", "7.99", "Mercearia", false],
    ["Arroz Japonês Tipo 1 Momiji Pacote 5kg", "32.50", "Mercearia", false],
    [
      "Arroz Negro Tipo 1 Integral La Pastina Caixa 500g",
      "15.99",
      "Mercearia",
      false
    ],
    [
      "Arroz para Risoto Tipo 1 La Pastina Caixa 1kg",
      "12.99",
      "Mercearia",
      false
    ],
    ["Arroz Parboilizado em Saquinhos Camil 1kg", "5.99", "Mercearia", false],
    [
      "Arroz Parboilizado Tipo 1 Buriti Pacote 5kg",
      "17.99",
      "Mercearia",
      false
    ],
    ["Arroz Parboilizado Tipo 1 Camil 1kg", "4.85", "Mercearia", false],
    ["Arroz Parboilizado Tipo 1 Camil 5kg", "20.50", "Mercearia", false],
    [
      "Arroz Parboilizado Tipo 1 Prato Fino Pacote 5kg",
      "23.99",
      "Mercearia",
      false
    ],
    [
      "Arroz Parboilizado Tipo 1 Seleção Especial Urbano Pacote 1kg",
      "4.39",
      "Mercearia",
      false
    ],
    [
      "Arroz Parboilizado Tipo 1 Tio João Pacote 5kg",
      "27.50",
      "Mercearia",
      false
    ],
    [
      "Arroz Vermelho Tipo 1 La Pastina Caixa 500g",
      "15.99",
      "Mercearia",
      false
    ],
    [
      "Atum Claro ao Natural Gomes da Costa Caixa 170g",
      "10.99",
      "Mercearia",
      false
    ],
    [
      "Atum em Pedaços ao Natural Gomes da Costa Pack com 3 Unidades 170g Cada",
      "27.99",
      "Mercearia",
      false
    ],
    [
      "Atum em Pedaços ao Óleo Gomes da Costa Pack com 3 Unidades 170g Cada",
      "27.99",
      "Mercearia",
      false
    ],
    [
      "Atum em Pedaços com Óleo de Girassol Di Salerno 475g",
      "35.99",
      "Mercearia",
      false
    ],
    [
      "Atum em Pedaços Conservas Natural Light Tours Pack com 2 Unidades 180g Cada",
      "25.99",
      "Mercearia",
      false
    ],
    [
      "Atum em Pedaços em Óleo Tours Pack com 2 Unidades 180g Cada",
      "26.99",
      "Mercearia",
      false
    ],
    [
      "Atum Ralado em Óleo Gomes da Costa Pack com 3 Unidades 130g Cada",
      "21.50",
      "Mercearia",
      false
    ],
    [
      "Atum Sólido ao Natural Gomes da Costa Pack com 3 Unidades 170g Cada",
      "28.99",
      "Mercearia",
      false
    ],
    [
      "Atum Sólido ao Natural Tours Pack 2 Unidades 180g Cada",
      "26.98",
      "Mercearia",
      false
    ],
    [
      "Atum Sólido Claro em Azeite de Oliva Gomes da Costa Caixa 170g",
      "10.99",
      "Mercearia",
      false
    ],
    [
      "Atum Sólido em Azeite de Oliva Tours Pack 2 Unidades 180g Cada",
      "33.99",
      "Mercearia",
      false
    ],
    [
      "Atum Sólido em Óleo Gomes da Costa Pack com 3 Unidades 120g Cada",
      "28.99",
      "Mercearia",
      false
    ],
    ["Aveia em Flocos Finos Da Magrinha 500g", "11.50", "Mercearia", false],
    ["Aveia em Flocos Finos Quaker Caixa 450g", "7.99", "Mercearia", false],
    ["Aveia em Flocos Quaker Caixa 450g", "7.99", "Mercearia", false],
    ["Aveia Flocos Grossos Da Magrinha 500g", "11.50", "Mercearia", false],
    [
      "Azeite de Oliva 100% Grego Member's Mark Garrafa 1l",
      "49.99",
      "Mercearia",
      false
    ],
    [
      "Azeite de Oliva Extra Virgem Andorinha Garrafa 1l",
      "40.99",
      "Mercearia",
      false
    ],
    [
      "Azeite de Oliva Extra Virgem Blend Europeu Member's Mark Garrafa 1L",
      "39.99",
      "Mercearia",
      false
    ],
    [
      "Azeite de Oliva Extra Virgem Ea Vidro 500ml",
      "64.98",
      "Mercearia",
      false
    ],
    [
      "Azeite de Oliva Extra Virgem Gourmet Pietro Coricelli Frasco 1l",
      "39.99",
      "Mercearia",
      false
    ],
    [
      "Azeite de Oliva Extra Virgem Herdade do Esporão 1267 Garrafa 750ml",
      "64.98",
      "Mercearia",
      false
    ],
    [
      "Azeite de Oliva Extra Virgem Pietro Coricelli Frasco 1l",
      "49.99",
      "Mercearia",
      false
    ],
    [
      "Azeite de Oliva Extravirgem Andorinha Garrafa 2l",
      "79.50",
      "Mercearia",
      false
    ],
    [
      "Azeite de Oliva Extravirgem Gallo Garrafa 750ml",
      "32.99",
      "Mercearia",
      false
    ],
    [
      "Azeite de Oliva Extravirgem Member's Mark Garrafa 1l",
      "34.99",
      "Mercearia",
      false
    ],
    [
      "Azeite de Oliva Extravirgem Member's Mark Garrafa 2l",
      "64.99",
      "Mercearia",
      false
    ],
    [
      "Azeite de Oliva Extravirgem Member's Mark Garrafa 3l",
      "89.99",
      "Mercearia",
      false
    ],
    [
      "Azeite de Oliva Extravirgem Orgânico Member's Mark Garrafa 1l",
      "44.99",
      "Mercearia",
      false
    ],
    [
      "Azeite de Oliva Extravirgem Pietro Coricelli Frasco 1l",
      "39.99",
      "Mercearia",
      false
    ],
    [
      "Azeite de Oliva Extravirgem Rahma Colheita Especial Garrafa 750ml",
      "49.98",
      "Mercearia",
      false
    ],
    [
      "Azeite de Oliva Extravirgem Rahma Garrafa 1l",
      "32.98",
      "Mercearia",
      false
    ],
    [
      "Azeite de Oliva Não Filtrado Extravirgem Olitalia Garrafa 1l",
      "42.99",
      "Mercearia",
      false
    ],
    [
      "Azeite Extravirgem Andorinha Seleção Garrafa 1l",
      "42.98",
      "Mercearia",
      false
    ],
    ["Azeitona Fatiada Member's Mark Vidro 460g", "17.98", "Mercearia", false],
    [
      "Azeitona Preta com Caroço Member's Mark Vidro 500g",
      "21.99",
      "Mercearia",
      false
    ],
    [
      "Azeitona Preta Fatiada Member's Mark Vidro 450g",
      "23.99",
      "Mercearia",
      false
    ],
    ["Azeitona Preta Raiola Vidro 500g", "12.98", "Mercearia", false],
    [
      "Azeitona Preta sem Caroço Member's Mark Vidro 450g",
      "24.99",
      "Mercearia",
      false
    ],
    [
      "Azeitona Verde com Caroço Member's Mark Vidro 595g",
      "32.99",
      "Mercearia",
      false
    ],
    [
      "Azeitona Verde em Conserva com Recheio de Pimentão Raiola Vidro 490g",
      "13.99",
      "Mercearia",
      false
    ],
    [
      "Azeitona Verde em Conserva Raiola Vidro 500g",
      "11.98",
      "Mercearia",
      false
    ],
    [
      "Azeitona Verde em Conserva sem Caroço Raiola 420g",
      "12.98",
      "Mercearia",
      false
    ],
    ["Azeitona Verde Fatiada Raiola Vidro 450g", "13.50", "Mercearia", false],
    [
      "Azeitona Verde sem Caroço Member's Mark Vidro 450g",
      "37.98",
      "Mercearia",
      false
    ],
    ["Azeitonas Pretas Azapa Raiola Vidro 500g", "19.99", "Mercearia", false],
    ["Barbecue Original Bombay Frasco 350g", "18.98", "Mercearia", false],
    [
      "Batata Frita com Sal Marinho e Pimenta-do-Reino Tyrrells Pacote 150g",
      "21.99",
      "Mercearia",
      false
    ],
    [
      "Batata Frita com Sal Marinho e Trufa Preta Tyrrells Pacote 150g",
      "21.99",
      "Mercearia",
      false
    ],
    [
      "Batata Frita com Sal Marinho Tyrrells Pacote 150g",
      "21.99",
      "Mercearia",
      false
    ],
    [
      "Batata Frita Lisa Clássica Lay's Pacote 153g",
      "9.49",
      "Mercearia",
      false
    ],
    [
      "Batata Frita Lisa Lay's Sour Cream Pacote 96g",
      "6.69",
      "Mercearia",
      false
    ],
    [
      "Batata Frita Ondulada Ruffles Original Elma Chips Pacote 300g Embalagem Econômica",
      "15.99",
      "Mercearia",
      false
    ],
    [
      "Batata Inteira Cozida no Vapor Vapz Caixa 500g",
      "8.49",
      "Mercearia",
      false
    ],
    ["Batata Lisa Clássica Lay's Pacote 135g", "9.49", "Mercearia", false],
    [
      "Batata Palha Tradicional Elma Chips Pacote 490g",
      "16.50",
      "Mercearia",
      false
    ],
    [
      "Batata Palha Tradicional Kari-Kari Crocante Pacote 800g",
      "18.98",
      "Mercearia",
      false
    ],
    [
      "Batata Pringles Creme e Cebola Pack com 3 Unidades 120g Cada",
      "22.47",
      "Mercearia",
      false
    ],
    [
      "Bicarbonato de Sódio Villa Cerroni Pote 350g",
      "15.99",
      "Mercearia",
      false
    ],
    [
      "Biscoito Água e Sal Marilan Croccante Pacote 700g",
      "7.99",
      "Mercearia",
      false
    ],
    [
      "Biscoito Cream Cracker com Gergelim Marilan Pacote 400g",
      "7.98",
      "Mercearia",
      false
    ],
    [
      "Biscoito Cream Cracker Manteiga Marilan Pacote 400g",
      "6.98",
      "Mercearia",
      false
    ],
    [
      "Biscoito Cream Cracker Marilan Croccante Pacote 700g",
      "7.99",
      "Mercearia",
      false
    ],
    [
      "Biscoito de Arroz Multigrãos Jasmine Pacote 90g",
      "8.98",
      "Mercearia",
      false
    ],
    [
      "Biscoito de Tapioca & Quinoa Fhom Caixa 100g",
      "17.99",
      "Mercearia",
      false
    ],
    [
      "Biscoito Polvilho Queijo Member'S Mark Pacote 200g",
      "7.00",
      "Mercearia",
      false
    ],
    [
      "Biscoito Salgado Crackers Danesita Caixa 500g",
      "14.98",
      "Mercearia",
      false
    ],
    ["Biscoito Salgado Dux Caixa 648g", "22.99", "Mercearia", false],
    [
      "Biscoito Salgado Dux Golden Original Caixa 972g",
      "36.99",
      "Mercearia",
      false
    ],
    ["Biscoito Sequilho Santa Edwiges Pote 454g", "27.99", "Mercearia", false],
    ["Biscoito Tortina Loacker Caixa 144g", "38.99", "Mercearia", false],
    [
      "Café au Lait em Cápsula Desnatado Nescafé Dolce Gusto com 16 Unidades",
      "24.98",
      "Mercearia",
      false
    ],
    [
      "Café au Lait em Cápsula Nescafé Dolce Gusto com 16 Unidades 10g Cada",
      "24.50",
      "Mercearia",
      false
    ],
    [
      "Café Classic Roast Member's Mark Lata 1.36kg",
      "49.98",
      "Mercearia",
      false
    ],
    [
      "Café com Leite em Cápsula Latte Macchiato Tres Pack com 10 Unidades 11g Cada",
      "14.50",
      "Mercearia",
      false
    ],
    [
      "Café com Leite em Cápsula Starbucks Caramel Macchiato com 12 Unidades",
      "25.99",
      "Mercearia",
      false
    ],
    [
      "Café com Leite em Cápsula Tres Pack com 10 Unidades 9g Cada",
      "14.98",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula 08 Torrado e Moído Pilão Intenso Pack com 20 Unidades",
      "34.99",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula 12 Torrado e Moído Pilão Espresso Pack com 20 Unidades",
      "34.99",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Caseiro Intenso Nescafé Dolce Gusto com 16 Unidades",
      "24.98",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Chococino Caramel Nescafé Dolce Gusto Caixa com 16 Unidades 8g Cada",
      "24.99",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Descafeinado Tres Pack com 10 Unidades 8g Cada",
      "14.50",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Espresso Colômbia L'or com 10 Unidades de 52g cada",
      "20.99",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Espresso Guatemala L'or com 10 Unidades de 52g",
      "20.99",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Espresso Indonesia L'or com 10 Unidades de 52g",
      "20.99",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Espresso Roast Starbucks 66g com 12 Unidades",
      "25.70",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Espresso Atento Tres Pack 10 Unidades 8g Cada",
      "15.98",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Espresso Colômbia Regiões do Mundo Tres Pack com 10 Unidades 8g Cada",
      "14.98",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Espresso L'or Ristretto 104g Pack com 20 Unidades",
      "39.99",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Espresso L'or Sontuoso 52g Pack com 10 Unidades",
      "20.99",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Nescafé Dolce Gusto Barista 120g com 16 Unidades",
      "21.50",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Nescafé Dolce Gusto Caffè Matinal 144g com 16 Unidades",
      "24.50",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Nescafé Dolce Gusto Espresso 96g com 16 Unidades",
      "21.50",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Nescafé Dolce Gusto Espresso Intenso 128g com 16 Unidades",
      "21.50",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Nescafé Dolce Gusto Lungo 112g com 16 Unidades",
      "21.50",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Starbucks Blonde Espresso Roast 53g com 10 Unidades",
      "25.70",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Starbucks Caffè Verona 55g com 10 Unidades",
      "25.70",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Starbucks Colombia 57g com 10 Unidades",
      "25.70",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Starbucks Espresso Roast 57g com 10 Unidades",
      "25.70",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Starbucks Pike Place Roast Lungo 53g com 10 Unidades",
      "25.70",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Tres Espresso Pleno Pack 10 Unidades 8g Cada",
      "14.50",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Tres Espresso Supremo Pack 10 Unidades 8g Cada",
      "14.98",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Tres Espresso Vibrante Pack 10 Unidades 8g Cada",
      "14.50",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsula Torrado e Moído Tres Filtrado Gourmet Pack 10 Unidades 7.5g Cada",
      "18.99",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsulas Aroma de Caramelo Baggio 10 Unidades com 5g Cada",
      "18.99",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsulas Gourmet Baggio Premium 10 Unidades 5g Cada",
      "18.99",
      "Mercearia",
      false
    ],
    [
      "Café em Cápsulas Sabor Chocolate Trufado Baggio Café com 10 Cápsulas Compatíveis a Nespresso 50g",
      "18.98",
      "Mercearia",
      false
    ],
    [
      "Café em Grãos Gourmet 100% Arábica Pacote Member's Mark 1kg",
      "36.98",
      "Mercearia",
      false
    ],
    [
      "Café Pilão Tradicional Pack 4 Unidades 500g Cada",
      "42.99",
      "Mercearia",
      false
    ],
    [
      "Café Solúvel Espresso Nescafé Gold Pote 100g",
      "14.98",
      "Mercearia",
      false
    ],
    [
      "Café Solúvel Granulado Nescafé Tradição Forte Pote 230g",
      "15.99",
      "Mercearia",
      false
    ],
    [
      "Café Solúvel Liofilizado Classique L'or Vidro 140g",
      "23.99",
      "Mercearia",
      false
    ],
    [
      "Café Solúvel Liofilizado Intense L'or Vidro 140g",
      "23.99",
      "Mercearia",
      false
    ],
    [
      "Café Solúvel Starbucks Dark Roast Premium Instant Lata 90g",
      "19.99",
      "Mercearia",
      false
    ],
    [
      "Café Solúvel Starbucks Medium Roast Premium Instant Lata 90g",
      "22.49",
      "Mercearia",
      false
    ],
    [
      "Café Torrado e Moído a Vácuo Clássico Damasco 500g",
      "8.49",
      "Mercearia",
      false
    ],
    [
      "Café Torrado e Moído a Vácuo Clássico Santa Clara Pacote 500g",
      "8.48",
      "Mercearia",
      false
    ],
    [
      "Café Torrado e Moído a Vácuo Tradicional 3 Corações 500g",
      "8.78",
      "Mercearia",
      false
    ],
    [
      "Café Torrado e Moído a Vácuo Tradicional Café do Ponto Pacote 500g",
      "9.78",
      "Mercearia",
      false
    ],
    [
      "Café Torrado e Moído Clássico Santa Clara Pack com 2 Unidades 250g Cada",
      "9.89",
      "Mercearia",
      false
    ],
    [
      "Café Torrado e Moído em Cápsula House Blend Starbucks Caixa 10 Unidades 57g",
      "25.70",
      "Mercearia",
      false
    ],
    [
      "Café Torrado e Moído Extraforte Melitta Pack com 4 Unidades 500g Cada",
      "42.50",
      "Mercearia",
      false
    ],
    [
      "Café Torrado e Moído Fort Pack com 4 Unidades 500g Cada",
      "31.50",
      "Mercearia",
      false
    ],
    [
      "Café Torrado e Moído Melitta Descafeinado Caixa 250g",
      "8.99",
      "Mercearia",
      false
    ],
    [
      "Café Torrado e Moído Melitta Extraforte Caixa 500g",
      "10.50",
      "Mercearia",
      false
    ],
    [
      "Café Torrado e Moído Melitta Gourmet Regiões Brasileiras Sul de Minas Pacote 250g",
      "6.91",
      "Mercearia",
      false
    ],
    [
      "Café Torrado e Moído Melitta Sabor da Fazenda Tradicional Caixa 500g",
      "10.99",
      "Mercearia",
      false
    ],
    [
      "Café Torrado e Moído Melitta Tradicional Caixa 500g",
      "10.50",
      "Mercearia",
      false
    ],
    [
      "Café Torrado e Moído Pilão Tradicional Pacote 500g",
      "10.99",
      "Mercearia",
      false
    ],
    [
      "Café Torrado e Moído Tradicional Melitta Pack com 4 Unidades 500g Cada",
      "42.50",
      "Mercearia",
      false
    ],
    [
      "Café Torrado e Moído Tradicional Três Corações Pack com 4 Unidades 500g Cada",
      "33.16",
      "Mercearia",
      false
    ],
    [
      "Café Torrado em Grãos Santa Monica Pacote 1kg",
      "54.99",
      "Mercearia",
      false
    ],
    [
      "Café Torrado em Grãos Suave Gourmet Café do Centro Pacote 1kg",
      "39.98",
      "Mercearia",
      false
    ],
    [
      "Café Tradicional Caboclo Pack com 4 Unidades 500g Cada",
      "30.99",
      "Mercearia",
      false
    ],
    [
      "Café Três Corações Extra Forte Pack com 4 Unidades 500g Cada",
      "33.16",
      "Mercearia",
      false
    ],
    [
      "Calda Sabor Chocolate Syrup Hersheys Frasco 680g",
      "29.98",
      "Mercearia",
      false
    ],
    [
      "Caldo Carne em Tablete Knorr Caixa 114g com 12 Unidades",
      "2.69",
      "Mercearia",
      false
    ],
    [
      "Caldo Galinha em Tablete Knorr Caixa 114g com 12 Unidades",
      "2.49",
      "Mercearia",
      false
    ],
    ["Canela em Pó Member's Mark Vidro 170g", "23.99", "Mercearia", false],
    ["Canela em Rama Member's Mark Vidro 110g", "29.99", "Mercearia", false],
    ["Canjica Branca Villa Cerroni Pote 700g", "16.49", "Mercearia", false],
    [
      "Canjica de Milho Cozida no Vapor Vapz Caixa 500g",
      "6.99",
      "Mercearia",
      false
    ],
    [
      "Cappuccino em Cápsula Classic Tres 110g com 10 Unidades",
      "14.50",
      "Mercearia",
      false
    ],
    [
      "Cappuccino em Cápsula Starbucks Caixa 120g com 12 Unidades",
      "25.99",
      "Mercearia",
      false
    ],
    ["Cappuccino Member's Mark Pacote 1Kg", "36.98", "Mercearia", false],
    [
      "Cappuccino Solúvel Chocolate Melitta Lata 200g",
      "7.49",
      "Mercearia",
      false
    ],
    [
      "Cappuccino Solúvel Classic 3 Corações Pote 400g",
      "14.99",
      "Mercearia",
      false
    ],
    [
      "Cappuccino Solúvel Diet 3 Corações Pote 150g",
      "9.94",
      "Mercearia",
      false
    ],
    [
      "Cappuccino Solúvel Tradicional Melitta Lata 200g",
      "7.49",
      "Mercearia",
      false
    ],
    [
      "Cappuccino Solúvel Zero Lactose 3 Corações Balance Pote 180g",
      "12.98",
      "Mercearia",
      false
    ],
    ["Carne Seca Desfiada Cozida Vapz Caixa 400g", "29.99", "Mercearia", false],
    ["Cebola Crispy Top Taste Pacote 500g", "24.99", "Mercearia", false],
    ["Cebola para Conserva Fugita Pacote 1kg", "4.99", "Mercearia", false],
    [
      "Cereal Matinal Chocolate Sucrilhos Caixa 780g",
      "21.98",
      "Mercearia",
      false
    ],
    [
      "Cereal Matinal Integral Chocolate Nescau Caixa 770g Embalagem Econômica",
      "17.64",
      "Mercearia",
      false
    ],
    [
      "Cereal Matinal Integral Nestlé Nesfit Caixa 220g",
      "10.58",
      "Mercearia",
      false
    ],
    [
      "Cereal Matinal Integral Nestlé Snow Flakes Caixa 800g",
      "16.46",
      "Mercearia",
      false
    ],
    [
      "Cereal Matinal Jumbo Froot Loops Caixa 280g",
      "16.98",
      "Mercearia",
      false
    ],
    [
      "Cereal Matinal Kellogg's Corn Flakes Caixa 500g",
      "16.98",
      "Mercearia",
      false
    ],
    [
      "Cereal Müsli Maçã e Passas Kellogg's Caixa 270g",
      "11.98",
      "Mercearia",
      false
    ],
    [
      "Chá Amora. Mirtilo & Baunilha Senses Leão 22g",
      "12.98",
      "Mercearia",
      false
    ],
    [
      "Chá Camomila. Canela e Maçã Infusions Twinings Caixa 15g com 10 Unidades",
      "13.99",
      "Mercearia",
      false
    ],
    [
      "Chá Camomila. Mel e Baunilha Infusions Twinings Caixa 15g com 10 Unidades",
      "14.99",
      "Mercearia",
      false
    ],
    [
      "Chá de Camomila Leão Pack com 2 Unidades 15g Cada",
      "13.99",
      "Mercearia",
      false
    ],
    [
      "Chá de Capim-Cidreira Leão Pack com 2 Unidades 15g Cada",
      "13.99",
      "Mercearia",
      false
    ],
    [
      "Chá de Erva-Doce Leão Pack com 2 Unidades 30g Cada",
      "11.99",
      "Mercearia",
      false
    ],
    [
      "Chá Hibisco Frutas Silvestres Twinings Caixa 10 Unidades 20g",
      "13.99",
      "Mercearia",
      false
    ],
    [
      "Chá Laranja. Manga e Canela Infusions Twinings Caixa 18g com 10 Unidades",
      "13.99",
      "Mercearia",
      false
    ],
    [
      "Chá Limão com Gengibre Infusions Twinings Caixa 15g com 10 Unidades",
      "13.99",
      "Mercearia",
      false
    ],
    [
      "Chá Mate Original Matte Leão Caixa 250g Embalagem Econômica",
      "9.99",
      "Mercearia",
      false
    ],
    [
      "Chá Mate. Hibisco & Cereja Senses Leão 20g com 10 Unidades",
      "14.99",
      "Mercearia",
      false
    ],
    [
      "Chá Preto English Breakfast Twinings Caixa 20g com 10 Unidades",
      "14.99",
      "Mercearia",
      false
    ],
    [
      "Champignon Inteiro em Conserva Imperador Vidro 820g",
      "23.99",
      "Mercearia",
      false
    ],
    [
      "Champignons Fatiados Member's Mark Pacote 400g",
      "16.99",
      "Mercearia",
      false
    ],
    [
      "Champignons Inteiros Member's Mark Pacote 400g",
      "16.99",
      "Mercearia",
      false
    ],
    ["Chia em Grãos Integral Da Magrinha 350g", "22.99", "Mercearia", false],
    ["Chia em Sementes Villa Cerroni Pote 550g", "27.99", "Mercearia", false],
    [
      "Chips de Batata-Doce Azeite e Manjericão Roots to Go Pacote 100g",
      "8.98",
      "Mercearia",
      false
    ],
    [
      "Chips de Batata-Doce Roots To Go Pacote 100g",
      "9.98",
      "Mercearia",
      false
    ],
    [
      "Chips de Batata-Doce Teriyaki Roots to Go Pacote 100g",
      "8.98",
      "Mercearia",
      false
    ],
    [
      "Chips Mandioca. Batatas-Doces e Mandioca com Beterraba Original Roots To Go Pacote 100g",
      "9.99",
      "Mercearia",
      false
    ],
    [
      "Chocolate em Pó Solúvel Nestlé 32% Cacau Caixa 2kg",
      "55.89",
      "Mercearia",
      false
    ],
    [
      "Chocolate em Pó Solúvel Nestlé 50% Cacau Caixa 2kg",
      "89.99",
      "Mercearia",
      false
    ],
    ["Chocolate Granulado Dori 1.010kg", "12.78", "Mercearia", false],
    [
      "Chocolate Quente em Cápsula Chocolatto Tres 110g com 10 Unidades",
      "14.50",
      "Mercearia",
      false
    ],
    ["Cobertura Chocolate ao Leite Nestlé 1kg", "22.48", "Mercearia", false],
    [
      "Cobertura de Chocolate Hot Fudge Hershey's Pote 362g",
      "16.98",
      "Mercearia",
      false
    ],
    [
      "Coco Ralado Úmido Adoçado em Flocos Sococo Sweet Floco Pacote 1kg",
      "37.99",
      "Mercearia",
      false
    ],
    [
      "Cogumelo Champignon em Conserva Inteiro Raiola Pack com 2 Unidades 200g Cada",
      "23.99",
      "Mercearia",
      false
    ],
    [
      "Cogumelo Classico em Conserva Bonduelle Pack com 2 Unidades 200g Cada",
      "44.99",
      "Mercearia",
      false
    ],
    [
      "Cogumelos Shimeji em Conserva 1 Member's Mark Pacote 400g",
      "19.99",
      "Mercearia",
      false
    ],
    [
      "Composto Lácteo em Cápsula Cortado Espresso Machiato Nescafé Dolce Gusto com 16 Unidades 8g Cada",
      "24.98",
      "Mercearia",
      false
    ],
    [
      "Composto Lácteo Enfagrow Mead Johnson Nutrition Duo Pack com 2 Unidades 800g Cada",
      "94.99",
      "Mercearia",
      false
    ],
    ["Composto Lácteo Milnutri Premium 800g", "37.99", "Mercearia", false],
    [
      "Composto Lácteo Milnutri Premium Danone Pack com 4 Unidades 800g Cada",
      "139.98",
      "Mercearia",
      false
    ],
    ["Composto Lácteo Neslac Comfor Lata 800g", "31.48", "Mercearia", false],
    [
      "Composto Lácteo Nestlé Ninho Forti+ Lata 380g",
      "14.99",
      "Mercearia",
      false
    ],
    [
      "Composto Lácteo Nestlé Ninho Forti+ Lata 750g",
      "29.99",
      "Mercearia",
      false
    ],
    [
      "Composto Lácteo Zero Lactose Ninho Forti+ Lata 380g",
      "19.99",
      "Mercearia",
      false
    ],
    [
      "Composto Lácteo Zero Lactose Ninho Forti+ Lata 700g",
      "35.99",
      "Mercearia",
      false
    ],
    [
      "Condimento Importado com Vinagre Balsâmico de Modena Pietro Coricelli Frasco 250ml",
      "19.98",
      "Mercearia",
      false
    ],
    ["Confeito Chocolate Disqueti Dori 1.010kg", "29.99", "Mercearia", false],
    [
      "Confeito de Chocolate ao Leite M&M's para Comemorar 1kg",
      "37.98",
      "Mercearia",
      false
    ],
    ["Couscous Marroquino Firma Itália 130g", "9.99", "Mercearia", false],
    [
      "Cravo da Índia em Flor Member's Mark Vidro 120g",
      "27.49",
      "Mercearia",
      false
    ],
    [
      "Cream Cracker Levíssimo Bauducco Pack com 3 Unidades 200g Cada",
      "7.99",
      "Mercearia",
      false
    ],
    ["Creme de Amendoim Reese's Pacote 510g", "28.39", "Mercearia", false],
    [
      "Creme de Avelã com Cacau Member's Mark Pote 750g",
      "32.99",
      "Mercearia",
      false
    ],
    ["Creme de Avelã Duo Member's Mark Pote 750g", "29.99", "Mercearia", false],
    [
      "Creme de Leite Esterilizado Extra Cremoso Bate Chantilly Nestlé Lata 280g",
      "8.89",
      "Mercearia",
      false
    ],
    [
      "Creme de Leite Esterilizado Homogeneizado Itambé Lata 300g",
      "4.69",
      "Mercearia",
      false
    ],
    [
      "Creme de Leite Esterilizado Nestlé Lata 300g",
      "5.99",
      "Mercearia",
      false
    ],
    ["Creme de Leite Frimesa Caixa 200G", "2.49", "Mercearia", false],
    [
      "Creme de Leite Leve UHT Homogenizado Piracanjuba Caixa 1.03kg",
      "12.99",
      "Mercearia",
      false
    ],
    [
      "Creme de Leite Pasteurizado Bate Chantilly Verde Campo Garrafa 500g",
      "13.90",
      "Mercearia",
      false
    ],
    [
      "Creme de Leite Pasteurizado Fazenda Bela Vista Garrafa 500g",
      "13.49",
      "Mercearia",
      false
    ],
    [
      "Creme de Leite UHT Homogeneizado Piracanjuba Caixa 200g",
      "2.19",
      "Mercearia",
      false
    ],
    [
      "Creme de Leite UHT Homogeneizado Piracanjuba Caixa 200g",
      "3.69",
      "Mercearia",
      false
    ],
    [
      "Creme de Leite UHT Homogeneizado Zero Lactose Piracanjuba Caixa 200g",
      "2.89",
      "Mercearia",
      false
    ],
    [
      "Creme de Leite UHT Leve Homogeneizado Italac Caixa 200g",
      "2.49",
      "Mercearia",
      false
    ],
    [
      "Creme de Leite UHT Leve Homogeneizado Leitbom Caixa 200g",
      "2.29",
      "Mercearia",
      false
    ],
    ["Croutons Salgado Alho Florio Pacote 500g", "22.50", "Mercearia", false],
    [
      "Croutons Salgado Tradicional Florio Pacote 500g",
      "22.99",
      "Mercearia",
      false
    ],
    [
      "Croutons Tradicional Member's Mark Pacote 500g",
      "24.99",
      "Mercearia",
      false
    ],
    [
      "Cup Noodles Costela com Molho Churrasco Nissin Pack com 4 Unidades 69g Cada",
      "7.49",
      "Mercearia",
      false
    ],
    [
      "Cup Noodles Galinha Caipira Nissin Pack com 4 Unidades 69g Cada",
      "12.76",
      "Mercearia",
      false
    ],
    ["Cuscuz Tipiak Caixa 500g", "19.99", "Mercearia", false],
    ["Doritos Flamin'Hot Super Picante Pacote 84g", "3.99", "Mercearia", false],
    [
      "Ervilha ao Natural Bonduelle Pack com 4 Unidades 200g Cada",
      "7.98",
      "Mercearia",
      false
    ],
    [
      "Ervilha em Conserva Bonduelle Pack com 2 Unidades 280g Cada",
      "31.98",
      "Mercearia",
      false
    ],
    ["Espagueti 4 Queijos Firma Italia Sachê 170g", "9.99", "Mercearia", false],
    [
      "Espresso Coffe Set Caffè Corsini com 30 Cápsulas + 2 Xícaras",
      "51.91",
      "Mercearia",
      false
    ],
    [
      "Extrato De Baunilha Natural em Pó Good4Me Pote 80g",
      "24.99",
      "Mercearia",
      false
    ],
    [
      "Extrato de Tomate Elefante Pack com 2 Unidades 540g Cada",
      "9.59",
      "Mercearia",
      false
    ],
    ["Farelo de Aveia Villa Cerroni Pote 500g", "16.99", "Mercearia", false],
    ["Farinha de Arroz Tio João Pacote 1kg", "6.99", "Mercearia", false],
    ["Farinha de Aveia Villa Cerroni Pote 400g", "15.99", "Mercearia", false],
    ["Farinha de Coco Copra 400g", "10.99", "Mercearia", false],
    [
      "Farinha de Linhaça Dourada Villa Cerroni Pote 400g",
      "18.99",
      "Mercearia",
      false
    ],
    [
      "Farinha de Milho Flocão Dona Clara Premium 500g",
      "1.69",
      "Mercearia",
      false
    ],
    [
      "Farinha de Trigo com Fermento Finna Pacote 1kg",
      "4.39",
      "Mercearia",
      false
    ],
    ["Farinha de Trigo Integral Dona Benta 1kg", "6.79", "Mercearia", false],
    [
      "Farinha de Trigo Integral Famiglia Venturelli Pacote 1kg",
      "4.49",
      "Mercearia",
      false
    ],
    [
      "Farinha de Trigo Integral Jasmine Pacote 1kg",
      "10.99",
      "Mercearia",
      false
    ],
    [
      "Farinha de Trigo Integral Orgânica Jasmine Pacote 1kg",
      "10.99",
      "Mercearia",
      false
    ],
    [
      "Farinha de Trigo para Pizza Molino Dalla Giovanna Pacote 1kg",
      "13.99",
      "Mercearia",
      false
    ],
    [
      "Farinha de Trigo Pasta Fresca Molino Dalla Giovanna Pacote 1kg",
      "13.99",
      "Mercearia",
      false
    ],
    [
      "Farinha de Trigo Tipo 1 com Fermento Dona Benta 1kg",
      "4.79",
      "Mercearia",
      false
    ],
    [
      "Farinha de Trigo Tipo 1 Dona Benta Reserva Especial Puríssima 1kg",
      "5.69",
      "Mercearia",
      false
    ],
    [
      "Farinha de Trigo Tipo 1 Famiglia Venturelli Pacote 1kg",
      "3.99",
      "Mercearia",
      false
    ],
    [
      "Farinha de Trigo Tipo 1 Famiglia Venturelli Puríssima Pacote 5kg",
      "16.98",
      "Mercearia",
      false
    ],
    ["Farinha de Trigo Tipo 1 Finna Pacote 1kg", "4.19", "Mercearia", false],
    [
      "Farinha de Trigo Tipo 1 Gourmet Famiglia Venturelli Pacote 1kg",
      "4.29",
      "Mercearia",
      false
    ],
    [
      "Farinha de Trigo Tipo 1 Tradicional Dona Benta 1kg",
      "3.69",
      "Mercearia",
      false
    ],
    [
      "Farinha de Trigo Tradicional Tipo 1 Dona Benta Pacote 1kg",
      "4.29",
      "Mercearia",
      false
    ],
    [
      "Farinha de Trigo Universal Molino Dalla Giovanna Pacote 1kg",
      "17.99",
      "Mercearia",
      false
    ],
    ["Farinha Láctea Nestlé Pacote 600g", "19.99", "Mercearia", false],
    ["Farinha Panko Alfa Pacote 200g", "12.99", "Mercearia", false],
    [
      "Farofa de Mandioca Picante Artesanal Típica D'Goias Pacote 400g",
      "8.99",
      "Mercearia",
      false
    ],
    [
      "Farofa de Mandioca Tradicional Temperada Yoki Pacote 1kg Embalagem Econômica",
      "8.98",
      "Mercearia",
      false
    ],
    [
      "Farofa de Mandioca Tradicional Típica D' Goiás Pacote 400g",
      "8.99",
      "Mercearia",
      false
    ],
    [
      "Feijão Branco em Conserva Bonduelle Pack com 2 Unidades 400 Cada",
      "31.98",
      "Mercearia",
      false
    ],
    ["Feijão Branco Tipo 1 Kicaldo Pacote 1kg", "10.50", "Mercearia", false],
    [
      "Feijão Carioca Cozido no Vapor Orgânico Vapz Caixa 250g",
      "5.99",
      "Mercearia",
      false
    ],
    ["Feijão Carioca Cristal 1kg", "7.99", "Mercearia", false],
    ["Feijão Carioca Premium Pantera Pacote 1kg", "6.98", "Mercearia", false],
    ["Feijão Carioca Pronto Vapz Caixa 280g", "8.49", "Mercearia", false],
    ["Feijão Carioca Tio Jorge Pacote 1kg", "6.99", "Mercearia", false],
    [
      "Feijão Carioca Tipo 1 Broto Legal Pacote 1kg",
      "7.59",
      "Mercearia",
      false
    ],
    ["Feijão Carioca Tipo 1 Caldo Bom Pacote 1kg", "7.69", "Mercearia", false],
    ["Feijão Carioca Tipo 1 Camil 1kg", "6.59", "Mercearia", false],
    ["Feijão Carioca Tipo 1 Kicaldo Pacote 1kg", "6.49", "Mercearia", false],
    ["Feijão Carioca Tipo 1 Manolinho Pacote 1kg", "7.19", "Mercearia", false],
    [
      "Feijão Carioca Tipo 1 Pé Vermelho Premium Pacote 1kg",
      "6.69",
      "Mercearia",
      false
    ],
    [
      "Feijão Carioca Tipo 1 Seleção Especial Urbano Pacote 1kg",
      "7.39",
      "Mercearia",
      false
    ],
    ["Feijão Fradinho Premium Pantera Pacote 1kg", "7.99", "Mercearia", false],
    ["Feijão Fradinho Tipo 1 Camil 1kg", "6.99", "Mercearia", false],
    ["Feijão Fradinho Tipo 1 Kicaldo Pacote 1kg", "7.99", "Mercearia", false],
    [
      "Feijão Preto Cozido no Vapor Vapza Caixa com 2 Unidades 250g Cada",
      "8.49",
      "Mercearia",
      false
    ],
    ["Feijão Preto Kicaldo Pacote 1kg", "9.98", "Mercearia", false],
    [
      "Feijão Preto Premium Tipo 1 Pantera Pacote 1kg",
      "7.69",
      "Mercearia",
      false
    ],
    ["Feijão Preto Tipo 1 Caldo Bom Pacote 1kg", "7.99", "Mercearia", false],
    ["Feijão Preto Tipo 1 Camil Pacote 1kg", "8.39", "Mercearia", false],
    ["Feijão Preto Tipo 1 Kicaldo Pacote 1kg", "7.49", "Mercearia", false],
    ["Feijão Preto Tipo 1 Kicaldo Pacote 1kg", "8.19", "Mercearia", false],
    [
      "Feijão Preto Tipo 1 Pontarollo Premium Pacote 1kg",
      "6.94",
      "Mercearia",
      false
    ],
    [
      "Feijão Preto Tipo 1 Seleção Especial Urbano Pacote 1kg",
      "7.89",
      "Mercearia",
      false
    ],
    ["Feijão Vermelho Tipo 1 Kicaldo Pacote 1kg", "10.50", "Mercearia", false],
    [
      "Fermento Biológico Seco Instantâneo Fleischmann Envelope 10g Cada Leve 3 Pague 2 Unidades",
      "3.99",
      "Mercearia",
      false
    ],
    ["Fermento Químico em Pó Royal Pote 250g", "5.99", "Mercearia", false],
    ["Figo Inteiro Schramm Lata 450g", "11.99", "Mercearia", false],
    ["Figo Seco Raiz do Bem Pacote 400g", "34.98", "Mercearia", false],
    [
      "Filé de Atum em Azeite de Oliva com Alho Pedaços Gomes da Costa Caixa 125g",
      "12.99",
      "Mercearia",
      false
    ],
    [
      "Filé de Atum em Pedaços em Azeite de Oliva Extra Virgem Gomes da Costa Caixa 125g",
      "12.99",
      "Mercearia",
      false
    ],
    [
      "Filé de Sardinha com Molho de Tomate Gomes da Costa Pack com 3 Unidades 85g Cada",
      "25.99",
      "Mercearia",
      false
    ],
    [
      "Filé de Sardinha com Óleo Gomes da Costa Pack com 3 Unidades 125g Cada",
      "25.99",
      "Mercearia",
      false
    ],
    ["Flocos de 3 Cereais Neston Pacote 400g", "12.99", "Mercearia", false],
    ["Fubá Mimoso Yoki Pacote 1kg", "3.99", "Mercearia", false],
    [
      "Gelatina Dr.Oetker Abacaxi Pack 4 Unidades 20g cada",
      "5.49",
      "Mercearia",
      false
    ],
    [
      "Gelatina Dr.Oetker Limão Pack 4 Unidades 20g cada",
      "5.49",
      "Mercearia",
      false
    ],
    [
      "Gelatina Dr.Oetker Morango Pack 4 Unidades 20g cada",
      "5.49",
      "Mercearia",
      false
    ],
    [
      "Gelatina Dr.Oetker Uva Pack 4 Unidades 20g cada",
      "5.49",
      "Mercearia",
      false
    ],
    [
      "Gelatina em Pó Framboesa Dr. Oetker Pack com 4 Unidades 20g Cada",
      "5.49",
      "Mercearia",
      false
    ],
    [
      "Gelatina em Pó Uva Zero Açúcar Linea Pack com 4 Unidades 10g Cada",
      "8.43",
      "Mercearia",
      false
    ],
    [
      "Geleia 100% Fruta Morango Light Wellness Queensberry Vidro 250g",
      "17.48",
      "Mercearia",
      false
    ],
    [
      "Geleia Agridoce Pimenta-Vermelha Queensberry Gourmet Vidro 320g",
      "9.99",
      "Mercearia",
      false
    ],
    ["Geleia de Cereja Schwartau Vidro 500g", "22.98", "Mercearia", false],
    [
      "Geleia de Frutas Vermelhas Schwartau Vidro 500g",
      "22.98",
      "Mercearia",
      false
    ],
    ["Geleia de Morango Diet 280g", "15.68", "Mercearia", false],
    [
      "Geléia de Morango Linea Zero Pack com 2 Unidades 230g Cada",
      "27.92",
      "Mercearia",
      false
    ],
    [
      "Geleia de Pimenta Sweet Chilli Tradicional Bombay Frasco 375g",
      "19.99",
      "Mercearia",
      false
    ],
    [
      "Geleia Diet Framboesa Queensberry Vidro 280g",
      "15.68",
      "Mercearia",
      false
    ],
    [
      "Geleia Frutas Vermelhas Light Queensberry Vidro 250g",
      "14.99",
      "Mercearia",
      false
    ],
    [
      "Geleia Morango Queensberry Classic Vidro 320g",
      "16.58",
      "Mercearia",
      false
    ],
    [
      "Granola Amazonia Coconut & Brazil Nut Da Magrinha 750g",
      "37.99",
      "Mercearia",
      false
    ],
    [
      "Granola Banana & Cacau Mãe Terra Pacote 800g",
      "22.98",
      "Mercearia",
      false
    ],
    [
      "Granola Castanha-do-Pará. Coco Fresco & Uvas-Passas Da Magrinha 7 Grãos 850g",
      "29.99",
      "Mercearia",
      false
    ],
    ["Granola Orgânica Tia Sônia Pacote 460g", "34.99", "Mercearia", false],
    [
      "Granola Tradicional com Castanhas Brasileiras Mãe Terra Pacote 800g",
      "22.98",
      "Mercearia",
      false
    ],
    [
      "Granola Tradicional Da Magrinha 7 Grãos 850g",
      "29.99",
      "Mercearia",
      false
    ],
    ["Granola Tradicional Tia Sônia Pacote 800g", "22.50", "Mercearia", false],
    [
      "Granola Tropical Papaia. Coco. Abacaxi. Banana e Mel Jordans Pacote 400g",
      "27.99",
      "Mercearia",
      false
    ],
    [
      "Grão de Bico em Conserva Bonduelle Pack com 2 Unidades 265g Cada",
      "31.98",
      "Mercearia",
      false
    ],
    [
      "Grão de Bico Premium Villa Cerroni Pote 1.1kg",
      "29.98",
      "Mercearia",
      false
    ],
    [
      "Grão de Bico Suave Bonduelle Pack com 4 Unidades 200g Cada",
      "11.99",
      "Mercearia",
      false
    ],
    [
      "Grão-de-Bico Cozido no Vapor Vapza Caixa 500g com 2 Unidades",
      "8.49",
      "Mercearia",
      false
    ],
    [
      "Grissini Integral Multigrãos Florio Pacote 200g",
      "12.90",
      "Mercearia",
      false
    ],
    ["Grissini Tradicional Florio Pacote 200g", "10.99", "Mercearia", false],
    ["Higienizador Gotas Hidrosteril Frasco 50ml", "7.97", "Mercearia", false],
    ["Ketchup Heinz Pack 2 Unidades 397g Cada", "19.99", "Mercearia", false],
    ["Ketchup Heinz Squeeze 1.033kg", "17.50", "Mercearia", false],
    ["Ketchup Tradicional Hemmer Squeeze 1kg", "11.99", "Mercearia", false],
    [
      "Kit Ketchup Tradicional 397g + Maionese 215g + Mostarda 255g Heinz",
      "24.98",
      "Mercearia",
      false
    ],
    [
      "Kit Salgadinho Elma Chips Lanchinho Sortido 101g com 5 Unidades",
      "7.49",
      "Mercearia",
      false
    ],
    [
      "Leite Condensado Desnatado Light Piracanjuba Caixa 395g",
      "5.17",
      "Mercearia",
      false
    ],
    ["Leite Condensado Integral Tirol Caixa 395g", "4.19", "Mercearia", false],
    ["Leite Condensado Itambé Lata 395g", "5.19", "Mercearia", false],
    ["Leite Condensado Piracanjuba Caixa 395g", "4.79", "Mercearia", false],
    [
      "Leite Condensado Semidesnatado Italac Caixa 395g",
      "3.99",
      "Mercearia",
      false
    ],
    [
      "Leite Condensado Semidesnatado Nestlé Moça 405g",
      "5.19",
      "Mercearia",
      false
    ],
    [
      "Leite Condensado Zero Lactose Piracanjuba Caixa 395g",
      "5.17",
      "Mercearia",
      false
    ],
    [
      "Leite de Coco Tradicional Sococo Garrafa 1l",
      "19.99",
      "Mercearia",
      false
    ],
    [
      "Leite em Pó Desnatado Instantâneo La Serenissima Pacote 500g",
      "18.99",
      "Mercearia",
      false
    ],
    [
      "Leite em Pó Desnatado Nestlé Molico Pacote 500g",
      "28.99",
      "Mercearia",
      false
    ],
    [
      "Leite em Pó Fases 1+ Ninho Pack com 2 Unidades 800g Cada",
      "52.69",
      "Mercearia",
      false
    ],
    [
      "Leite em Pó Instantâneo Desnatado Itambé Pacote 500g Embalagem Econômica",
      "21.99",
      "Mercearia",
      false
    ],
    [
      "Leite em Pó Instantâneo Desnatado Piracanjuba Pacote 600g",
      "21.98",
      "Mercearia",
      false
    ],
    [
      "Leite em Pó Instantâneo Integral Itambé 800g",
      "22.59",
      "Mercearia",
      false
    ],
    [
      "Leite em Pó Instantâneo Integral La Serenissima Pacote 800g",
      "21.99",
      "Mercearia",
      false
    ],
    [
      "Leite em Pó Instantâneo Integral Piracanjuba Pacote 800g",
      "26.99",
      "Mercearia",
      false
    ],
    [
      "Leite em Pó Instantâneo Integral Zero Lactose Itambé Nolac Pacote 300g",
      "15.98",
      "Mercearia",
      false
    ],
    [
      "Leite em Pó Instantâneo Semidesnatado Ninho Forti+ Levinho Nestlé Lata 350g",
      "13.99",
      "Mercearia",
      false
    ],
    [
      "Leite em Pó Integral Itambé Pacote 800g Embalagem Econômica",
      "23.50",
      "Mercearia",
      false
    ],
    [
      "Leite em Pó Integral La Serenissima Pacote 800g",
      "22.99",
      "Mercearia",
      false
    ],
    [
      "Leite em Pó Integral Ninho Forti+ Nestlé Pacote 800g",
      "24.99",
      "Mercearia",
      false
    ],
    [
      "Leite em Pó Integral Piracanjuba Pacote 800g",
      "23.99",
      "Mercearia",
      false
    ],
    ["Lentilha Tipo 1 Villa Cerroni Pote 500g", "9.99", "Mercearia", false],
    ["Macarrão com Ovos Caseiro Ninho 2 De 500g", "6.98", "Mercearia", false],
    [
      "Macarrão de Sêmola Bavette 13 Barilla Pack com 3 Unidades 500g Cada",
      "30.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Sêmola Capellini 1 Barilla Pack com 3 Unidades 500g Cada",
      "30.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Sêmola Espaguete 5 Barilla Pack com 3 Unidades 500g Cada",
      "20.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Sêmola Espaguete 7 Barilla Pack com 3 Unidades 500g Cada",
      "20.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Sêmola Farfalle 65 Barilla Pack com 3 Unidades 500g Cada",
      "28.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Sêmola Grano Duro Fusilli 98 Barilla Pack com 3 unidades 500g Cada",
      "28.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Sêmola Grano Duro Integral Farfalle Barilla Pack com 2 Unidades 500g Cada",
      "27.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Sêmola Grano Duro Integral Fusilli Barilla Pack com 2 Unidades 500g Cada",
      "27.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Sêmola Grano Duro Integral Spaghettini Barilla Pack com 2 Unidades 500g Cada",
      "27.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Sêmola Grano Duro Penne Rigate Paganini Pacote 500g",
      "6.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Sêmola Grano Duro Spaghetti Paganini Pacote 500g",
      "6.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Sêmola Penne Rigate 73 Barilla Pack com 3 unidades 500g Cada",
      "28.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Sêmola Spaghettini 3 Barilla Pack com 3 Unidades 500g Cada",
      "30.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Trigo Grano Duro Cabelo de Anjo 209 De Cecco 500g",
      "29.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Trigo Grano Duro Fettuccine 223 De Cecco 500g",
      "29.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Trigo Grano Duro Pappardelle 201 De Cecco 500g",
      "29.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Trigo Grano Duro Tagliatelle 203 De Cecco 500g",
      "29.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão de Trigo Integral Talharim 2 De Pack com 2 Unidades 500g Cada",
      "14.99",
      "Mercearia",
      false
    ],
    [
      "Macarrão Instantâneo Yakissoba Nissin Pacote 500g",
      "4.99",
      "Mercearia",
      false
    ],
    ["Macarrão para Yakissoba De 1kg", "12.98", "Mercearia", false],
    ["Maionese Chef Heinz Pote 415g", "14.27", "Mercearia", false],
    ["Maionese Heinz Pack 2 Unidades 390g Cada", "18.99", "Mercearia", false],
    [
      "Maionese Hellmann's Pote 657g Tamanho Família",
      "9.99",
      "Mercearia",
      false
    ],
    [
      "Maionese Hellmann's Sachê 1kg Embalagem Econômica",
      "11.50",
      "Mercearia",
      false
    ],
    ["Maionese Hemmer Premium Pote 330g", "12.99", "Mercearia", false],
    [
      "Maionese Tradicional Hellmann's Pack 2 Unidades com 500g Cada",
      "12.48",
      "Mercearia",
      false
    ],
    [
      "Mandioquinha Cozida no Vapor Vapz Caixa 500g",
      "8.99",
      "Mercearia",
      false
    ],
    [
      "Manjericão em Flocos Member's Mark Vidro 60g",
      "11.99",
      "Mercearia",
      false
    ],
    [
      "Massa de Talharim Member's Mark Pacote 400g",
      "10.99",
      "Mercearia",
      false
    ],
    ["Massa Pronta para Tapioca Iguaçu Pacote 1kg", "5.99", "Mercearia", false],
    [
      "Massas Grano Duro Fusili Member’s Mark Pack com 6 Unidades 500g Cada",
      "39.99",
      "Mercearia",
      false
    ],
    ["Mel Uso Gourmet Chef Baldoni Frasco 1.1kg", "39.98", "Mercearia", false],
    [
      "Milho de Pipoca Premium Yoki Pack com 3 Unidades 500g Cada",
      "11.49",
      "Mercearia",
      false
    ],
    [
      "Milho para Pipoca Tipo 1 Yoki Super Premium Pote 650g",
      "10.98",
      "Mercearia",
      false
    ],
    [
      "Milho Pipoca Premium Villa Cerroni Pote 1.3Kg",
      "19.98",
      "Mercearia",
      false
    ],
    [
      "Milho Verde em Conserva Bonduelle Pack 2 Unidades 285g Cada",
      "31.98",
      "Mercearia",
      false
    ],
    [
      "Mini Torrada Integral Member's Mark Caixa 120g",
      "7.49",
      "Mercearia",
      false
    ],
    [
      "Miojo de Carne Nissin Lámen Pack com 5 Unidades 85gr Cada",
      "7.95",
      "Mercearia",
      false
    ],
    [
      "Miojo de Galinha Caipira. Nissin Lámen Pack com 5 Unidades 85gr Cada",
      "7.95",
      "Mercearia",
      false
    ],
    [
      "Mistura de Ervas e Especiarias Chimichurri Member's Mark Vidro 95g",
      "17.99",
      "Mercearia",
      false
    ],
    [
      "Mistura de Especiarias em Pó Curry Member's Mark Vidro 170g",
      "19.00",
      "Mercearia",
      false
    ],
    [
      "Mistura para Bebida com Café em Sachê Caffè Mocha Starbucks Premium Instant Caixa 88g 4 Unidades",
      "14.49",
      "Mercearia",
      false
    ],
    [
      "Mistura para Bebida com Café em Sachê Caramel Latte Starbucks Premium Instant Caixa 86g 4 Unidades",
      "12.88",
      "Mercearia",
      false
    ],
    [
      "Mistura para Bebida com Café em Sachê Vanilla Latte Starbucks Premium Instant Caixa 86g 4 Unidades",
      "12.88",
      "Mercearia",
      false
    ],
    [
      "Mistura para Bolo Brownie Chocolate Dr. Oetker Caixa 480g",
      "12.99",
      "Mercearia",
      false
    ],
    [
      "Mistura para Bolo Cenoura Cobertura de Chocolate Dr. Oetker Caixa 450g",
      "9.99",
      "Mercearia",
      false
    ],
    [
      "Mistura para Bolo Chocolate Diet Zero Lactose Linea Caixa 300g",
      "10.34",
      "Mercearia",
      false
    ],
    [
      "Mistura para Bolo Chocolate Duo Paixão Dr. Oetker Caixa 450g",
      "10.49",
      "Mercearia",
      false
    ],
    [
      "Mistura para Bolo Chocolate sem Glúten Dr. Oetker Caixa 300g",
      "6.89",
      "Mercearia",
      false
    ],
    [
      "Mistura para Bolo Cremoso Aipim Fleischmann Pacote 450g",
      "4.19",
      "Mercearia",
      false
    ],
    [
      "Mistura para Bolo Cremoso Chocomousse Fleischmann Pacote 450g",
      "6.49",
      "Mercearia",
      false
    ],
    [
      "Mistura para Bolo Fubá Fleischmann Pacote 450g",
      "6.49",
      "Mercearia",
      false
    ],
    [
      "Mistura para Bolo Laranja Fleischmann Pacote 450g",
      "3.89",
      "Mercearia",
      false
    ],
    [
      "Mistura para Bolo Toalha Felpuda Coco Gelado Dr. Oetker Caixa 406g",
      "9.99",
      "Mercearia",
      false
    ],
    [
      "Mistura para o Preparo de Chocolate Europeu Santa Mônica Pacote 1kg",
      "64.99",
      "Mercearia",
      false
    ],
    [
      "Mistura para Panqueca Americana Baunilha Dr. Oetker Sachê 220g",
      "4.99",
      "Mercearia",
      false
    ],
    [
      "Mistura para Pão e Pizza sem Glúten Dr. Oetker Pacote 300g",
      "12.99",
      "Mercearia",
      false
    ],
    [
      "Mix de Grãos Cozido no Vapor Orgânico Vapz Caixa 250g",
      "6.99",
      "Mercearia",
      false
    ],
    [
      "Mix de Pimentas em Grãos Member's Mark Vidro 200g",
      "28.99",
      "Mercearia",
      false
    ],
    ["Mix Quinoa Graos Villa Cerroni Pote 600g", "39.99", "Mercearia", false],
    [
      "Mochaccino em Cápsula Canela Dolce Gusto Nescafé Caixa 16 Unidades 275g",
      "24.99",
      "Mercearia",
      false
    ],
    [
      "Molho Agridoce Cebola Caramelizada Queensberry Vidro 310g",
      "14.99",
      "Mercearia",
      false
    ],
    ["Molho Barbecue Hemmer Squeeze 1kg", "16.99", "Mercearia", false],
    [
      "Molho Cesar para Salada Wish Bone Squeeze 425g",
      "29.99",
      "Mercearia",
      false
    ],
    [
      "Molho Cremoso à Base de Vegetais Alho NotCo Not Mayo Squeeze 350g",
      "12.98",
      "Mercearia",
      false
    ],
    [
      "Molho Cremoso à Base de Vegetais Original NotCo Not Mayo Squeeze 350g",
      "12.98",
      "Mercearia",
      false
    ],
    [
      "Molho de Pimenta 5 Chipotle Bombay Frasco 60ml",
      "10.99",
      "Mercearia",
      false
    ],
    [
      "Molho de Pimenta 5 Jalapeño Bombay Frasco 60ml",
      "10.99",
      "Mercearia",
      false
    ],
    [
      "Molho de Pimenta Adocicado Kalassi Frasco 370g",
      "24.99",
      "Mercearia",
      false
    ],
    [
      "Molho de Pimenta Chipotle Tabasco Frasco 60ml",
      "21.98",
      "Mercearia",
      false
    ],
    [
      "Molho de Pimenta Dedo-de-Moça Bombay Herbs & Spices Chilli Code 7 Frasco 60ml",
      "10.98",
      "Mercearia",
      false
    ],
    [
      "Molho de Pimenta Jalapeño Suave Tabasco Frasco 60ml",
      "19.99",
      "Mercearia",
      false
    ],
    [
      "Molho de Pimenta Sriracha Bombay Herbs & Spices Frasco 330g",
      "18.98",
      "Mercearia",
      false
    ],
    [
      "Molho de Pimenta Sriracha Tabasco Frasco 256ml",
      "34.99",
      "Mercearia",
      false
    ],
    [
      "Molho de Pimenta-Vermelha Original Tabasco Frasco 60ml",
      "21.98",
      "Mercearia",
      false
    ],
    [
      "Molho de Queijo Azul para Salada Wish Bone Squeeze 425g",
      "29.99",
      "Mercearia",
      false
    ],
    ["Molho de Soja Light Sakura Vidro 150ml", "6.99", "Mercearia", false],
    ["Molho de Soja Sakura Premium Frasco 150ml", "8.99", "Mercearia", false],
    ["Molho de Tomate à Bolonhesa Barilla 400g", "21.99", "Mercearia", false],
    [
      "Molho de Tomate Cereja Member's Mark Vidro 580g",
      "29.99",
      "Mercearia",
      false
    ],
    [
      "Molho de Tomate Cereja Member's Mark Vidro 660g",
      "22.98",
      "Mercearia",
      false
    ],
    [
      "Molho de Tomate Cereja Passata Member's Mark Pack 2 Unidades 520g Cada",
      "24.99",
      "Mercearia",
      false
    ],
    ["Molho de Tomate com Azeitona Barilla 400g", "21.99", "Mercearia", false],
    [
      "Molho de Tomate com Manjericão Barilla 400g",
      "21.99",
      "Mercearia",
      false
    ],
    ["Molho de Tomate Napoletana Barilla 400g", "21.99", "Mercearia", false],
    [
      "Molho de Tomate Pomarola Tradicional Pack com 3 Unidades 340g Cada",
      "7.49",
      "Mercearia",
      false
    ],
    [
      "Molho de Tomate Tradicional Heinz Sachê 1.02kg",
      "5.99",
      "Mercearia",
      false
    ],
    ["Molho de Tomate Tradicional Prego 680g", "25.98", "Mercearia", false],
    [
      "Molho Especial para Yakissoba Sakura Frasco 500ml",
      "10.99",
      "Mercearia",
      false
    ],
    [
      "Molho Italiano para Salada Wish Bone Squeeze 425g",
      "29.99",
      "Mercearia",
      false
    ],
    [
      "Molho Italiano Tradicional Champgnon Prego Pote 680g",
      "28.99",
      "Mercearia",
      false
    ],
    [
      "Molho Pesto Alla Genovese Di Salerno Vidro 180g",
      "29.99",
      "Mercearia",
      false
    ],
    [
      "Molho Pomodoro e Datterini Barilla Vidro 400g",
      "19.99",
      "Mercearia",
      false
    ],
    [
      "Molho Pronto Ricotta e Tomate Cereja Member's Mark Vidro 580g",
      "29.99",
      "Mercearia",
      false
    ],
    [
      "Molho Pronto Tomate Cereja Amarelo Member's Mark Vidro 360g",
      "15.00",
      "Mercearia",
      false
    ],
    ["Molho Shoyu Sakura Light Garrafa 1l", "18.99", "Mercearia", false],
    ["Molho Shoyu Tradicional Sakura Garrafa 1l", "10.99", "Mercearia", false],
    ["Molho Tarê Sakura Frasco 180ml", "4.98", "Mercearia", false],
    [
      "Mostarda Amarela Americana Hemmer Squeeze 1kg",
      "11.99",
      "Mercearia",
      false
    ],
    [
      "Mostarda Amarela Heinz Pack 2 Unidades 255g Cada",
      "14.50",
      "Mercearia",
      false
    ],
    [
      "Mostarda em Grãos com Vinho Branco Maille Pote 845g",
      "46.98",
      "Mercearia",
      false
    ],
    [
      "Mostarda Escura Holandesa Hemmer Squeeze 1kg",
      "12.99",
      "Mercearia",
      false
    ],
    ["Nhoque de Batata Member's Mark Pacote 1kg", "15.89", "Mercearia", false],
    ["Óleo Composto Maria Tradicional Frasco 2l", "29.99", "Mercearia", false],
    [
      "Óleo de Canola Tipo 1 Liza Especiais Frasco 900ml",
      "11.50",
      "Mercearia",
      false
    ],
    [
      "Óleo de Canola Tipo 1 Purilev Garrafa 900ml",
      "14.99",
      "Mercearia",
      false
    ],
    ["Óleo de Canola Tipo 1 Salada Garrafa 900ml", "10.50", "Mercearia", false],
    ["Óleo de Coco Copra Pote 1l", "39.99", "Mercearia", false],
    ["Óleo de Coco Extra Virgem Copra 1l", "47.99", "Mercearia", false],
    [
      "Óleo de Gergelim Miyako Pack com 2 Unidades 100ml Cada",
      "42.98",
      "Mercearia",
      false
    ],
    [
      "Óleo de Girassol Tipo 1 Liza Especiais Frasco 900ml",
      "10.99",
      "Mercearia",
      false
    ],
    [
      "Óleo de Girassol Tipo 1 Mazola Frasco 900ml",
      "14.50",
      "Mercearia",
      false
    ],
    [
      "Óleo de Girassol Tipo 1 Salada Garrafa 900ml",
      "11.50",
      "Mercearia",
      false
    ],
    [
      "Óleo de Milho Tipo 1 Liza Especiais Garrafa 900ml",
      "11.50",
      "Mercearia",
      false
    ],
    ["Óleo de Milho Tipo 1 Mazola Frasco 900ml", "14.50", "Mercearia", false],
    ["Óleo de Milho Tipo 1 Salada Garrafa 900ml", "10.99", "Mercearia", false],
    ["Óleo de Soja Soya Garrafa 900ml", "7.39", "Mercearia", false],
    ["Óleo de Soja Tipo 1 Leve Frasco 900ml", "7.29", "Mercearia", false],
    ["Óleo de Soja Tipo 1 Liza Frasco 900ml", "6.99", "Mercearia", false],
    ["Óleo de Soja Tipo 1 Primor Garrafa 900ml", "7.59", "Mercearia", false],
    ["Orégano em Folhas Member's Mark Vidro 45g", "13.99", "Mercearia", false],
    ["Ovinhos de Amendoim Agtal Pacote 600g", "21.98", "Mercearia", false],
    [
      "Ovinhos de Amendoim Elma Chips 400g Embalagem Econômica",
      "11.99",
      "Mercearia",
      false
    ],
    [
      "Palitinho de Trigo Elma Chips Stiksy Clássicos Pacote 130g",
      "4.89",
      "Mercearia",
      false
    ],
    [
      "Palmito de Açaí Inteiro em Conserva Imperador Vidro 500g",
      "22.98",
      "Mercearia",
      false
    ],
    [
      "Palmito De Pupunha Bonduelle Pack com 2 Unidades 520g Cada",
      "59.99",
      "Mercearia",
      false
    ],
    [
      "Palmito Premium de Pupunha em Conserva Aperitivo Qualidoro Vidro Pack com 2 Unidades 270g Cada",
      "19.99",
      "Mercearia",
      false
    ],
    [
      "Palmito Pupunha em Conserva Bonduelle Vidro 270g",
      "26.98",
      "Mercearia",
      false
    ],
    [
      "Palmito Pupunha em Fatias Member's Mark Pack com 2 Unidades 270g Cada",
      "27.99",
      "Mercearia",
      false
    ],
    [
      "Palmito Pupunha Member's Mark Pack com 2 Unidades 270g Cada",
      "32.99",
      "Mercearia",
      false
    ],
    [
      "Palmito Pupunha Picado Qualidoro Vidro 1.2kg",
      "29.98",
      "Mercearia",
      false
    ],
    [
      "Palmito Pupunha Rodela Qualidoro Vidro 1.2kg",
      "35.99",
      "Mercearia",
      false
    ],
    [
      "Palmito Pupunha Spaghetti Member's Mark Pack 2 Unidades 270g Cada",
      "22.99",
      "Mercearia",
      false
    ],
    [
      "Paprica Picante em Pó Member's Mark Vidro 170g",
      "19.99",
      "Mercearia",
      false
    ],
    [
      "Pasta de Amendoim Integral Amendo Lovers Pote 500g",
      "18.99",
      "Mercearia",
      false
    ],
    [
      "Pasta Fettuccine Carbonara Firma Itália Sachê 175g",
      "9.99",
      "Mercearia",
      false
    ],
    [
      "Pasta Penne Al Funghi Firma Italia Sachê 175g",
      "9.98",
      "Mercearia",
      false
    ],
    [
      "Patê de Atum Gomes da Costa Pack com 2 Unidades 150g Cada",
      "14.50",
      "Mercearia",
      false
    ],
    [
      "Peito de Frango Cozido Desfiado Vapza Caixa 400g",
      "19.99",
      "Mercearia",
      false
    ],
    [
      "Penne Grano Duro Member's Mark Pack com 6 Unidades 500g Cada",
      "38.99",
      "Mercearia",
      false
    ],
    [
      "Pepino em Conserva Agridoce Hemmer Vidro 440g",
      "12.99",
      "Mercearia",
      false
    ],
    ["Pepino em Conserva Raiola Vidro 300g", "13.99", "Mercearia", false],
    ["Pera em Conserva Kronos Lata 400g", "16.98", "Mercearia", false],
    ["Pêssego em Conserva Kronos Lata 400g", "16.99", "Mercearia", false],
    ["Pêssego Extra em Calda Schramm Lata 450g", "6.91", "Mercearia", false],
    [
      "Pêssego Metade em Calda Zero Schramm Lata 450g",
      "8.99",
      "Mercearia",
      false
    ],
    ["Pêssegos em Caldas Kronos Lata 820g", "11.99", "Mercearia", false],
    ["Pimenta Biquinho Alinutri Vidro 190g", "15.99", "Mercearia", false],
    [
      "Pimenta Biquinho Member's Mark Vidro 1.19kg",
      "55.00",
      "Mercearia",
      false
    ],
    [
      "Pimenta Calabresa em Flocos Member's Mark Vidro 130g",
      "17.99",
      "Mercearia",
      false
    ],
    [
      "Pimenta do Reino Preta em Grãos Member's Mark Vidro 190g",
      "19.99",
      "Mercearia",
      false
    ],
    [
      "Pipoca de Micro-ondas Yoki Natural com Sal Pack com 2 Unidades 100g Cada",
      "5.98",
      "Mercearia",
      false
    ],
    [
      "Pipoca para Microondas Sabor Manteiga Yoki Pack com 2 Unidades 100g Cada",
      "5.98",
      "Mercearia",
      false
    ],
    ["Polenta com Queijo Firma Italia Sachê 170g", "9.99", "Mercearia", false],
    ["Polpa de Alho Member's Mark Pote 400g", "10.99", "Mercearia", false],
    ["Polpa de Cebola Alinutri Pote 500g", "13.99", "Mercearia", false],
    [
      "Polpa de Tomate Pomodoro Pack com 3 Unidades 520g Cada",
      "10.99",
      "Mercearia",
      false
    ],
    ["Polvilho Azedo Yoki Pacote 1kg", "16.49", "Mercearia", false],
    [
      "Popcorn Natural Micro Yoki Pack com 2 Unidades 100g Cada",
      "5.98",
      "Mercearia",
      false
    ],
    [
      "Purê de Tomate Passata Rustica Cirio Pack com 2 Unidades 680g Cada",
      "34.98",
      "Mercearia",
      false
    ],
    [
      "Quinoa Branca em Flocos Villa Cerroni Pote 350g",
      "25.99",
      "Mercearia",
      false
    ],
    [
      "Quinoa Branca em Grãos Villa Cerroni Pote 600g",
      "34.99",
      "Mercearia",
      false
    ],
    [
      "Quinoa Cozida no Vapor Orgânica Vapz Caixa 250g",
      "7.99",
      "Mercearia",
      false
    ],
    ["Realçador de Sabor Aji-Sal Pacote 1kg", "11.50", "Mercearia", false],
    [
      "Risotto Al Funghi com Molho de Cogumelo Firmaitalia Sachê 175g",
      "11.99",
      "Mercearia",
      false
    ],
    [
      "Risotto Al Tartufo Trufado Firma Italia Sachê 175g",
      "11.99",
      "Mercearia",
      false
    ],
    [
      "Risotto Alla Parmigiana com Molho de Queijo Firmaitalia Sachê 175g",
      "11.99",
      "Mercearia",
      false
    ],
    [
      "Risotto Molho Aspargos Firma Italia Sachê 175g",
      "9.99",
      "Mercearia",
      false
    ],
    [
      "Sal de Parrilla para Churrasco Clássico Br Spices Pote 1.1kg",
      "18.99",
      "Mercearia",
      false
    ],
    ["Sal Grosso para Churrasco Cisne 1kg", "1.99", "Mercearia", false],
    ["Sal Líquido Cisne 250ml", "11.99", "Mercearia", false],
    [
      "Sal Marinho Moído Integral Jasmine Atlantis Pacote 1kg",
      "3.99",
      "Mercearia",
      false
    ],
    ["Sal Refinado Diana 1kg", "1.69", "Mercearia", false],
    [
      "Sal Refinado Extra Iodado Tradicional Cisne 1kg",
      "1.99",
      "Mercearia",
      false
    ],
    ["Sal Refinado Light Cisne 500g", "5.49", "Mercearia", false],
    ["Sal Rosa do Himalaia Dani Pote 1kg", "24.98", "Mercearia", false],
    ["Saleiro Cozinha Cisne 500g", "5.99", "Mercearia", false],
    [
      "Salgadinho de Batata Sabor Original Pringles Pack com 3 Unidades 114g",
      "22.47",
      "Mercearia",
      false
    ],
    [
      "Salgadinho de Milho Cebolitos Clássicos Elma Chips Pacote 190g",
      "9.99",
      "Mercearia",
      false
    ],
    [
      "Salgadinho de Milho Cheetos Requeijão Elma Chips Pacote 280g Embalagem Econômica",
      "7.39",
      "Mercearia",
      false
    ],
    [
      "Salgadinho de Milho com Wasabi Doritos Pacote78g",
      "5.99",
      "Mercearia",
      false
    ],
    [
      "Salgadinho de Milho Doritos Queijo Nacho Elma Chips Pacote 300g",
      "15.99",
      "Mercearia",
      false
    ],
    [
      "Salgadinho de Milho Fandangos Presunto Elma Chips 230g",
      "9.99",
      "Mercearia",
      false
    ],
    [
      "Salgadinho de Trigo Bacon Pingo d'Ouro Clássicos Elma Chips Pacote130g",
      "4.89",
      "Mercearia",
      false
    ],
    [
      "Salgadinho de Trigo Baconzitos Clássicos Elma Chips Pacote 103g",
      "7.49",
      "Mercearia",
      false
    ],
    [
      "Salgadinho de Trigo Sabor Bacon Member's Mark Pacote 500g",
      "9.99",
      "Mercearia",
      false
    ],
    [
      "Salgadinho de Trigo Sabor Cebola Member's Mark Pacote 500g",
      "9.99",
      "Mercearia",
      false
    ],
    [
      "Salgadinho de Trigo Sabor Churrasco Member's Mark Pacote 500g",
      "9.99",
      "Mercearia",
      false
    ],
    ["Sardela Damm Pack 2 Unidades 120g cada", "17.79", "Mercearia", false],
    [
      "Sardinha com Óleo Gomes da Costa Pack com 5 Unidades 125g Cada",
      "26.50",
      "Mercearia",
      false
    ],
    ["Semôla de Grano Duro Divella 500g", "8.49", "Mercearia", false],
    ["Sequilho de Queijo Sequilhato Pote 400g", "18.90", "Mercearia", false],
    [
      "Snack de Trigo Peito de Peru com Requeijão Crocantíssimo 40g",
      "1.99",
      "Mercearia",
      false
    ],
    [
      "Snack de Trigo Queijo & Cebola Crocantíssimo 40g",
      "1.99",
      "Mercearia",
      false
    ],
    [
      "Spaghetti Grano Duro Member's Mark Pack com 6 Unidades 500g Cada",
      "38.99",
      "Mercearia",
      false
    ],
    [
      "Sucrilhos Kelloggs Pack com 2 Unidades 750G Cada",
      "37.99",
      "Mercearia",
      false
    ],
    [
      "Talharim Instantâneo Bolonhesa Nissin Pack com 5 Unidades 109g Cada",
      "10.95",
      "Mercearia",
      false
    ],
    [
      "Talharim Tipo Caseiro De Pack com 2 Unidades 500g Cada",
      "12.99",
      "Mercearia",
      false
    ],
    [
      "Talharin ao Pesto Sorrisitalia Firma Italia Sachê 175g",
      "9.99",
      "Mercearia",
      false
    ],
    ["Tapioca BeijuBom Pacote 1kg", "6.98", "Mercearia", false],
    [
      "Tapioca Hidratada Delioca Premium Sachê 560g 7 Unidades",
      "14.99",
      "Mercearia",
      false
    ],
    ["Tapioca Orgânica BeijuBom Pacote 420g", "6.98", "Mercearia", false],
    [
      "Tempero com Pimenta Sabor Limão Lemon Pepper Member's Mark Vidro 230g",
      "23.99",
      "Mercearia",
      false
    ],
    [
      "Tomate Cereja em Suco de Tomate Pomodorini Cirio Pack com 3 Unidades 400g Cada",
      "22.99",
      "Mercearia",
      false
    ],
    ["Tomate Pelado Cirio 480g", "10.99", "Mercearia", false],
    [
      "Tomate Pelado Cirio Pack com 3 Unidades 400g Cada",
      "16.99",
      "Mercearia",
      false
    ],
    [
      "Tomate Pelado em Conserva Di Salerno Lata 2.5kg",
      "32.99",
      "Mercearia",
      false
    ],
    ["Tomate Pelado Raiola Lata 2.55kg", "28.98", "Mercearia", false],
    [
      "Tomate Seco em Conserva Di Salerno Vidro 500g",
      "38.99",
      "Mercearia",
      false
    ],
    ["Torrada Alho Florio Pacote 400g", "17.99", "Mercearia", false],
    [
      "Torrada com Azeite e Sal Member's Mark Pacote 400g",
      "25.98",
      "Mercearia",
      false
    ],
    ["Torrada Fina Slim Tost Fhom Caixa 110g", "9.98", "Mercearia", false],
    ["Torrada Integral Bauducco Pacote 284g", "5.99", "Mercearia", false],
    ["Torrada Integral Member's Mark Caixa 300gr", "12.99", "Mercearia", false],
    [
      "Torrada Integral Whole Wheat Toast Bakery Danesita Caixa 240g",
      "13.98",
      "Mercearia",
      false
    ],
    [
      "Torrada Magic Toast Integral Marilan Pack 3 Unidades 150g cada",
      "12.50",
      "Mercearia",
      false
    ],
    [
      "Torrada Multicereais Lev Magic Toast Marilan Pack com 3 Unidades 150g Cada",
      "12.50",
      "Mercearia",
      false
    ],
    ["Torrada Multigrãos Bauducco Pacote 284g", "4.99", "Mercearia", false],
    ["Torrada Parmesão Florio Pacote 400g", "17.99", "Mercearia", false],
    [
      "Torrada Tradicional Member's Mark Caixa 300g",
      "12.99",
      "Mercearia",
      false
    ],
    [
      "Torresmo para Microondas Santa Massa Bandeja 60g",
      "8.99",
      "Mercearia",
      false
    ],
    [
      "Tortilha Chips Picante Frontera Tex Mex Pacote 200g",
      "15.99",
      "Mercearia",
      false
    ],
    [
      "Vinagre Balsâmico de Modena Di Salerno 500ml",
      "12.99",
      "Mercearia",
      false
    ],
    [
      "Vinagre Balsâmico Pietro Caricelli Frasco 1l",
      "20.99",
      "Mercearia",
      false
    ],
    [
      "Vinagre Castelo Pack com 3 Unidades 750ml Cada",
      "9.99",
      "Mercearia",
      false
    ],
    ["Vinagre de Álcool Minhoto Garrafa 750ml", "2.99", "Mercearia", false],
    ["Vinagre de Cereal Arroz Kenko Frasco 750ml", "7.48", "Mercearia", false],
    ["Vinagre de Framboesa Colavita 500ml", "18.99", "Mercearia", false],
    ["Vinagre de Maçã Leve Vita Castelo 500ml", "19.99", "Mercearia", false],
    [
      "Vinagre de Vinho Branco Importado Colavita Frasco 500ml",
      "14.99",
      "Mercearia",
      false
    ],
    ["Vinagre de Vinho Tinto Colavita 500ml", "14.98", "Mercearia", false],
    [
      "Água de Coco Esterilizada Kero Coco Kids Pack 27 Unidades 200ml Cada",
      "45.99",
      "Bebidas",
      false
    ],
    [
      "Água de Coco Esterilizada Kero Coco Pack 12 Unidades 330ml Cada",
      "39.50",
      "Bebidas",
      false
    ],
    [
      "Água de Coco Pasteurizada Aqua Coco Garrafa 1l",
      "14.49",
      "Bebidas",
      false
    ],
    [
      "Água Mineral com Gás Prata Club Soda Garrafa Garrafa 200ml",
      "4.99",
      "Bebidas",
      false
    ],
    ["Água Mineral Gaseificada Ix Soda Garrafa 2l", "11.49", "Bebidas", false],
    [
      "Água Mineral Gaseificada Soda Garrafa LX 1.75l",
      "13.49",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural com Gás Água Leve Bonafont Pack 12 Unidades 500ml Cada",
      "20.50",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural com Gás Água Leve Bonafont Pack 6 Unidades 1.36l Cada",
      "14.50",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural com Gás Água Leve Bonafont Pack com 12 Unidades 330ml Cada",
      "16.99",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural com Gás Anniversary Edition S. Pellegrino Garrafa 750ml",
      "17.80",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural com Gás Anniversary Edition S. Pellegrino Garrafa 750ml",
      "17.80",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural com Gás Crystal Pack 12 Unidades 500ml Cada",
      "18.98",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural com Gás Crystal Pack 6 Unidades 1.5l Cada",
      "13.99",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural com Gás Indaiá Pack 12 Garrafas 500ml Cada",
      "16.99",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural com Gás Minalba Pack 6 Unidades 1.5l Cada",
      "13.99",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural com Gás Minalba Premium 300ml",
      "4.79",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural com Gás S. Pellegrino 250ml",
      "10.49",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural com Gás S. Pellegrino Garrafa 1l",
      "12.50",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural com Gás São Lourenço Pack 12 Unidades 300ml Cada",
      "18.99",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural com Gás São Lourenço Pack 6 Unidades 1.26l Cada",
      "17.99",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural com Gás São Lourenço Pack 6 Unidades 510ml Cada",
      "10.74",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural com Gás Sferriê Pack 12 Unidades 510ml Cada",
      "21.48",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural sem Gás Água Leve Bonafont Galão 6.25l",
      "8.99",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural sem Gás Bonafont Pack com 8 Unidades 1.5ml Cada",
      "16.50",
      "Bebidas",
      false
    ],
    ["Água Mineral Natural sem Gás Crystal Galão 5l", "7.68", "Bebidas", false],
    [
      "Água Mineral Natural sem Gás Crystal Pack 12 Unidades 500ml Cada",
      "10.50",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural sem Gás Crystal Pack 6 Unidades 1.5l Cada",
      "11.29",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural sem Gás Font Life Galão 10l",
      "8.98",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural sem Gás Font Life Pack com 12 Unidades 510ml Cada",
      "10.99",
      "Bebidas",
      false
    ],
    ["Água Mineral Natural sem Gás Indaiá Galão 5l", "7.89", "Bebidas", false],
    [
      "Água Mineral Natural sem Gás Indaiá Pack 12 Unidades 500ml Cada",
      "12.99",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural sem Gás Indaiá Pack 6 Unidades 1.5l Cada",
      "9.99",
      "Bebidas",
      false
    ],
    ["Água Mineral Natural sem Gás Minalba 10l", "12.99", "Bebidas", false],
    [
      "Água Mineral Natural sem Gás Minalba Pack 6 Unidades 1.5l Cada",
      "11.94",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural sem Gás Nestlé Pureza Vital Pack 12 Unidades 510ml Cada",
      "9.29",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural sem Gás Nestlé Pureza Vital Pack 6 Unidades 1.5l Cada",
      "9.89",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural sem Gás Ouro Fino Galão 10l",
      "9.98",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural sem Gás São Lourenço Pack 6 Unidades 510ml Cada",
      "9.99",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural sem Gás São Lourenço Pack com 12 Unidades 300ml Cada",
      "17.99",
      "Bebidas",
      false
    ],
    [
      "Água Mineral Natural sem Gás Sferrie Pack 6 Unidades 1.5l Cada",
      "15.49",
      "Bebidas",
      false
    ],
    [
      "Água Saborizada com Gás Lemon Bonafont Pack 12 Unidades 500ml Cada",
      "23.99",
      "Bebidas",
      false
    ],
    [
      "Água Saborizada com Gás Lemon Bonafont Pack 6 Unidades 1.27l Cada",
      "17.99",
      "Bebidas",
      false
    ],
    [
      "Água Saborizada com Gás Morango Perrier Garrafa 250ml",
      "7.49",
      "Bebidas",
      false
    ],
    [
      "Água Saborizada com Gás Tangerina Bonafont Pack com 12 Unidades 500ml Cada",
      "23.99",
      "Bebidas",
      false
    ],
    [
      "Água Saborizada com Gás Tangerina Bonafont Pack com 3 Unidades 1.27l Cada",
      "17.99",
      "Bebidas",
      false
    ],
    [
      "Água sem Gás Bonafont Pack com 24 Unidades 500ml Cada",
      "25.99",
      "Bebidas",
      false
    ],
    [
      "Água Tônica Antarctica Pack com 12 Unidades 350ml Cada",
      "28.68",
      "Bebidas",
      false
    ],
    [
      "Água Tônica Antarctica Pack com 15 Unidades 269ml Cada",
      "29.85",
      "Bebidas",
      false
    ],
    [
      "Água Tônica Ginger Wewi Pack 6 Unidades 255ml cada",
      "29.94",
      "Bebidas",
      false
    ],
    ["Água Tônica Prata Lata 269ml", "3.99", "Bebidas", false],
    ["Água Tônica Prata Zero Açúcar Lata 269ml", "3.99", "Bebidas", false],
    [
      "Água Tônica Schweppes Pack 6 Unidades 350ml Cada",
      "14.88",
      "Bebidas",
      false
    ],
    [
      "Água Tônica Zero Açúcar Schweppes Pack com 6 Unidades 220ml Cada",
      "10.74",
      "Bebidas",
      false
    ],
    ["Aperitivo Bitter Campari Garrafa 900ml", "39.99", "Bebidas", false],
    ["Aperitivo de Ervas Aperol Garrafa 750ml", "44.90", "Bebidas", false],
    [
      "Bebida à Base de Soja Maçã Yakult Tonyu Pack com 3 Unidades 200ml Cada",
      "7.16",
      "Bebidas",
      false
    ],
    ["Bebida Adoçada Cranberry Juxx Garrafa 1l", "12.99", "Bebidas", false],
    ["Bebida Caju Do Bem Caixa 1l", "6.99", "Bebidas", false],
    ["Bebida Cranberry e Morango Juxx Garrafa 1l", "12.99", "Bebidas", false],
    ["Bebida de Amêndoa a Tal Da Castanha Caixa 1l", "14.98", "Bebidas", false],
    [
      "Bebida de Castanha de Caju A Tal da Castanha Original Caixa 1L",
      "14.98",
      "Bebidas",
      false
    ],
    ["Bebida Goiaba Do Bem Caixa 1l", "6.99", "Bebidas", false],
    ["Bebida Manga Do Bem Caixa 1l", "6.99", "Bebidas", false],
    [
      "Bebida Mista Alcoólica Gaseificada Limão Smirnoff Ice Pack com 6 Unidades 275ml Cada",
      "38.99",
      "Bebidas",
      false
    ],
    [
      "Bebida Orgânica Limonada Poder da Terra Caixa 1l",
      "6.79",
      "Bebidas",
      false
    ],
    [
      "Bebida Orgânica Pink Lemonade Poder da Terra Caixa 1l",
      "6.79",
      "Bebidas",
      false
    ],
    ["Bebida Pêssego Do Bem Caixa 1l", "6.99", "Bebidas", false],
    ["Bebida Uva Do Bem Caixa 1l", "6.99", "Bebidas", false],
    [
      "Cerveja Ale Puro Malte Esb Fuller's Garrafa 500ml",
      "29.99",
      "Bebidas",
      false
    ],
    ["Cerveja Alkoholfrei Erdinger Lata 500ml", "22.90", "Bebidas", false],
    ["Cerveja Amber Lager Patagonia Garrafa 740ml", "15.98", "Bebidas", false],
    [
      "Cerveja American IPA Puro Malte Baden Baden Garrafa 600ml",
      "11.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja American IPA Puro Malte Eisenbahn Pack com 6 Unidades 350ml Cada",
      "26.34",
      "Bebidas",
      false
    ],
    [
      "Cerveja American Lager Premium Puro Malte Skol Pack 12 Latas 350ml cada",
      "29.76",
      "Bebidas",
      false
    ],
    [
      "Cerveja Belgian Golden Ale Duvel Garrafa 330ml",
      "27.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja Belgian White Ale Blue Moon Garrafa 355ml",
      "17.90",
      "Bebidas",
      false
    ],
    ["Cerveja Blond Leffe Garrafa 330ml", "11.90", "Bebidas", false],
    [
      "Cerveja Bohemian Pilsener Puro Malte Patagonia Garrafa 740ml",
      "11.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja Caminho das Indias Paulistânia Garrafa 500ml",
      "15.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja Cerpa Export Pack com 4 Garrafas 350ml Cada",
      "43.60",
      "Bebidas",
      false
    ],
    [
      "Cerveja Chopp Lager Brahma Pack com 12 Unidades 350ml Cada",
      "29.88",
      "Bebidas",
      false
    ],
    ["Cerveja Chopp Lager Viva Coruja Garrafa 1l", "30.99", "Bebidas", false],
    [
      "Cerveja Damm Barcelona Estrella Garrafa 660Ml",
      "12.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja de Trigo Belgian Witte Wals Garrafa 600ml",
      "14.98",
      "Bebidas",
      false
    ],
    ["Cerveja Dunkel Erdinger Garrafa 500ml", "27.90", "Bebidas", false],
    [
      "Cerveja East IPA Puro Malte Brooklyn Garrafa 355ml",
      "13.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja East IPA Puro Malte Brooklyn Lata 350ml",
      "11.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja Extra Pilsen Coronita Pack 6 Unidades 210ml Cada",
      "26.32",
      "Bebidas",
      false
    ],
    [
      "Cerveja German Lager Puro Malte Beck's Pack 6 Unidades 330ml Cada",
      "32.94",
      "Bebidas",
      false
    ],
    [
      "Cerveja German Lager Puro Malte Beck's Pack 8 Unidades 350ml Cada",
      "36.97",
      "Bebidas",
      false
    ],
    ["Cerveja Golden Ale Baden Baden Garrafa 600ml", "10.94", "Bebidas", false],
    [
      "Cerveja Golden Lager Premium Cusqueña Garrafa 330ml",
      "7.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja Hefe-Weissbier Não Alcoólica Paulaner Garrafa 500ml",
      "22.90",
      "Bebidas",
      false
    ],
    [
      "Cerveja Hoppy Amber Lager Brooklyn Lata 350ml",
      "11.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja Imperial IPA Vixnu Colorado Garrafa 600ml",
      "15.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja Importada Extra Clara Oktoberfest Bier Paulaner Lata 500ml",
      "17.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja Importada Mista Lemon Radler Paulaner Lata 500ml",
      "23.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja Importada Tsingão Pack com 6 Unidades 330ml Cada",
      "29.94",
      "Bebidas",
      false
    ],
    [
      "Cerveja Importada Weissbier 0.0% Paulaner Lata 500ml",
      "17.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja India Pale Ale Indica Colorado Garrafa 600ml",
      "15.99",
      "Bebidas",
      false
    ],
    ["Cerveja Ipa Maniacs Garrafa 600ml", "12.99", "Bebidas", false],
    ["Cerveja IPA Puro Malte Maniacs Lata 350ml", "5.99", "Bebidas", false],
    [
      "Cerveja IPA Puro Malte Maracujá Baden Baden Pack 6 Latas 350ml cada",
      "28.50",
      "Bebidas",
      false
    ],
    ["Cerveja Karlsbrau Helles Garrafa 500ml", "11.99", "Bebidas", false],
    ["Cerveja Karlsbrau Urpils Garrafa 500ml", "12.99", "Bebidas", false],
    ["Cerveja Lager 1795 Garrafa 500ml", "19.99", "Bebidas", false],
    ["Cerveja Lager Budweiser Garrafa 550ml", "5.99", "Bebidas", false],
    [
      "Cerveja Lager Budweiser Pack com 12 Latas 350ml Cada",
      "32.28",
      "Bebidas",
      false
    ],
    [
      "Cerveja Lager Budweiser Pack com 6 Unidades 330ml Cada",
      "24.54",
      "Bebidas",
      false
    ],
    ["Cerveja Lager Heineken Garrafa 600ml", "10.50", "Bebidas", false],
    [
      "Cerveja Lager Heineken Pack com 6 Unidades 250ml Cada",
      "19.74",
      "Bebidas",
      false
    ],
    ["Cerveja Lager Premium Heineken Barril 5l", "74.90", "Bebidas", false],
    [
      "Cerveja Lager Premium Kirin Ichiban Garrafa Pack 6 Unidades 355ml Cada",
      "27.54",
      "Bebidas",
      false
    ],
    [
      "Cerveja Lager Premium Puro Malte Zero Álcool Heineken Pack 12 Unidades 350ml Cada",
      "53.88",
      "Bebidas",
      false
    ],
    [
      "Cerveja Lager Premium Puro Malte Zero Álcool Heineken Pack 6 Unidades 330ml Cada",
      "29.94",
      "Bebidas",
      false
    ],
    [
      "Cerveja Lager Premium Stella Artois Garrafa 550ml",
      "7.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja Lager Premium Stella Artois Pack 6 Unidades 275ml Cada",
      "23.94",
      "Bebidas",
      false
    ],
    ["Cerveja Lager Puro Malte Amstel Lata 473ml", "47.88", "Bebidas", false],
    [
      "Cerveja Lager Puro Malte Amstel Pack 12 Latas 269ml Cada",
      "29.88",
      "Bebidas",
      false
    ],
    [
      "Cerveja Lager Puro Malte Amstel Pack 12 Latas 350ml Cada",
      "29.88",
      "Bebidas",
      false
    ],
    ["Cerveja Lager Ribeirão Colorado Lata 410ml", "3.99", "Bebidas", false],
    [
      "Cerveja Pale Ale Puro Malte Eisenbahn Pack com 6 Unidades 355ml Cada",
      "28.14",
      "Bebidas",
      false
    ],
    [
      "Cerveja Paulaner Original Munchner Hell Garrafa 500ml",
      "17.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja Pilsen Antarctica Original Garrafa 600ml",
      "7.49",
      "Bebidas",
      false
    ],
    ["Cerveja Pilsen Cauim Colorado Garrafa 600ml", "14.98", "Bebidas", false],
    [
      "Cerveja Pilsen Corona Pack com 6 Unidades 330ml Cada",
      "32.94",
      "Bebidas",
      false
    ],
    [
      "Cerveja Pilsen Cristal Baden Baden Garrafa 600ml",
      "11.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja Pilsen Cristal Baden Baden Pack 6 Latas 350ml cada",
      "29.94",
      "Bebidas",
      false
    ],
    [
      "Cerveja Pilsen Lager Premium Stella Artois Pack 6 Garrafas 330ml Cada",
      "26.34",
      "Bebidas",
      false
    ],
    [
      "Cerveja Pilsen Puro Malte Eisenbahn Garrafa 600ml",
      "6.95",
      "Bebidas",
      false
    ],
    [
      "Cerveja Pilsen Puro Malte Eisenbahn Pack com 12 Unidades 350ml Cada",
      "34.68",
      "Bebidas",
      false
    ],
    [
      "Cerveja Pilsen Puro Malte Império Garrafa 600ml",
      "5.89",
      "Bebidas",
      false
    ],
    [
      "Cerveja Pilsen Puro Malte Imperio Lager Garrafa 600ml",
      "7.49",
      "Bebidas",
      false
    ],
    [
      "Cerveja Pilsen Puro Malte König Pilsener Lata 500ml",
      "8.89",
      "Bebidas",
      false
    ],
    ["Cerveja Pilsen Skol Pack 12 Latas 350ml Cada", "28.68", "Bebidas", false],
    ["Cerveja Pilsen Skol Pack 15 Latas 269ml cada", "32.85", "Bebidas", false],
    [
      "Cerveja Pilsner Duplo Malte Brahma Pack com 12 Unidades 350ml Cada",
      "35.88",
      "Bebidas",
      false
    ],
    [
      "Cerveja Porter com Café Demoiselle Colorado Garrafa 600ml",
      "12.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja Puro Malte Bohemia Lata Pack 12 Unidades 350ml Cada",
      "29.99",
      "Bebidas",
      false
    ],
    [
      "Cerveja Puro Malte Lager Devassa Pack 12 Latas 269ml cada",
      "25.08",
      "Bebidas",
      false
    ],
    [
      "Cerveja Samuel Adams Lager Pack com 6 Garrafas 355ml Cada",
      "71.94",
      "Bebidas",
      false
    ],
    [
      "Cerveja Schneider Weisse Avent Eisbock Long Neck 330ml",
      "9.89",
      "Bebidas",
      false
    ],
    [
      "Cerveja Schwarzbier Puro Malte Köstritzer Lata 500ml",
      "8.89",
      "Bebidas",
      false
    ],
    ["Cerveja Session Ipa Madalena Lata 473ml", "17.99", "Bebidas", false],
    [
      "Cerveja Skol Pilsen Pack com 12 Unidades 550ml Cada",
      "41.88",
      "Bebidas",
      false
    ],
    ["Cerveja Slash Origin Lata 500ml", "19.99", "Bebidas", false],
    [
      "Cerveja Sol Premium Pack 6 Unidades 330ml Cada",
      "23.88",
      "Bebidas",
      false
    ],
    [
      "Cerveja Trem das Onze Paulistânia Garrafa 500ml",
      "13.90",
      "Bebidas",
      false
    ],
    ["Cerveja Urweisse Erdinger Garrafa 500ml", "21.99", "Bebidas", false],
    ["Cerveja Wals Session Citra Garrafa 600ml", "15.99", "Bebidas", false],
    ["Cerveja Weiss Madalena Garrafa 600ml", "18.99", "Bebidas", false],
    ["Cerveja Weissbier Erdinger Garrafa 500ml", "19.90", "Bebidas", false],
    ["Cerveja Weissbier Erdinger Lata 500ml", "18.99", "Bebidas", false],
    ["Cerveja Weissbier Paulaner 500ml", "17.99", "Bebidas", false],
    [
      "Cerveja Weisse Laranja e Coentro Patagonia Garrafa 740ml",
      "11.50",
      "Bebidas",
      false
    ],
    [
      "Cerveja Weizenbier Eisenbahn Pack com 6 Unidades 355ml Cada",
      "28.14",
      "Bebidas",
      false
    ],
    ["Cerveja White Vedett Garrafa 330ml", "25.99", "Bebidas", false],
    ["Cerveja Witbier Baden Baden Garrafa 600ml", "11.99", "Bebidas", false],
    [
      "Cerveja Witbier Laranja e Coentro Hoegaarden Garrafa 330ml",
      "7.99",
      "Bebidas",
      false
    ],
    ["Cerveja Witbier Praya Garrafa 600ml", "9.99", "Bebidas", false],
    ["Chá Branco Lichia Life Mix Caixa 1l", "6.79", "Bebidas", false],
    [
      "Chá de Hortelã Twinings Caixa 10 Unidades 20g",
      "13.99",
      "Bebidas",
      false
    ],
    ["Chá Hibisco Life Mix Caixa 1l", "6.79", "Bebidas", false],
    [
      "Chá Ice Tea Limão Zero Açúcar Lipton Garrafa 1.5l",
      "5.49",
      "Bebidas",
      false
    ],
    [
      "Chá Juice e Tea Member's Mark Lichia Garrafa 750ml",
      "8.99",
      "Bebidas",
      false
    ],
    ["Chá Mate Limão Matte Leão Garrafa 1.5l", "4.99", "Bebidas", false],
    ["Chá Mate Limão Matte Leão Zero Garrafa 1.5l", "4.94", "Bebidas", false],
    ["Chá Mate Natural Matte Leão Garrafa 1.5l", "5.49", "Bebidas", false],
    [
      "Chá Mate Original Matte Leão Zero Garrafa 1.5l",
      "4.94",
      "Bebidas",
      false
    ],
    ["Chá Mate Pêssego Matte Leão Garrafa 1.5l", "4.94", "Bebidas", false],
    [
      "Chá Preto Frutas Vermelhas Juice & Tea Member's Mark Garrafa 750ml",
      "8.99",
      "Bebidas",
      false
    ],
    ["Chá Preto Ice Tea Limão Leão Garrafa 1.5l", "5.48", "Bebidas", false],
    ["Chá Preto Ice Tea Pêssego Leão Garrafa 1.5l", "5.48", "Bebidas", false],
    [
      "Chá Preto Limão Siciliano e Erva-Cidreira Juice & Tea Member's Mark Garrafa 750ml",
      "8.99",
      "Bebidas",
      false
    ],
    [
      "Chá Preto Tangerina Juice & Tea Member's Mark Garrafa 750ml",
      "8.99",
      "Bebidas",
      false
    ],
    ["Chá Verde Cranberry Life Mix Caixa 1l", "6.79", "Bebidas", false],
    ["Chá Verde Limão Life Mix Caixa 1l", "6.99", "Bebidas", false],
    [
      "Coca-Cola Original Lata Pack com 6 Unidades 350ml Cada Embalagem Econômica",
      "17.99",
      "Bebidas",
      false
    ],
    ["Conhaque Dreher Garrafa 900ml", "13.49", "Bebidas", false],
    [
      "Coquetel Alcoólico Composto Domecq Garrafa 1l",
      "33.99",
      "Bebidas",
      false
    ],
    [
      "Energético Diet Monster Absolutely Zero Lata 473ml",
      "6.89",
      "Bebidas",
      false
    ],
    ["Energético Flying Horse Garrafa Pet 1L", "4.99", "Bebidas", false],
    [
      "Energético Frutas Tropicais The Tropical Edition Red Bull Pack com 4 Unidades 250ml Cada",
      "27.99",
      "Bebidas",
      false
    ],
    [
      "Energético Juice Monster Mango Loco Lata 473ml",
      "6.19",
      "Bebidas",
      false
    ],
    ["Energético Monster Lata 473ml", "6.19", "Bebidas", false],
    [
      "Energético Monster Ultra Violet Zero Açúcar Lata 473ml",
      "6.89",
      "Bebidas",
      false
    ],
    ["Energético Red Bull Lata 473ml", "11.99", "Bebidas", false],
    [
      "Energético Zero Açúcar Red Bull Pack com 4 Unidades 250ml Cada",
      "27.99",
      "Bebidas",
      false
    ],
    [
      "Gin & Tonica Premium Dry Gordon's Pack com 6 Unidades 269ml Cada",
      "52.80",
      "Bebidas",
      false
    ],
    ["Gin Dry Seagers Garrafa 980ml", "43.99", "Bebidas", false],
    ["Gin London Dry Beefeater Garrafa 750ml", "139.00", "Bebidas", false],
    [
      "Gin London Dry Flor de Sevilla Tanqueray Garrafa 700ml",
      "175.00",
      "Bebidas",
      false
    ],
    ["Gin London Dry Gordon's Garrafa 750ml", "71.90", "Bebidas", false],
    [
      "Gin London Dry Pink Premium Gordon's Garrafa 700ml",
      "99.99",
      "Bebidas",
      false
    ],
    ["Gin London Dry Tanqueray Garrafa 750ml", "135.00", "Bebidas", false],
    [
      "Gin London Dry Torquay Garrafa 740ml Grátis 1 Taça",
      "94.99",
      "Bebidas",
      false
    ],
    [
      "Gin Pink Strawberry Mint Torquay Garrafa 750ml",
      "79.99",
      "Bebidas",
      false
    ],
    [
      "Guaraná Antarctica Pack com 18 Unidades 350ml Cada",
      "35.82",
      "Bebidas",
      false
    ],
    [
      "Isotônico Laranja Gatorade Pack com 6 Unidades 500ml Cada",
      "20.94",
      "Bebidas",
      false
    ],
    [
      "Isotônico Maracujá Gatorade Pack com 6 Unidades 500ml Cada",
      "20.94",
      "Bebidas",
      false
    ],
    [
      "Isotônico Morango e Maracujá Gatorade Pack com 6 Unidades 500ml Cada",
      "20.99",
      "Bebidas",
      false
    ],
    [
      "Isotônico Tangerina Gatorade Pack com 6 Unidades 500ml Cada",
      "20.94",
      "Bebidas",
      false
    ],
    [
      "Isotônico Uva Gatorade Pack com 6 Unidades 500ml Cada",
      "22.89",
      "Bebidas",
      false
    ],
    [
      "Kit 2 Cervejas Weissbier Paulaner Munchen 500ml Cada + Copo",
      "59.99",
      "Bebidas",
      false
    ],
    [
      "Kit Cerveja Quadrupel La Trappe Trappist com 1 Garrafa 750ml + Taça",
      "109.90",
      "Bebidas",
      false
    ],
    ["Kombucha Hibisco + Abacaxi Booz Lata 269ml", "10.90", "Bebidas", false],
    [
      "Kombucha Limão e Gengibre Booz Draft Lata 269ml",
      "9.90",
      "Bebidas",
      false
    ],
    [
      "Kombucha Limão Siciliano + Maracujá e Hortelã Booz Lata 269ml",
      "10.90",
      "Bebidas",
      false
    ],
    [
      "Kombucha Maracujá Clássico Booz Draft Lata 269ml",
      "9.90",
      "Bebidas",
      false
    ],
    ["Licor Creme de Cassis Stock Garrafa 720ml", "47.90", "Bebidas", false],
    ["Licor Fino Amarula Garrafa 750ml", "105.99", "Bebidas", false],
    ["Licor Fino Irish Cream Baileys Garrafa 750ml", "99.99", "Bebidas", false],
    ["Licor Fino Laranja Cointreau Garrafa 700ml", "91.64", "Bebidas", false],
    ["Néctar Laranja Del Valle Caixa 1l", "5.29", "Bebidas", false],
    ["Néctar Manga Del Valle Caixa 1l", "5.29", "Bebidas", false],
    ["Néctar Maracujá Del Valle Caixa 1l", "5.29", "Bebidas", false],
    ["Néctar Pêssego Del Valle Caixa 1l", "5.29", "Bebidas", false],
    ["Néctar Uva Del Valle Caixa 1l", "4.99", "Bebidas", false],
    [
      "Néctar Uva sem Adição de Açúcar Del Valle Caixa 1l",
      "5.29",
      "Bebidas",
      false
    ],
    [
      "One More Drink Cramberry e Guaraná Pack 6 Unidades 269 Ml Cada",
      "19.94",
      "Bebidas",
      false
    ],
    [
      "Pepsi Twist com Suco de Limão Pack com 12 Unidades 350ml Cada",
      "19.90",
      "Bebidas",
      false
    ],
    ["Refresco Limonada Do Bem Caixa 1l", "6.99", "Bebidas", false],
    [
      "Refrigerante Citrus Original Schweppes Pack com 6 Unidades 350ml Cada",
      "14.50",
      "Bebidas",
      false
    ],
    ["Refrigerante Citrus Prata Lata 269ml", "3.99", "Bebidas", false],
    [
      "Refrigerante Citrus Schweppes Pack com 6 Unidades 1.5l Cada",
      "35.28",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Citrus Schweppes Pack com 6 Unidades 350ml Cada",
      "13.99",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Coca Cola Pack com 12 Garrafas 200ml Cada",
      "14.28",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Coca-Cola + Refrigerante Coca-Cola Sem Açúcar Pack com 2 Unidade 2l Cada",
      "14.98",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Coca-Cola + Refrigerante Fanta Pack com 2 Unidades 2l Cada",
      "12.98",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Coca-Cola + Refrigerante Laranja Leve Mais Pague Menos Fanta Pack com 2 Unidades 2l Cada",
      "12.99",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Coca-Cola Menos Açúcar Garrafa 2.5l",
      "7.99",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Coca-Cola Menos Açúcar Garrafa 3l Embalagem Econômica",
      "8.98",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Coca-Cola Pack com 12 Latas 350ml Cada",
      "31.08",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Coca-Cola Pack com 4 Garrafas 1.5l Cada Leve Mais Pague Menos",
      "22.99",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Coca-Cola Pack com 6 Garrafas 250ml Cada",
      "14.28",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Cola Pepsi Garrafa Pack com 6 Unidades 2l Cada",
      "27.54",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Gengibre The London Essence CO. Garrafa 200ml",
      "10.98",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Ginger Ale Schweppes Pack 6 Unidade 220ml Cada",
      "11.88",
      "Bebidas",
      false
    ],
    ["Refrigerante Ginger Prata Garrafa 200ml", "4.99", "Bebidas", false],
    ["Refrigerante Guaraná Antarctica Garrafa 2.5l", "4.99", "Bebidas", false],
    [
      "Refrigerante Guaraná Antarctica Garrafa Pack com 6 Unidades 2l Cada",
      "29.34",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Guaraná Antarctica Pack 15 Unidades Lata 269ml Cada",
      "20.85",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Guaraná Antarctica Pack com 12 Unidades 350ml Cada",
      "23.99",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Guaraná Antarctica Zero Pack 12 Unidades 600ml Cada",
      "30.99",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Guaraná Antarctica Zero Pack com 12 Unidades com 350ml Cada",
      "25.08",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Guaraná Fanta Garrafa Pack com 6 Unidades 1.5l Cada",
      "20.94",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Guaraná Fanta Pack 12 Unidades Garrafa 200ml Cada",
      "12.99",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Guaraná Kuat Garrafa Pack com 6 Unidades 2l Cada",
      "24.50",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Importado Cherry Taste Coca-Cola Lata 330ml",
      "9.98",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Importado Ginger Ale Canada Dry Lata 330ml",
      "9.98",
      "Bebidas",
      false
    ],
    ["Refrigerante Importado Limão 7 Up Lata 330ml", "9.98", "Bebidas", false],
    [
      "Refrigerante Importado Orange Mirinda Lata 330ml",
      "9.98",
      "Bebidas",
      false
    ],
    ["Refrigerante Laranja Fanta Garrafa 2.5l", "6.78", "Bebidas", false],
    [
      "Refrigerante Laranja San Pellegrino Lata 330ml",
      "7.79",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Laranja Sukita Garrafa Pack com 6 Unidades 2l Cada",
      "19.74",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Lemon Fresh Sem Açúcar Sprite Pack com 6 Unidades 510ml Cada",
      "11.94",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Lemon Fresh Sprite Pack 6 Unidades Garrafa 1.5l Cada",
      "20.94",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Limão S. Pellegrino Essenza Lata 330ml",
      "7.79",
      "Bebidas",
      false
    ],
    ["Refrigerante Limão San Pellegrino Lata 330ml", "6.79", "Bebidas", false],
    [
      "Refrigerante Limão Sprite Garrafa Pack com 6 Unidades 2l Cada",
      "39.48",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Limão Zero Açúcar H2OH! Pack com 12 Unidades 500ml Cada",
      "19.90",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Limão Zero Açúcar H2OH! Pack com 6 Unidades 1.5l Cada",
      "34.14",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Limoneto Zero Açúcar H2OH! Pack com 12 Unidades 500ml Cada",
      "31.08",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Limoneto Zero Açúcar H2OH! Pack com 6Unidades 1.5l Cada",
      "34.14",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Natural Cola Zero Wewi Pack 6 Unidades 255ml cada",
      "29.94",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Natural Guaraná Wewi Pack 6 Unidades 255ml cada",
      "29.94",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Natural Guaraná Zero Wewi Pack 6 Unidades 255ml cada",
      "29.94",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Natural Laranja Wewi Pack 6 Unidades 255ml cada",
      "29.94",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Sem Açúcar Coca Cola Pack com 12 Unidades 200ml Cada",
      "14.50",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Sem Açúcar Coca-Cola Garrafa 2.5l",
      "6.59",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Sem Açúcar Coca-Cola Garrafa 250ml",
      "23.94",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Sem Açúcar Coca-Cola Pack com 4 Garrafas 1.5l Cada Leve Mais Pague Menos",
      "21.00",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Sem Açúcar Coca-Cola Pack com 6 Unidades 1l Cada",
      "20.94",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Sem Açúcar Coca-Cola Pack com 6 Unidades 310ml Cada",
      "14.50",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Soda Limonada Antárctica Pack Garrafa 6 Unidades 2l Cada",
      "27.54",
      "Bebidas",
      false
    ],
    ["Refrigerante Soda Prata Lata 269ml", "3.99", "Bebidas", false],
    [
      "Refrigerante Tangerina e Morango S. Pellegrino Essenza Lata 330ml",
      "7.79",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Zero Açúcar Guaraná Antarctica Pack com 6 Unidades 1.5l Cada",
      "20.94",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Zero Açúcar Guaraná Antarctica Pack com 6 Unidades 2l Cada",
      "29.34",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Zero Açúcar Pepsi Black Pack com 12 Unidades 350ml Cada",
      "25.08",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Zero Sem Açúcar Coca-ColaGarrafa Pack com 6 Unidades 2l Cada",
      "41.34",
      "Bebidas",
      false
    ],
    [
      "Refrigerante Zero Sódio Guaraná Antarctica Lata 260ml",
      "4.49",
      "Bebidas",
      false
    ],
    [
      "Refrigerente Coca-Cola Plus Café Expresso Pack com 6 Latas 220ml Cada",
      "11.32",
      "Bebidas",
      false
    ],
    [
      "Rum Brasileiro Carta Branca Bacardi Garrafa 980ml",
      "34.90",
      "Bebidas",
      false
    ],
    [
      "Rum Brasileiro Carta Ouro Bacardi Garrafa 980ml",
      "34.90",
      "Bebidas",
      false
    ],
    ["Saquê Seco Gold Thikará Garrafa 745ml", "28.90", "Bebidas", false],
    ["Suco Caju Mitto Garrafa 1.5l", "20.99", "Bebidas", false],
    ["Suco Concentrado Caju Maguary Garrafa 1l", "7.99", "Bebidas", false],
    ["Suco Concentrado Maracujá Maguary Garrafa 1l", "11.99", "Bebidas", false],
    ["Suco Concentrado Uva Maguary Garrafa 1l", "10.98", "Bebidas", false],
    [
      "Suco de Laranja Life Mix Kids Pack 3 Unidades 200ml cada",
      "6.99",
      "Bebidas",
      false
    ],
    ["Suco de Laranja Member's Mark Garrafa 900ml", "8.99", "Bebidas", false],
    [
      "Suco de Laranja Natural One Pack 6 Unidades 180ml cada",
      "11.34",
      "Bebidas",
      false
    ],
    ["Suco de Laranja Pfanner Caixa 2l", "16.98", "Bebidas", false],
    ["Suco de Maçã Pfanner Caixa 2l", "16.98", "Bebidas", false],
    [
      "Suco de Maçã Yakult Pack com 3 Unidades 200ml Cada",
      "7.16",
      "Bebidas",
      false
    ],
    [
      "Suco de Maracujá e Maçã Life Mix Kids Pack 3 Unidades 200ml Cada",
      "6.99",
      "Bebidas",
      false
    ],
    [
      "Suco de Morango e Maçã Life Mix Kids Pack 3 Unidades 200ml Cada",
      "6.99",
      "Bebidas",
      false
    ],
    [
      "Suco de Pêssego Ades Pack 6 Unidades 200ml Cada",
      "8.94",
      "Bebidas",
      false
    ],
    ["Suco de Tomate Raiola Vidro 1l", "13.99", "Bebidas", false],
    [
      "Suco de Uva Branco Integral Mitto Garrafa 1.5l",
      "20.99",
      "Bebidas",
      false
    ],
    [
      "Suco De Uva Dell Valle Pack com 3 Unidades 200ml Cada",
      "5.99",
      "Bebidas",
      false
    ],
    [
      "Suco de Uva Rosé Integral Hugo Pietro Caixa 1.5l",
      "12.99",
      "Bebidas",
      false
    ],
    [
      "Suco de Uva Tinto Integral Member's Mark Garrafa 1.5l",
      "12.99",
      "Bebidas",
      false
    ],
    [
      "Suco Del Valle Nutri Sabor Pêssego Pack com 3 Unidades 200ml Cada",
      "5.99",
      "Bebidas",
      false
    ],
    ["Suco Frutas Vermelhas Juxx Antiox Caixa 1l", "14.99", "Bebidas", false],
    ["Suco Goiaba Mitto Garrafa 1.5l", "20.99", "Bebidas", false],
    [
      "Suco Integral Laranja Campo Largo Garrafa 1.35l",
      "10.99",
      "Bebidas",
      false
    ],
    [
      "Suco Integral Laranja Natural One Refrigerado Garrafa 2l",
      "14.90",
      "Bebidas",
      false
    ],
    ["Suco Integral Laranja Prat's Galão 4l", "23.49", "Bebidas", false],
    [
      "Suco Integral Maçã Natural One Refrigerado Garrafa 2l",
      "14.90",
      "Bebidas",
      false
    ],
    [
      "Suco Integral Uva Branco O Tradicional Garrafa 1.5l",
      "12.99",
      "Bebidas",
      false
    ],
    ["Suco Integral Uva Casa de Bento Vidro 1l", "13.49", "Bebidas", false],
    ["Suco Integral Uva Do Bem Caixa 1l", "12.89", "Bebidas", false],
    ["Suco Integral Uva OQ Garrafa 1.5l", "14.50", "Bebidas", false],
    ["Suco Integral Uva Tinto Aurora Garrafa 1.5l", "13.99", "Bebidas", false],
    [
      "Suco Integral Uva Tinto Campo Largo Garrafa 1.35l",
      "9.99",
      "Bebidas",
      false
    ],
    [
      "Suco Integral Uva Tinto Casa Madeira Vidro 1l",
      "22.99",
      "Bebidas",
      false
    ],
    [
      "Suco Integral Uva Tinto O Tradicional Garrafa 1.5l",
      "12.99",
      "Bebidas",
      false
    ],
    ["Suco Laranja Natural One Ambiente Garrafa 2l", "12.50", "Bebidas", false],
    [
      "Suco Limonada Natural One Refrigerado Garrafa 2l",
      "13.79",
      "Bebidas",
      false
    ],
    ["Suco Maçã Del Valle Garrafa 1.5l", "10.98", "Bebidas", false],
    ["Suco Maçã Natural One Ambiente Garrafa 1.5l", "10.89", "Bebidas", false],
    [
      "Suco Maçã Natural One Ambiente Pack com 6 Unidades 180ml Cada Leve 6 Pague 5 Unidades",
      "11.34",
      "Bebidas",
      false
    ],
    ["Suco Manga Mitto Garrafa 1.5l", "20.99", "Bebidas", false],
    ["Suco Maracujá Mitto Garrafa 1.5l", "20.99", "Bebidas", false],
    [
      "Suco Prensado a Frio Abacaxi e Hortelã Greenpeople Basic Garrafa 1l",
      "9.99",
      "Bebidas",
      false
    ],
    [
      "Suco Prensado a Frio Laranja e Mamão Greenpeople Basic Garrafa 1l",
      "13.19",
      "Bebidas",
      false
    ],
    [
      "Suco Prensado a Frio Laranja. Cenoura e Beterraba Greenpeople Basic Garrafa 1l",
      "13.19",
      "Bebidas",
      false
    ],
    [
      "Suco Pure Pic-Me Morango Pack 6 Unidades 100g Cada",
      "32.99",
      "Bebidas",
      false
    ],
    ["Suco Tangerina Do Bem Caixa 1l", "6.99", "Bebidas", false],
    ["Suco Uva Del Valle Garrafa 1.5l", "10.98", "Bebidas", false],
    [
      "Suco Uva e Maçã Natural One Refrigerado Garrafa 2l",
      "14.90",
      "Bebidas",
      false
    ],
    ["Suco Uva Integral Mitto Garrafa 1.5l", "20.99", "Bebidas", false],
    [
      "Suco Uva Tinto Integral Hugo Pietro Garrafa 2l",
      "16.99",
      "Bebidas",
      false
    ],
    ["Suco Uva Tinto Maguary Seleção Garrafa 1.5l", "9.99", "Bebidas", false],
    [
      "Suco Verde Prensado a Frio Greenpeople Garrafa 1l",
      "13.19",
      "Bebidas",
      false
    ],
    ["Vodka Destilada Absolut Garrafa 1l", "104.90", "Bebidas", false],
    ["Vodka Destilada Smirnoff Garrafa 1.75l", "52.99", "Bebidas", false],
    ["Vodka Red Smirnoff Garrafa 998ml", "34.99", "Bebidas", false],
    [
      "Whisky Americano Bourbon Bulleit Garrafa 750ml",
      "129.99",
      "Bebidas",
      false
    ],
    [
      "Whisky Escocês Blended Ballantine's Garrafa 1l",
      "129.99",
      "Bebidas",
      false
    ],
    ["Whisky Escocês Blended Bell's Garrafa 700ml", "37.49", "Bebidas", false],
    [
      "Whisky Escocês Blended Double Black Johnnie Walker Garrafa 1l",
      "159.99",
      "Bebidas",
      false
    ],
    [
      "Whisky Escocês Blended Finest Ballantine's Garrafa 1l",
      "84.99",
      "Bebidas",
      false
    ],
    [
      "Whisky Escocês Blended Grand Old Parr Garrafa 1l",
      "139.99",
      "Bebidas",
      false
    ],
    ["Whisky Escocês Blended Grant's Garrafa 1l", "84.99", "Bebidas", false],
    [
      "Whisky Escocês Blended Green Label Johnnie Walker Garrafa 750ml",
      "225.00",
      "Bebidas",
      false
    ],
    ["Whisky Escocês Blended Passport Garrafa 1l", "48.99", "Bebidas", false],
    [
      "Whisky Escocês Blended Red Label Johnnie Walker Garrafa 1l",
      "94.99",
      "Bebidas",
      false
    ],
    [
      "Whisky Escocês Blended White Horse Garrafa 1l",
      "76.99",
      "Bebidas",
      false
    ],
    [
      "Whisky Escocês Single Malt Dufftown The Singleton Garrafa 750ml",
      "159.99",
      "Bebidas",
      false
    ],
    ["Whisky Jack Daniels Honey Garrafa 1l", "149.99", "Bebidas", false],
    [
      "Whisky Johnnie Walker Black Label Garrafa 1l",
      "167.90",
      "Bebidas",
      false
    ],
    [
      "Xarope de Cereja Zero Amarena Fabbri Frasco 560ml",
      "37.99",
      "Bebidas",
      false
    ],
    [
      "Xarope de Framboesa Amarena Fabbri Frasco 560ml",
      "37.99",
      "Bebidas",
      false
    ],
    [
      "Xarope de Granatina Amarena Fabbri Frasco 560ml",
      "37.99",
      "Bebidas",
      false
    ],
    ["Xarope de Limão Amarena Fabbri Frasco 560ml", "37.99", "Bebidas", false],
    ["Xarope de Maça Verde Fabbri Frasco 1l", "62.89", "Bebidas", false],
    [
      "Xarope Soda Italiana Sabor Morango Fabbri Frasco 560ml",
      "37.99",
      "Bebidas",
      false
    ],
    [
      "Amêndoa de Castanha de Caju Caramelizadas Copacaju 500g",
      " 44.98  ",
      " Saudáveis",
      false
    ],
    [
      "Amêndoa de Castanha de Caju Torradas e Salgadas Copacaju 500g",
      " 49.98  ",
      " Saudáveis",
      false
    ],
    ["Amêndoa Natural Raiz do Bem Sachê 400g", " 44.98  ", " Saudáveis", false],
    ["Banana Chips Salgada Frutnut Pote 130g", " 17.99  ", " Saudáveis", false],
    [
      "Barra de Proteína Sabor Chocolate Supino Protein Banana Brasil Pack 12 Unidades 30g Cada",
      " 33.88  ",
      " Saudáveis",
      false
    ],
    [
      "Barra Whey Protein Crisp Bar Integralmedica Pack com 12 Unidades 45g Cada",
      " 59.99  ",
      " Saudáveis",
      false
    ],
    [
      "Castanha De Caju Member's Mark Pote 400g",
      " 44.99  ",
      " Saudáveis",
      false
    ],
    [
      "Cranberry Trail Mix Granuts Pacote 567g",
      " 39.99  ",
      " Saudáveis",
      false
    ],
    ["Mix Berries Rostaa Pacote 200g", " 19.99  ", " Saudáveis", false],
    [
      "Mix de Castanhas e Frutas Vermelhas Raiz do Bem 400g",
      " 39.99  ",
      " Saudáveis",
      false
    ],
    [
      "Mix de Cereais. Sementes e Frutas Secas Granuts Pacote 567g",
      " 39.98  ",
      " Saudáveis",
      false
    ],
    [
      "Mix de Nuts Glaceadas Nutty Bavarian Pote 50g",
      " 49.99  ",
      " Saudáveis",
      false
    ],
    [
      "Mix Nuts Agridoce Frutos Secos It's Krok Pacote 300g",
      " 32.98  ",
      " Saudáveis",
      false
    ],
    ["Mix Nuts Raiz Do Bem Pacote 1Kg", " 84.98  ", " Saudáveis", false],
    ["Mixed Nuts Agtal Pote 1.02kg", " 59.99  ", " Saudáveis", false],
    [
      "Muffin de Amêndoas sem Glúten e Lactose Wickbold Pacote 40g",
      " 7.04  ",
      " Saudáveis",
      false
    ],
    ["Nozes sem Casca Raiz do Bem Sachê 250g", " 34.98  ", " Saudáveis", false],
    [
      "Pão Chia e Ervas Finas sem Glúten Jasmine Pacote 350g",
      " 16.99  ",
      " Saudáveis",
      false
    ],
    [
      "Pão Coco sem Glúten Jasmine Pacote 350g",
      " 13.90  ",
      " Saudáveis",
      false
    ],
    [
      "Pão para Hambúrguer Australiano sem Glúten Jasmine Pacote 300g",
      " 23.99  ",
      " Saudáveis",
      false
    ],
    [
      "Pão para Hambúrguer Original sem Glúten Jasmine Pacote 300g",
      " 23.99  ",
      " Saudáveis",
      false
    ],
    [
      "Pistache Sem Casca Wonderful Pacote 340g",
      " 89.98  ",
      " Saudáveis",
      false
    ],
    [
      "Pistache Sweet Chili Wonderful Pacote 198g",
      " 64.98  ",
      " Saudáveis",
      false
    ],
    [
      "Pistache Tostado e Salgado Wonderful Pacote 454g",
      " 64.98  ",
      " Saudáveis",
      false
    ],
    [
      "Pistaches com Sal e Pimenta Wonderful Pacote 100g",
      " 64.98  ",
      " Saudáveis",
      false
    ],
    [
      "Snack de Arroz com Queijo e Cebola Sem Glúten Kalassi Pack com 2 Unidades 100g Cada",
      " 27.99  ",
      " Saudáveis",
      false
    ],
    [
      "Snack de Arroz com Queijo Sem Glúten Kalassi Pack com 2 Unidades 100g Cada",
      " 27.99  ",
      " Saudáveis",
      false
    ],
    [
      "Snack de Arroz Sem Glúten Kalassi Original Pack com 2 Unidades 100G Cada",
      " 27.99  ",
      " Saudáveis",
      false
    ],
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
        'preco': _produtos[i][1].toString(), // John Doe
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
