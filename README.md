# 📚 Sistema de Gerenciamento de Biblioteca (Modelo Relacional)

## 📌 Sobre o Projeto
Este projeto consiste na modelagem e criação de um banco de dados relacional construído em **MySQL**. O objetivo principal é estruturar um ambiente robusto para o gerenciamento de uma biblioteca, garantindo a integridade dos dados entre livros, autores e editoras. 

Este repositório contém o script completo de criação (Data Definition Language - DDL) e a carga inicial de dados (Data Manipulation Language - DML) através do arquivo de dump.

## 🛠️ Tecnologias Utilizadas
* **Banco de Dados:** MySQL
* **Ferramenta de Modelagem e Scripting:** MySQL Workbench
* **Linguagem:** SQL

## 🗄️ Estrutura do Banco de Dados
O banco foi normalizado e estruturado com foco em integridade referencial. Ele é composto por três tabelas principais:

1. **`author` (Autores):** Armazena os dados dos escritores.
   * `author_id`: Chave primária (Auto Increment).
   * `author_name`: Nome do autor.

2. **`publisher` (Editoras):** Armazena os dados das editoras.
   * `publisher_id`: Chave primária (Auto Increment).
   * `publisher_name`: Nome da editora.

3. **`book` (Livros):** Tabela central que relaciona livros com seus respectivos autores e editoras.
   * `book_id`: Chave primária.
   * `title`: Título da obra.
   * Chaves Estrangeiras (Foreign Keys) conectando aos IDs de autores e editoras.
   * `format_book`: Coluna com restrição `ENUM ('E', 'F', 'A')` para garantir a qualidade dos dados, limitando as entradas apenas a formatos válidos (E-book, Físico ou Áudio).

## 💡 Destaques Técnicos
* **Garantia de Qualidade de Dados:** Uso de constraints `NOT NULL` e `ENUM` para evitar inserções inconsistentes ou nulas no sistema.
* **Integridade Referencial:** Implementação rigorosa de `FOREIGN KEYS` para garantir que nenhum livro seja cadastrado sem um autor ou editora válidos.
* **Pronto para Análise:** A estrutura foi pensada para facilitar consultas complexas (JOINs), servindo como uma excelente base para extração de insights, elaboração de relatórios ou futuras integrações com scripts de análise em Python.

## 🚀 Como Executar
1. Clone este repositório:
   ```bash
   git clone [https://github.com/SEU_USUARIO/NOME_DO_REPOSITORIO.git](https://github.com/SEU_USUARIO/NOME_DO_REPOSITORIO.git)
