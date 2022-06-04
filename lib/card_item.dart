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
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      mudarProduto();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Details(
                              imagemDoProduto: imagem,
                              marcaDoProduto: marca,
                              nomeDoProduto: nome,
                              valorDoProduto: valor,
                              descicaoDoProduto: descricao),
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

  produto1() {
    imagem = 'imagens/imagem1.jpg';
    marca = 'Olympikus';
    nome = 'Fila Recovery Corrida - Tênis Masculino';
    valor = 150.00;
    descricao = 'Item Feito para suas corridas e daminhadas diaias';
  }

  produto2() {
    imagem = 'imagens/imagem2.jpg';
    marca = 'Nike';
    nome = 'Fila Recovery Corrida - Tênis Masculino';
    valor = 300.00;
    descricao = '';
  }

  produto3() {
    imagem = 'imagens/imagem3.jpg';
    marca = 'Olympikus';
    nome = 'Fila Recovery Corrida - Tênis Masculino';
    valor = 250.00;
    descricao = '';
  }

  produto4() {
    imagem = 'imagens/imagem4.jpg';
    marca = 'Olympikus';
    nome = 'Fila Recovery Corrida - Tênis Masculino';
    valor = 150.00;
    descricao = '';
  }

  produto5() {
    imagem = 'imagens/imagem5.jpg';
    marca = 'Olympikus';
    nome = 'Fila Recovery Corrida - Tênis Masculino';
    valor = 150.00;
    descricao = '';
  }

  produto6() {
    imagem = 'imagens/imagem6.jpg';
    marca = 'Olympikus';
    nome = 'Fila Recovery Corrida - Tênis Masculino';
    valor = 150.00;
    descricao = '';
  }

  var produto;

  mudarProduto() {
    if (produto == produto1()) {
      produto = produto1();
    } else if (produto == produto2()) {
      produto = produto2();
    } else if (produto == produto3()) {
      produto = produto3();
    } else if (produto == produto4()) {
      produto = produto4();
    } else if (produto == produto5()) {
      produto = produto5();
    } else if (produto == produto6()) {
      produto = produto6();
    }
  }
}
