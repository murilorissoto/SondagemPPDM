class Tarefa {
  // Definindo a classe Tarefa
  final int? id; // Atributo id, que pode ser nulo
  final String nome; // Atributo titulo, obrigatório
  final String especialidade; // Atributo descricao, obrigatório

  Tarefa(
      {this.id,
        required this.nome,
        required this.especialidade}); // Construtor da classe

  Map<String, dynamic> toMap() {
    // Método para converter um objeto Tarefa em um mapa
    return {
      // Retorna um mapa com os atributos do objeto Tarefa
      'id': id, // Chave 'id' com o valor do atributo id
      'nome': nome, // Chave 'titulo' com o valor do atributo titulo
      'especialidade':
      especialidade, // Chave 'descricao' com o valor do atributo descricao
    };
  }

  static Tarefa fromMap(Map<String, dynamic> map) {
    // Método estático para criar um objeto Tarefa a partir de um mapa
    return Tarefa(
      // Retorna um novo objeto Tarefa
      id: map['id'], // Atribui o valor da chave 'id' do mapa ao atributo id
      nome: map[
      'nome'], // Atribui o valor da chave 'nome'do mapa ao atributo titulo
      especialidade: map[
      'especialidade'], // Atribui o valor da chave 'descricao' do mapa ao atributo descricao
    );
  }
}
