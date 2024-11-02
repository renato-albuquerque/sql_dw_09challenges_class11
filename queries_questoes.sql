-- Questão 1: Escreva uma consulta SQL que selecione o nome, sobrenome e data de nascimento 
-- de todos os clientes na tabela dim_cliente.
select * from dw.dim_cliente;

select dc.nome, dc.sobrenome, dc.data_nascimento
from dw.dim_cliente dc
order by dc.data_nascimento;

-- Questão 2: Escreva uma consulta SQL que selecione todas as vendas da tabela fato_vendas
-- onde o valor da venda seja maior que R$ 1000.
select * from dw.fato_vendas;

select fv.id_venda, fv.valor_venda
from dw.fato_vendas fv
where fv.valor_venda > 1000
order by fv.valor_venda desc;

-- Questão 3: Escreva uma consulta SQL que selecione o id_venda e o valor_venda da tabela fato_vendas, 
-- ordenando as vendas pelo valor_venda de forma decrescente.
select * from dw.fato_vendas;

select fv.id_venda, fv.valor_venda
from dw.fato_vendas fv
order by fv.valor_venda desc;

-- Questão 4: Escreva uma consulta SQL que mostre o número total de vendas (quantidade de registros) 
-- e a receita total (soma de valor_venda) por vendedor na tabela fato_vendas.
select * from dw.fato_vendas;

select fv.id_vendedor, 
		sum(fv.quantidade) as qtde_vendas,
		sum(fv.valor_venda) as receita_total
from dw.fato_vendas fv
group by fv.id_vendedor
order by receita_total desc;

-- Questão 5: Escreva uma consulta SQL que selecione o id_venda e o valor_venda, e adicione uma coluna chamada 
-- "categoria_venda" que classifica as vendas em: -"Alta" para vendas acima de R$ 2000. 
-- -"Média" para vendas entre R$ 1000 e R$ 2000. -"Baixa" para vendas abaixode R$ 1000.
select * from dw.fato_vendas;

select fv.id_venda, 
	   fv.valor_venda,
		case
			when fv.valor_venda > 2000 then 'Alta'
			when fv.valor_venda between 1000 and 2000 then 'Média'
			else 'Baixa'
		end as categoria_venda
from dw.fato_vendas fv;

-- Questão 6: Escreva uma consulta SQL que selecione o nome e sobrenome dos clientes junto com o 
-- valor_venda das vendas, combinando as tabelas dim_cliente e fato_vendas pela coluna id_cliente.
select * from dw.dim_cliente; --id_cliente
select * from dw.fato_vendas; --id_cliente

select dc.nome, dc.sobrenome, fv.valor_venda
from dw.fato_vendas fv
inner join dw.dim_cliente dc on fv.id_cliente = dc.id_cliente
order by fv.valor_venda desc;

-- Questão 7: Adicionamos uma coluna chamada desconto_aplicado na tabela fato_vendas. 
-- Escreva uma consulta SQL para atualizar a coluna "desconto_aplicado" de acordo com as seguintes regras: 
-- -10% de desconto para vendas acima de R$ 1000. -5% de desconto para vendas entre R$ 500 e R$ 1000. 
-- -Nenhum desconto para vendas abaixo de R$ 500.
select * from dw.fato_vendas;

update dw.fato_vendas
set desconto_aplicado = 
	case
		when valor_venda > 1000 then 0.10
		when valor_venda between 500 and 1000 then 0.05
		else 0
	end;

-- 7.1 (extra): Consultar o valor das vendas com o desconto aplicado.
select id_venda,
		valor_venda,
		desconto_aplicado,
		valor_venda - (valor_venda * desconto_aplicado)::numeric(10,2) as valor_venda_desconto
from dw.fato_vendas;

-- Questão 8: Escreva uma consulta SQL que selecione o nome e sobrenome dos clientes que realizaram mais de 3 vendas. 
-- Para isso,use uma subconsulta dentro da cláusula WHERE.
select * from dw.dim_cliente; --id_cliente
select * from dw.fato_vendas; --id_cliente

select dc.nome, dc.sobrenome
from dw.fato_vendas fv
inner join dw.dim_cliente dc on fv.id_cliente = dc.id_cliente
where fv.id_cliente > 3;

-- Questão 9: Cálculo de Receita Mensal com a Dimensão Tempo Enunciado: Usando a tabela dim_tempo, 
-- escreva uma consulta SQL que calcule a receita total mensal (soma de valor_venda) para cada mês e ano. 
-- A consulta deve agrupar os resultados por ano e mês.
select * from dw.dim_tempo; --id_tempo
select * from dw.fato_vendas; --id_tempo

select dt.mes,
		dt.nome_mes,
		dt.ano,
		sum(fv.valor_venda) as receita_total_mensal
from dw.fato_vendas fv
inner join dw.dim_tempo dt on fv.id_tempo = dt.id_tempo
group by dt.ano, dt.mes, dt.nome_mes
order by dt.ano, dt.mes asc;