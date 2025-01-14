# Task Management API

Este é um projeto simples desenvolvido com Spring Boot, que oferece uma API REST para gerenciamento de tarefas. O objetivo deste projeto é servir como base para a prática de escrita de testes unitários e de integração. Os alunos devem implementar testes para garantir o funcionamento correto dos componentes da aplicação.

## Funcionalidades

- Criar uma tarefa com título e estado inicial (`completed=false`).
- Recuperar uma tarefa por ID.
- Listar todas as tarefas.
- Atualizar uma tarefa (alterar título ou estado para `completed=true`).
- Excluir uma tarefa por ID.

## Estrutura do Projeto

- **Entity**: Representa a entidade `Task` com os atributos `id`, `title`, e `completed`.
- **Repository**: Interface que gerencia as operações de banco de dados para a entidade `Task`.
- **Service**: Camada que contém a lógica de negócio.
- **Controller**: Camada que expõe a API REST.

## Exercício para os Alunos

### Escreva Testes Unitários e de Integração

Os alunos devem implementar os seguintes testes para garantir a funcionalidade da aplicação:

1. **Controller**:
   - Use o `MockMvc` para testar os endpoints.
   - Teste os métodos de criação, leitura, atualização e exclusão de tarefas.

2. **Service**:
   - Use o `Mockito` para simular o comportamento do `TaskRepository`.
   - Teste os métodos que interagem com o repositório e validam regras de negócio.

3. **Repository**:
   - Use o banco de dados em memória (`H2`) para testar os métodos do repositório.
   - Teste operações como salvar, buscar, listar e excluir tarefas.

### Testes Sugeridos

Os testes que devem ser implementados incluem:

- **Criar Tarefa**:
  - Verificar se a tarefa é criada com o título fornecido e o estado inicial como `completed=false`.

- **Recuperar Tarefa por ID**:
  - Verificar se uma tarefa existente é retornada corretamente.
  - Validar o comportamento quando uma tarefa não for encontrada.

- **Listar Todas as Tarefas**:
  - Testar se todas as tarefas são retornadas corretamente.

- **Atualizar Tarefa**:
  - Verificar a atualização do título e do estado da tarefa.

- **Excluir Tarefa**:
  - Validar se a tarefa é removida corretamente do banco de dados.

## Ferramentas Necessárias

- **JUnit**: Para criar e organizar os testes.
- **Mockito**: Para criar mocks dos serviços e repositórios.
- **MockMvc**: Para testar os endpoints da API.
- **H2 Database**: Para testar os métodos do repositório com um banco de dados em memória.

## Como Rodar a Aplicação

1. Clone o repositório:
```bash
git clone https://github.com/ppereiradev/introducao-mockito.git
cd introducao-mockito
```
2. Instale as dependências:
```bash
mvn clean install
```
3. Execute a aplicação:
```bash
mvn spring-boot:run
```
4. A API estará disponível em: http://localhost:8080/api/v1/tasks

## Endpoints da API

- POST /api/v1/tasks: Criar uma nova tarefa.
- GET /api/v1/tasks/{id}: Recuperar uma tarefa pelo ID.
- GET /api/v1/tasks: Listar todas as tarefas.
- PUT /api/v1/tasks/{id}: Atualizar uma tarefa.
- DELETE /api/v1/tasks/{id}: Excluir uma tarefa.

Desenvolvido para fins educacionais.
