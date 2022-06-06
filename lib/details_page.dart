import 'package:app_venda_de_tenis/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Details extends StatefulWidget {
  String? imagemDoProduto;
  String? nomeDoProduto;
  String? marcaDoProduto;
  double? valorDoProduto;
  String? descricaoDoProduto;
  String? tempoDeEntrega;
  String? corDoProduto;

  Details({
    this.imagemDoProduto,
    this.nomeDoProduto,
    this.marcaDoProduto,
    this.valorDoProduto,
    this.descricaoDoProduto,
    this.tempoDeEntrega,
    this.corDoProduto,
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                child: Image.asset(widget.imagemDoProduto!),
              ),
            ),
          ),
          SizedBox(
            child: Divider(color: Colors.deepPurple[200]),
          ),
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(widget.marcaDoProduto!),
                        Container(
                          height: 10,
                        ),
                        Text(widget.nomeDoProduto!),
                        Container(
                          height: 10,
                        ),
                        Text(widget.valorDoProduto.toString()),
                        Container(
                          height: 10,
                        ),
                        Text(widget.corDoProduto!),
                        Container(
                          height: 10,
                        ),
                        Text(widget.descricaoDoProduto!),
                        Container(
                          height: 10,
                        ),
                        Text(widget.tempoDeEntrega!),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
