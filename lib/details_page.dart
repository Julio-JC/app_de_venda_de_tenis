import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'item_poduto.dart';

class Details extends StatefulWidget {
  final Item item;
  const Details({Key? key, required this.item}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
                        Text(widget.item.valor.toString()),
                        Divider(
                          height: 10,
                          endIndent: 10,
                        ),
                        Text(widget.item.corDoProduto!),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
