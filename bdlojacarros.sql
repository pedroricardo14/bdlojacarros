CREATE database lojacarros;
use lojacarros;
create table carros(
codigo int primary key auto_increment,
fabricante varchar(100),
modelo varchar(100),
preco float
);

insert into carros
values (1, "Fiat", "Mobi", 68990);

insert into carros
values(null, "Fiat", "Pulse", 98990);

insert into carros
values(5, "Fiat", "Strada", 103990);

insert into carros
values(null, "Fiat", "Toro", 146990);

insert into carros
values(3, "VW", "Gol", 55760),
(4, "VW", "Polo", 80580),
(7, "VW", "Nivus", 125890);

# CONSULTA SIMPLES

select * from carros;

# CONSULTA COLUNAS ESCOLHIDAS #

select modelo, preco from carros;

#  ORDENANDO OS REGISTROS #

SELECT * FROM carros
order by preco;

SELECT * from carros
order by modelo;

## ORDENAÇÃO COM VÁRIAS COLUNAS ##
select * from carros 
order by fabricante, modelo;

## ORDENAÇÃO DECRESCENTE ##
select modelo, preco from carros
order by preco desc;

## CONSULTA COM CONDIÇÃO (FILTRA LINHAS) ##

select * from carros
where fabricante = "fiat";

select * from carros
where preco < 100000;
# < menor que, > maior que
# <= menor ou igual, >= maior ou igual
# = igual, 
# <> ou != diferente

## CONDIÇÃO MÚLTIPLA (E/AND) ##

select * from carros
where fabricante = "fiat"
and preco < 100000;

## CONDIÇÃO MÚLTIPLA (OU/OR) ##
SELECT * FROM carros
WHERE modelo = "gol" OR modelo = "mobi";

## ATUALIZAR INFORMAÇÕES EXISTENTES ##

UPDATE carros		#qual tabela
SET preco = 62490	#qual coluna
WHERE codigo = 1;	#qual linha

UPDATE carros 
SET modelo = "Gol Last"
WHERE codigo = 3;

## ATUALIZAR VÁRIAS COLUNAS ##
UPDATE carros
SET modelo = "Nivus 2024", preco = 132990
WHERE codigo = 7;


## ATUALIZAR VÁRIAS LINHAS (CUIDAAAAADO) ##
UPDATE carros
SET preco = preco * 1.05
WHERE fabricante = "VW";

## ATUALIZAR VÁRIOS CÓDIGOS DE UMA VEZ ##
UPDATE carros
SET preco = preco * 0.95
WHERE codigo IN (1, 6);

## EXCLUSÃO DE REGISTROS ##
#INSERT INTO CARROS
#VALUES (NULL, "HIUNDAY", "HB20", 89000);

DELETE FROM carros
WHERE codigo = 10;

DELETE FROM carros
WHERE fabricante = "HIUNDAY";

DELETE FROM carros
WHERE codigo IN (13, 15);
