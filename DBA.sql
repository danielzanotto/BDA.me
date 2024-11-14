
-- Criação, Utilização, Exclusão de uma Banco de dados:
CREATE DATABASE nome_do_banco_de_dados; -- Cria o banco de dados.

--Utilização do banco de dados
USE DATABASE nome_do_banco_de_dados; -- Chama o banco de dados.

--Exclusão do banco de dados
DROP DATABASE nome_do_banco_de_dados; -- Exclui o banco de dados.


-- Criação, Visualização , Exclusão e modificação de tabelas

--Criação de tabela:
CREATE TABLE nome_da_tabela -- Cria uma tabela. Obs: Necessita de um atributo. Normalmente se utiliza uma pk (chave primaira como atributo)
( PK_CHAVE INT PRIMARY KEY   --Mas não necessáriamente precisa-se sempre utilizar ela como o atributo, podemos utilizar outros e depois adicionar a pk.
);

--Criação de tabela sem pk:
CREATE TABLE tabela_inicialmente_sem_pk
( SEM_PK INT -- Nome da variavel: SEM_PK, do tipo INT (Poderia ser do tipo: CHAR (VALOR de uso), VARCHAR (VALOR maximo), FLOAT, BOOL...etc)
);          

-- Diferença de CHAR e VARCHAR: CHAR definie um valor que será usado mesmo que digitemos palavras com menos letras que as definidas.
            -- Ex: maca, CHAR (5), utilizou o espaço de 5 caracteres mesmo contendo apenas 4.
            -- Ex: maca, VARCHAR (5), Utilizou o espaco de 4 caracteres apenas.

--Visualização:
SELECT*FROM nome_da_tabela; -- Mostrará os valores presentes na tabela selecionada.

--Exclusão de tabela:
DROP TABLE nome_da_tabela; -- Exclui a tabela selecionada.

-- Conceito e logica:



drop database BANCO_DE_DADOS; -- Deleta o banco de dados
create database BANCO_DE_DADOS; -- Criação de um banco de dados
use BANCO_DE_DADOS; -- Chamar para uso o banco de dados

--Criação de tabela
create table TABELA -- Você pode criação uma tabela vazia mas não pode utilizar uma espressão que a chame/ peça a ela a visualização, se não estiver dados, ela entra em conflito e não vai funcionar, mas pode ser criada contanto que possuia um atributo.
(                   --lembrete uma tabela sema tributo vira apenas uma etiqueta que não funciona, uma tabela com atributo mas sem dados é uma tabela vazia.
					          -- Como posso utilizar uma tabela vazia? em caso explicitamente precisar usar uma como faço? crio uma tabela vazia e depois posso adiciona as respectivas pk (chave-primaira), ou seja poderia criar diversa tabelas vazias e somente depois poderia incluir suas respectivas pk: ex: tabela,1,2,3,4,5... adicione a pk para a tabela,1,2,3,4,5
id INT PRIMARY KEY -- Aatributo ao menos um é obrigatorio.
);

-- Criação de uma tabela
create table TABELA_VAZIA(  -- Uma tabela precisa de atributos para funcionar do contrario ela seria apenas o nome uma tag, sem função ou proposito 
id INT -- Aqui temos um exemplo de atributos. Em uma tabela podemos ter atributos sendo eles não necessariamente uma pk para funcionar
);
ALTER TABLE TABELA_VAZIA
ADD CONSTRAINT pk_id PRIMARY KEY (id);
-- Uma tabela vazia outra forma de interpretar seria: Uma tabela sem dados. E esse dados podem ser depois depois inseridos com o inset
