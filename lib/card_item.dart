import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'home_page.dart';
import 'details_page.dart';

class CardItem extends StatelessWidget {
  String? marca;
  String? nome;
  double? valor = 0.0;
  String? imagem = '';
  String? descricao;

  CardItem({
    this.marca,
    this.nome,
    this.valor,
    this.imagem,
    this.descricao,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Expanded(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Details(),
                        ),
                      );
                    },
                    child: Image.asset(imagem!),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(marca!),
                  SizedBox(
                    width: 400,
                    child: Divider(
                      color: Colors.deepPurple[100],
                    ),
                  ),
                  Text(nome!),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
