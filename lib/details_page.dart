import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'item_poduto.dart';
import 'Poduto.dart';

class Details extends StatefulWidget {
  final Item item;

  const Details({Key? key, required this.item}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int quantidadeDeItem = 1;
  late double valorTotal = widget.item.valor!;

  void acrescentarItem(int item) {
    setState(() {
      quantidadeDeItem += item;
    });
  }

  void acrescentarValor(double valor) {
    setState(() {
      valorTotal += widget.item.valor!;
    });
  }

  void decrescentarValor(double valor) {
    setState(() {
      valorTotal -= widget.item.valor!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: Text(widget.item.marca!),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 16, 16, 40),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    child: Image.asset(widget.item.imagem!),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.item.marca!),
                        Divider(
                          height: 10,
                          endIndent: 10,
                        ),
                        Text(widget.item.nome!),
                        Divider(
                          height: 10,
                          endIndent: 10,
                        ),
                        Text('R\$ ${widget.item.valor.toString()}'),
                        Divider(
                          height: 10,
                          endIndent: 10,
                        ),
                        Text('Cor: ${widget.item.corDoProduto!}'),
                        Divider(
                          height: 10,
                          endIndent: 10,
                        ),
                        Text(widget.item.descricao!),
                        Divider(
                          height: 80,
                          endIndent: 10,
                        ),
                        Text(widget.item.tempoDeEntrega!),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Quantidades de itens no carrinho: $quantidadeDeItem',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Total a pagar: $valorTotal'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: quantidadeDeItem > 8
                                ? null
                                : () {
                                    acrescentarItem(1);
                                    acrescentarValor(1);
                                    print(valorTotal);
                                  },
                            child: Text('Adicionar'),
                          ),
                          ElevatedButton(
                            onPressed: quantidadeDeItem < 2
                                ? null
                                : () {
                                    acrescentarItem(-1);
                                    decrescentarValor(-1);
                                  },
                            child: Text('Retirar'),
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
