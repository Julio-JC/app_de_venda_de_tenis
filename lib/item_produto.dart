class Item {
  String marca;
  String nome;
  double valor = 0.0;
  String imagem = '';
  String descricao;
  String tempoDeEntrega;
  String corDoProduto;

  Item({
    required this.marca,
    required this.nome,
    required this.valor,
    required this.imagem,
    required this.descricao,
    required this.tempoDeEntrega,
    required this.corDoProduto,
  });
}
