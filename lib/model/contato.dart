class Contato {
  // Atributos
  final String nome;
  final String email;
  final String telefone;
  final String foto;
  final String cidade;

  // Constructor
  Contato(this.nome, this.email, this.telefone, this.foto, this.cidade);

  // Geração de dados para teste
  static List<Contato> gerarDados() {
    List<Contato> lista = [];

    lista.add(Contato("Alice Silva", "alice.silva@example.com", "11987654321",
        "https://randomuser.me/api/portraits/women/21.jpg", "Ribeirão Preto"));
    lista.add(Contato("Bruno Costa", "bruno.costa@example.com", "11976543210",
        "https://randomuser.me/api/portraits/men/21.jpg", "Ribeirão Preto"));
    lista.add(Contato("Carla Mendes", "carla.mendes@example.com", "11965432109",
        "https://randomuser.me/api/portraits/women/22.jpg", "Ribeirão Preto"));
    lista.add(Contato(
        "Daniel Oliveira",
        "daniel.oliveira@example.com",
        "11954321098",
        "https://randomuser.me/api/portraits/men/22.jpg",
        "Ribeirão Preto"));
    lista.add(Contato(
        "Elisa Fernandes",
        "elisa.fernandes@example.com",
        "11943210987",
        "https://randomuser.me/api/portraits/women/23.jpg",
        "Ribeirão Preto"));
    lista.add(Contato("Fabio Lima", "fabio.lima@example.com", "11932109876",
        "https://randomuser.me/api/portraits/men/23.jpg", "Ribeirão Preto"));
    lista.add(Contato(
        "Gabriela Rocha",
        "gabriela.rocha@example.com",
        "11921098765",
        "https://randomuser.me/api/portraits/women/24.jpg",
        "Ribeirão Preto"));
    lista.add(Contato(
        "Henrique Souza",
        "henrique.souza@example.com",
        "11910987654",
        "https://randomuser.me/api/portraits/men/24.jpg",
        "Ribeirão Preto"));
    lista.add(Contato(
        "Isabela Ramos",
        "isabela.ramos@example.com",
        "11909876543",
        "https://randomuser.me/api/portraits/women/25.jpg",
        " "));
    lista.add(Contato("Jorge Martins", "jorge.martins@example.com",
        "11908765432", "https://randomuser.me/api/portraits/men/25.jpg", " "));
    lista.add(Contato("Karina Silva", "karina.silva@example.com", "11907654321",
        "https://randomuser.me/api/portraits/women/26.jpg", " "));
    lista.add(Contato("Leonardo Costa", "leonardo.costa@example.com",
        "11906543210", "https://randomuser.me/api/portraits/men/26.jpg", " "));
    lista.add(Contato(
        "Mariana Oliveira",
        "mariana.oliveira@example.com",
        "11905432109",
        "https://randomuser.me/api/portraits/women/27.jpg",
        " "));
    lista.add(Contato("Nicolas Mendes", "nicolas.mendes@example.com",
        "11904321098", "https://randomuser.me/api/portraits/men/27.jpg", " "));
    lista.add(Contato("Olivia Lima", "olivia.lima@example.com", "11903210987",
        "https://randomuser.me/api/portraits/women/28.jpg", " "));

    return lista;
  }
}
