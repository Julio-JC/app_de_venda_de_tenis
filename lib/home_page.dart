import 'package:app_venda_de_tenis/details_page.dart';
import 'package:app_venda_de_tenis/item_produto.dart';
import 'package:flutter/material.dart';
import 'Produto.dart';
import 'item_produto.dart';

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
        builder: (_) => DetailsPage(item: item),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tenis = Produtos.tenis;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple[500],
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
                    child: SizedBox(
                      //Para colocar um texto sobre a foto foi usado o Stack
                      child: Stack(
                        children: [
                          Image.asset(
                            'imagens/imagem_correr.jpg',
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 15),
                            child: SizedBox(
                              child: Text(
                                'X-Shoes, inspirando seus passos',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  child: SafeArea(
                    child: ListView.separated(
                      itemBuilder: (BuildContext context, int item) {
                        return GestureDetector(
                          onTap: () => mostrarDetails(tenis[item]),
                          child: Card(
                            elevation: 8.0,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        height: 90,
                                        width: 90,
                                        child: Image.asset(tenis[item].imagem!),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          tenis[item].marca!,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                        const Divider(
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
                      padding: const EdgeInsets.all(10),
                      separatorBuilder: (_, __) => const Divider(),
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
