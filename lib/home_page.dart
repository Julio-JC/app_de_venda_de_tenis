import 'package:app_venda_de_tenis/card_item.dart';
import 'package:app_venda_de_tenis/details_page.dart';
import 'package:app_venda_de_tenis/item_poduto.dart';
import 'package:flutter/material.dart';
import 'Poduto.dart';
import 'card_item.dart';
import 'item_poduto.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  mostrarDetails(Item item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => Details(item: item),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tenis = Produtos.tenis;

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
              padding: const EdgeInsets.all(10),
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
              child: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Container(
                  child: bodyPage = SafeArea(
                    child: ListView.separated(
                      itemBuilder: (BuildContext context, int item) {
                        return GestureDetector(
                          onTap: () => mostrarDetails(tenis[item]),
                          child: Card(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 80,
                                      width: 80,
                                      child: Image.asset(tenis[item].imagem!),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(tenis[item].marca!),
                                        Divider(
                                          height: 10,
                                          endIndent: 10,
                                        ),
                                        Text(tenis[item].nome!),
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                        );
                      },
                      padding: EdgeInsets.all(10),
                      separatorBuilder: (_, __) => Divider(),
                      itemCount: tenis.length,
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
