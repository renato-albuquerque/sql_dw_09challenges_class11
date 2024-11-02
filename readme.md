# Projeto de Banco de Dados - SQL/PostgreSQL

Desenvolvimento de Projeto de Banco de Dados com SQL/PostgreSQL.<br> 
Desafios Aula 11, `Questões data_warehouse 01-09`, Módulo 01 (SQL). 

Instituição: [Digital College Brasil](https://digitalcollege.com.br/) (Fortaleza/CE) <br>
Curso: Data Analytics (Turma 18) <br>
Instrutora: [Nayara Wakweski](https://github.com/NayaraWakewski) <br>

## Etapas de Desenvolvimento

### Resumo

`Parte 01`
- Criar o banco de dados vendas_db `(producao)`.
- Criar as tabelas.
- Inserir os dados nas tabelas.

`Parte 02`
- Criar o banco de dados (schema) `stage`.
- Criar as tabelas.
- Inserir os dados nas tabelas.
- Etapa de ETL (Extract, Transform, Load) / Tratamento dos dados (Verificar valores nulos, duplicados, inconsistentes [Negativos, zerados]).

`Parte 03`
- Criar o banco de dados (schema) `dw` (Data warehouse).
- Criar as tabelas.
- Inserir os dados nas tabelas.
- Resolver 09 desafios + 01 desafio bônus.

`Parte 04`
- Resolver as 09 questões relacionadas ao schema `dw` (Data warehouse). 

### Enunciado das Questões:
![screenshot](/images/dw_all_questions.png) <br>
    
## Desenvolvimento Partes 01, 02 e 03
[Clique aqui para checar desenvolvimento das etapas num projeto similar.](https://github.com/renato-albuquerque/sql_vendas_db_project_class_11) <br>

## Desafio 01 <br>
- Escreva uma consulta SQL que selecione o nome, sobrenome e data de nascimento de todos os clientes na tabela dim_cliente. <br>

- Comandos SQL: <br>
```

```

- Visualização: <br>
![screenshot](/images/ex01.png) <br>

<br>

## Desafio 02 <br>
- Escreva uma consulta SQL que selecione todas as vendas da tabela fato_vendasonde o valor da venda seja maior que R$ 1000. <br>

- Comandos SQL: <br>
```

```

- Visualização: <br>
![screenshot](/images/ex02.png) <br>

<br>

## Desafio 03 <br>
- Escreva uma consulta SQL que selecione o id_vendae o valor_vendada tabela fato_vendas, ordenando as vendas pelo valor_vendade forma decrescente. <br>

- Comandos SQL: <br>
```

```

- Visualização: <br>
![screenshot](/images/ex03.png) <br>

<br>

## Desafio 04 <br>
- Escreva uma consulta SQL que mostre o número total de vendas (quantidade de registros) e a receita total (soma de valor_venda) por vendedor na tabela fato_vendas. <br>

- Comandos SQL: <br>
```

```

- Visualização: <br>
![screenshot](/images/ex04.png) <br>

<br>

## Desafio 05 <br>
- Escreva uma consulta SQL que selecione o id_vendae o valor_venda, e adicione uma coluna chamada "categoria_venda" que classifica as vendas em: -"Alta" para vendas acima de R$ 2000. -"Média" para vendas entre R$ 1000 e R$ 2000. -"Baixa" para vendas abaixode R$ 1000. <br>

- Comandos SQL: <br>
```

```

- Visualização: <br>
![screenshot](/images/ex05.png) <br>

<br>

## Desafio 06 <br>
- Escreva uma consulta SQL que selecione o nome e sobrenome dos clientes junto com o valor_vendadas vendas, combinando as tabelas dim_clientee fato_vendaspela coluna id_cliente. <br>

- Comandos SQL: <br>
```

```

- Visualização: <br>
![screenshot](/images/ex06.png) <br>

<br>

## Desafio 07 <br>
- Adicionamos uma coluna chamada desconto_aplicadona tabela fato_vendas. Escreva uma consulta SQL para atualizar a coluna "desconto_aplicado" de acordo com as seguintes regras: -10% de desconto para vendas acima de R$ 1000. -5% de desconto para vendas entre R$ 500 e R$ 1000. -Nenhum desconto para vendas abaixo de R$ 500. <br>

- Comandos SQL: <br>
```

```

- Visualização: <br>
![screenshot](/images/ex07.png) <br>

<br>

## Desafio 08 <br>
- Escreva uma consulta SQL que selecione o nome e sobrenome dos clientes que realizaram mais de 3 vendas. Para isso,use uma subconsultadentro da cláusula WHERE. <br>

- Comandos SQL: <br>
```

```

- Visualização: <br>
![screenshot](/images/ex08.png) <br>

<br>

## Desafio 09 <br>
- Cálculo de Receita Mensal com a Dimensão Tempo Enunciado: Usando a tabela dim_tempo, escreva uma consulta SQL que calcule a receita total mensal (soma de valor_venda) para cada mês e ano. A consulta deve agrupar os resultados por ano e mês. <br> 

- Comandos SQL: <br>
```

```

- Visualização: <br>
![screenshot](/images/ex09.png) <br>

<br>

## Meus Contatos

- Business Card - [Renato Albuquerque](https://rma-contacts.vercel.app/)
- Linkedin - [renato-malbuquerque](https://www.linkedin.com/in/renato-malbuquerque/)
- Discord - [Renato Albuquerque#0025](https://discordapp.com/users/992621595547938837)