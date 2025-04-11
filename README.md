# DESIGN PROJECT MANAGER

Um sistema simples de gerenciamento de projetos e tarefas para freelancers da área de design, desenvolvido em **Dart** com foco em prática de **orientação a objetos** e fundamentos da linguagem.

---

## Descrição

O **Design Project Manager** simula o fluxo de trabalho de um(a) designer freelancer: desde o cadastro de clientes até o acompanhamento do progresso de projetos e tarefas. O projeto foi criado com o objetivo de consolidar os conhecimentos em Dart de forma prática, simulando um cenário real do dia a dia profissional.

---

## Objetivos de Aprendizado

Este projeto foi desenvolvido para colocar em prática os seguintes tópicos:

- Tipos de dados (`String`, `int`, `DateTime`)
- Funções
- Estruturas de controle: `if`, `else`, `for`, `switch-case`
- Criação de `classes` com construtores
- Uso de `enum` para representar status
- Trabalhando com listas e laços (`List<Tarefa>`, `for`)
- Comparações de datas com `DateTime` e `Duration`
- Organização de código com orientação a objetos

---

## Funcionalidades

- Cadastro de cliente com nome, e-mail e telefone
- Criação de projeto com descrição e data de entrega
- Adição de tarefas com diferentes status (`pendente`, `andamento`, `concluída`)
- Verificação de status de cada tarefa
- Verificação de prazo do projeto: entrega no prazo, hoje ou atrasado
- Exibição de dados de cliente, projeto e tarefas de forma clara no terminal

---

## Estrutura de Classes

### `Cliente`
- Atributos: nome, e-mail, telefone
- Método: `dadosClientes()` – exibe as informações do cliente

### `Projeto`
- Atributos: nome, descrição, data de entrega
- Métodos:
  - `dadosProjeto()` – exibe os dados do projeto
  - `entregaProjeto()` – calcula e exibe o status da entrega com base na data atual

### `Tarefa`
- Atributos: nome da tarefa, status (`enum StatusTarefa`)
- Método: ainda em desenvolvimento

### `enum StatusTarefa`
- Define os três estados possíveis de uma tarefa:
  - `pendente`
  - `andamento`
  - `concluida`

---

## 🚀 Como rodar o projeto

1. Certifique-se de ter o Dart SDK instalado: https://dart.dev/get-dart

2. Clone este repositório:
```bash
git clone https://github.com/seu-usuario/dsgproject_manager.git

3. Entre na pasta do projeto:
```bash
cd dsgproject_manager


4. Execute:
```bash
dart dsgproject_manager.dart

---

## 📌 Tecnologias utilizadas

- [Dart](https://dart.dev/) – Linguagem principal do projeto

---

## 📚 Aprendizados

Este projeto me ajudou a fixar os principais conceitos de Dart, com foco em orientação a objetos. A proposta de simular um sistema de uso real tornou o aprendizado mais envolvente e aplicável ao mundo profissional de tecnologia e design.

---

## 💡 Futuras melhorias

- Criar métodos dentro da classe Tarefa (ex: marcarComoConcluída)
- Armazenar tarefas dentro de Projeto
- Criar lista de projetos dentro de Cliente
- Criar menu no terminal para interagir com o sistema
- Simular envio de email usando Future e funções assíncronas

---

## 📬 Contato

Se quiser trocar ideias ou dar feedbacks, me chama por aqui:  
**Maria Gabriela Araujo** – [LinkedIn] (https://www.linkedin.com/in/maria-gabriela-araujo/)
