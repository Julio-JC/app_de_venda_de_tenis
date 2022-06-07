import 'package:app_venda_de_tenis/card_item.dart';
import 'package:app_venda_de_tenis/card_produto.dart';
import 'package:flutter/material.dart';
import 'card_item.dart';
import 'card_produto.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SafeArea bodyPage;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          title: const Text('X-Shoes'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Expanded(
                      child: Container(
                        child: Image.asset('imagens/imagem_correr.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: bodyPage = SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CardItem(
                          imagem: 'imagens/imagem1.jpg',
                          marca: 'Olympikus',
                          nome: 'Tenis 1',
                        ),
                        CardItem(
                          imagem: 'imagens/imagem2.jpg',
                          marca: 'Nike',
                          nome: 'Tenis 2',
                        ),
                        CardItem(
                          imagem: 'imagens/imagem3.jpg',
                          marca: 'Puman',
                          nome: 'Tenis 3',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
