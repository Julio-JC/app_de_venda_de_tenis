import 'package:app_venda_de_tenis/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Details extends StatefulWidget {
  String? imagemDoProduto;
  String? nomeDoProduto;
  String? marcaDoProduto;
  double? valorDoProduto;
  String? descicaoDoProduto;

  Details({
    this.imagemDoProduto,
    this.nomeDoProduto,
    this.marcaDoProduto,
    this.valorDoProduto,
    this.descicaoDoProduto,
  });

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: Text('X-Shoes')),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Image.asset(widget.imagemDoProduto!),
            ),
          ),
          SizedBox(
            child: Divider(color: Colors.deepPurple[200]),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Text(widget.marcaDoProduto!),
                  Text(widget.nomeDoProduto!),
                  Text(widget.valorDoProduto.toString()),
                  Text(widget.descicaoDoProduto!),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
