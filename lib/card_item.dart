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
  String? tempoDeEntrega;
  String? corDoProduto;

  CardItem({
    this.marca,
    this.nome,
    this.valor,
    this.imagem,
    this.descricao,
    this.tempoDeEntrega,
    this.corDoProduto,
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
                      produto3();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Details(
                              imagemDoProduto: imagem,
                              marcaDoProduto: marca,
                              nomeDoProduto: nome,
                              valorDoProduto: valor,
                              descricaoDoProduto: descricao,
                              corDoProduto: corDoProduto,
                              tempoDeEntrega: tempoDeEntrega),
                        ),
                      );
                      print(marca);
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

  var produto;

  mudarProduto() {
    if (produto == produto1()) {
      produto = produto1();
    } else if (produto == produto2()) {
      produto = produto2();
    } else if (produto == produto3()) {
      produto = produto3();
    }
  }

  produto1() {
    imagem = 'imagens/imagem1.jpg';
    marca = 'Olympikus';
    nome = 'Fila Recovery Corrida - Tênis Masculino';
    valor = 150.00;
    corDoProduto = 'Preto';
    descricao = 'Item Feito para suas corridas e daminhadas diaias';
    tempoDeEntrega = 'Entrega em 7 dias uteis.';
  }

  produto2() {
    imagem = 'imagens/imagem2.jpg';
    marca = 'Nike';
    nome = 'Fila Recovery Corrida - Tênis Masculino';
    valor = 300.00;
    corDoProduto = 'Branco';
    descricao = '';
    tempoDeEntrega = 'Entrega em 7 dias uteis.';
  }

  produto3() {
    imagem = 'imagens/imagem3.jpg';
    marca = 'puman';
    nome = 'Fila Recovery Corrida - Tênis Masculino';
    valor = 250.00;
    corDoProduto = 'Preto';
    descricao = '';
    tempoDeEntrega = 'Entrega em 7 dias uteis.';
  }
}
