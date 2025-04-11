void main() {
  Cliente cliente1 = Cliente('Ana Santos', 'ana@email.com', 21990909090);
  
  Projeto projeto1 = Projeto('Loja BiJu', 'Posts para divulgaçõa', DateTime(2025, 5, 15));

  Tarefa tarefa1 = Tarefa('Fazer um post para o Instagram', StatusTarefa.pendente);
  Tarefa tarefa2 = Tarefa('Fazer um post para o Facebook', StatusTarefa.andamento);
  Tarefa tarefa3 = Tarefa('Fazer um post para o Twitter', StatusTarefa.concluida);

  cliente1.dadosClientes(cliente1.nome, cliente1.email, cliente1.telefone);
  print('');
  projeto1.dadosProjeto(projeto1.nomeProjeto, projeto1.descricaoProjeto, projeto1.dataEntrega);
  print('');

  // Usando for para percorrer as tarefas
  List<Tarefa> listaTarefas = [];

  listaTarefas.add(tarefa1);
  listaTarefas.add(tarefa2);
  listaTarefas.add(tarefa3);

  for (var tarefa in listaTarefas) {
    print('Tarefa: ${tarefa.nomeTarefa}');

    // if para verificar se está concluída
    if (tarefa.status == StatusTarefa.concluida) {
      print('Esta tarefa está concluída.');
    } else {
      print('Está tarefa não está concluída.');
    }

    // switch-case para mostrar status
    switch (tarefa.status) {
      case StatusTarefa.pendente:
        print('Status: Pendente\n');
        break;
      case StatusTarefa.andamento:
        print('Status: Em andamento\n');
        break;
      case StatusTarefa.concluida:
        print('Status: Concluída\n');
        break;
    }
  }

  projeto1.entregaProjeto(projeto1.dataEntrega);
}

class Cliente {
  // caracteristicas do cliente (o que é)
  String nome;
  String email;
  int telefone;

  // construtor
  Cliente(this.nome, this.email, this.telefone);

  // função (o que faz)
  void dadosClientes(String nomeCliente, String emailCliente, int telefoneCliente) {
    print('Dados do Cliente');
    print('Nome do cliente: $nomeCliente');
    print('Email do cliente: $emailCliente');
    print('Telefone do cliente: $telefoneCliente');
  }
}

class Projeto {
  // caracteristicas do projeto (o que é)
  String nomeProjeto;
  String descricaoProjeto;
  final DateTime dataEntrega;

  // construtor
  Projeto(this.nomeProjeto, this.descricaoProjeto, this.dataEntrega);

  // função (o que faz)
  void dadosProjeto(String nomeProjeto, String descricaoProjeto, DateTime dataEntrega) {
    print('Dados do Projeto');
    print('Nome do projeto: $nomeProjeto');
    print('Descrição do projeto: $descricaoProjeto');
    print('Data de entrega: ${dataEntrega.day}/${dataEntrega.month}/${dataEntrega.year}');
  }

  void entregaProjeto(DateTime dataEntrega) {
    print('Status do Projeto');

  // calcular quantos dias faltam para a entrega do prjeto
    DateTime dataHoje = DateTime.now();
    Duration diferenca = dataEntrega.difference(dataHoje);
    int diasRestantes = diferenca.inDays;
    print('Faltam $diasRestantes dias para a entrega do projeto.');
  
  // ver se o projeto está atrasado ou não
    if (diasRestantes < 0) {
      print("O projeto está atrasado.");
    } else if (diasRestantes == 0) {
      print("O projeto deve ser entregue hoje.");
    } else {
      print("O projeto está dentro do prazo.");
    }
  }
}

enum StatusTarefa {pendente, andamento, concluida}

class Tarefa {
  // caracteristicas do projeto (o que é)
  String nomeTarefa;
  StatusTarefa status;

  // construtor
  Tarefa(this.nomeTarefa, this.status);

  // funções (o que faz)
}