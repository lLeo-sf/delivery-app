class GetItems {
  String id;
  String nome;
  String descricao;
  String preco;
  String imagens;
  String categoria;
  String status;

  GetItems(
      {this.id,
      this.nome,
      this.descricao,
      this.preco,
      this.imagens,
      this.categoria,
      this.status});

  GetItems.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    descricao = json['descricao'];
    preco = json['preco'];
    imagens = json['imagens'];
    categoria = json['categoria'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['descricao'] = this.descricao;
    data['preco'] = this.preco;
    data['imagens'] = this.imagens;
    data['categoria'] = this.categoria;
    data['status'] = this.status;
    return data;
  }
}