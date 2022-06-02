import 'package:app_venda_de_tenis/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: Text('X-Shoes')),
      body: Column(children: [
        Container(),
        SizedBox(
          child: Divider(color: Colors.deepPurple[200]),
        ),
        Container(),
      ]),
    );
  }
}
