import 'package:flutter/material.dart';
import 'item_produto.dart';

class DetailsPage extends StatefulWidget {
  final Item item;

  const DetailsPage({Key? key, required this.item}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsState();
}

class _DetailsState extends State<DetailsPage> {
  int quantidadeDeItem = 1;
  //Para que os item sejam acrescentados e decrescentados de 1 em um foi criado
  //o método "acesentarItem(){}"
  void acrescentarItem(int item) {
    setState(() {
      quantidadeDeItem += item;
    });
  }

  // Para soma e subitrair valores aos produtos foi criado dois métodos o acrescentarValor(){}
  //e o decresentarValor(){}
  late double valorTotal = widget.item.valor;

  void acrescentarValor(double valor) {
    setState(() {
      valorTotal += widget.item.valor;
    });
  }

  void decrescentarValor(double valor) {
    setState(() {
      valorTotal -= widget.item.valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[500],
        centerTitle: true,
        title: Text(widget.item.marca),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(widget.item.imagem),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.item.marca,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        const Divider(
                          height: 10,
                          endIndent: 10,
                        ),
                        Text(widget.item.nome),
                        const Divider(
                          height: 10,
                          endIndent: 10,
                        ),
                        Text('R\$ ${widget.item.valor.toString()}'),
                        const Divider(
                          height: 10,
                          endIndent: 10,
                        ),
                        Text('Cor: ${widget.item.corDoProduto}'),
                        const Divider(
                          height: 10,
                          endIndent: 10,
                        ),
                        Text(widget.item.descricao),
                        const Divider(
                          height: 40,
                          endIndent: 10,
                        ),
                        Text(widget.item.tempoDeEntrega),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Quantidades de itens no carrinho: $quantidadeDeItem',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Total a pagar: $valorTotal',
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Colors.deepPurple[500],
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              minimumSize: MaterialStateProperty.all(
                                const Size(100, 40),
                              ),
                            ),
                            onPressed: quantidadeDeItem > 8
                                ? null
                                : () {
                                    acrescentarItem(1);
                                    acrescentarValor(1);
                                  },
                            child: const Text('Adicionar Item'),
                          ),
                          Container(
                            width: 60,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Colors.deepPurple[500],
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              minimumSize: MaterialStateProperty.all(
                                  const Size(100, 40)),
                            ),
                            onPressed: quantidadeDeItem < 2
                                ? null
                                : () {
                                    acrescentarItem(-1);
                                    decrescentarValor(-1);
                                  },
                            child: const Text('Retirar Item'),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
