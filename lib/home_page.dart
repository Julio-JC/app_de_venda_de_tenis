import 'package:app_venda_de_tenis/card_item.dart';
import 'package:flutter/material.dart';
import 'card_item.dart';

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
          title: Text('X-Shoes'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      child: Image.asset('imagens/imagem_correr.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: bodyPage = SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CardItem(
                          imagem: 'imagens/imagem_correr.jpg',
                          marca: 'Nike',
                          nome: 'Zoomx Vaporfly Next% 2 - Feminino',
                        ),
                        CardItem(
                          imagem: 'imagens/imagem_correr.jpg',
                          marca: 'Adodas',
                          nome: 'Zoomx Vaporfly Next% 2 - Feminino',
                        ),
                        CardItem(
                          imagem: 'imagens/imagem_correr.jpg',
                          marca: 'Pulman',
                          nome: 'Zoomx Vaporfly Next% 2 - Feminino',
                        ),
                        CardItem(
                          imagem: 'imagens/imagem_correr.jpg',
                          marca: 'Vans',
                          nome: 'Zoomx Vaporfly Next% 2 - Feminino',
                        ),
                        CardItem(
                          imagem: 'imagens/imagem_correr.jpg',
                          marca: 'Oakley',
                          nome: 'Zoomx Vaporfly Next% 2 - Feminino',
                        ),
                        CardItem(
                          imagem: 'imagens/imagem_correr.jpg',
                          marca: 'Fila',
                          nome: 'Zoomx Vaporfly Next% 2 - Feminino',
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
