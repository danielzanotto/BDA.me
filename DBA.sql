
-- Criação, Utilização, Exclusão de uma Banco de dados:
CREATE DATABASE nome_do_banco_de_dados; -- Cria o banco de dados.

-- Utilização do banco de dados
USE nome_do_banco_de_dados; -- Chama o banco de dados.

-- Exclusão do banco de dados
DROP DATABASE nome_do_banco_de_dados; -- Exclui o banco de dados.


-- Criação, Visualização , Exclusão e modificação de tabelas

-- Criação de tabela:
CREATE TABLE nome_da_tabela -- Cria uma tabela. Obs: Necessita de um atributo. Normalmente se utiliza uma pk (chave primaira como atributo)
( PK_CHAVE INT PRIMARY KEY   -- Mas não necessáriamente precisa-se sempre utilizar ela como o atributo, podemos utilizar outros e depois adicionar a pk.
);				-- Poderia utilizar outra variavel sem ser pk, mas é importante ter ciencia que toda tabela deve possuir uma pk, exemplo abaixo sem pk

-- Criação de tabela sem pk:
CREATE TABLE tabela_inicialmente_sem_pk
( SEM_PK INT -- Nome da variavel: SEM_PK, do tipo INT (Poderia ser do tipo: CHAR (VALOR de uso), VARCHAR (VALOR maximo), FLOAT, BOOL...etc)
);          

-- Diferença de CHAR e VARCHAR: CHAR definie um valor que será usado mesmo que digitemos palavras com menos letras que as definidas.
            -- Ex: maca, CHAR (5), utilizou o espaço de 5 caracteres mesmo contendo apenas 4.
            -- Ex: maca, VARCHAR (5), Utilizou o espaco de 4 caracteres apenas.

-- Inserindo dados em uma tabela:
INSERT INTO nome_da_tabela (PK_CHAVE) VALUES (100); -- Adicionamos o nome da tabela, o nome da variavel, o valor que deseja inserir.

-- Visualização:
SELECT*FROM nome_da_tabela; -- Mostrará os valores presentes na tabela selecionada.

-- Exclusão de tabela:
DROP TABLE nome_da_tabela; -- Exclui a tabela selecionada.


-- Conceito e logica:

drop database BANCO_DE_DADOS; -- Deleta o banco de dados
create database BANCO_DE_DADOS; -- Criação de um banco de dados
use BANCO_DE_DADOS; -- Chamar para uso o banco de dados

-- Criação de tabela
create table TABELA -- Você pode criação uma tabela vazia mas não pode utilizar uma espressão que a chame/ peça a ela a visualização, se não estiver dados, ela entra em conflito e não vai funcionar, mas pode ser criada contanto que possuia um atributo.
(                   -- lembrete uma tabela sema tributo vira apenas uma etiqueta que não funciona, uma tabela com atributo mas sem dados é uma tabela vazia.
					          -- Como posso utilizar uma tabela vazia? em caso explicitamente precisar usar uma como faço? crio uma tabela vazia e depois posso adiciona as respectivas pk (chave-primaira), ou seja poderia criar diversa tabelas vazias e somente depois poderia incluir suas respectivas pk: ex: tabela,1,2,3,4,5... adicione a pk para a tabela,1,2,3,4,5
id INT PRIMARY KEY -- Aatributo ao menos um é obrigatorio.
);

-- Criação de uma tabela
create table TABELA_VAZIA(  -- Uma tabela precisa de atributos para funcionar do contrario ela seria apenas o nome uma tag, sem função ou proposito 
id INT -- Aqui temos um exemplo de atributos. Em uma tabela podemos ter atributos sendo eles não necessariamente uma pk para funcionar
);

ALTER TABLE TABELA_VAZIA
ADD CONSTRAINT pk_id PRIMARY KEY (id); -- Adicionou pk_ em tabela vazia
-- CONSTRAINT: Serve para nomear as chave primarias e estrangeira.
-- Uma tabela vazia outra forma de interpretar seria: Uma tabela sem dados. E esse dados podem ser depois inseridos com o insert

create table TABELA_COM_CINCO_ELEMENTOS(
CHAVE_PRIMAIRA INT PRIMARY KEY, -- Chave primaria.
Descricao TEXT, 	   -- Variavel do tipo texto.
NUMERO_INTEIRO INT, -- Variavel do tipo inteiro.
NOME VARCHAR(30),   -- Variavel que modifica o tamanho de acordo com a proporção da quantidade digitada/inserida.
ESTADO CHAR(2)	   -- para caracter, com no maximo 2 elementos e se escrever 1 elemento ocupara o espaço de dois.
);
-- Observação Lembrete: A virgula para no penultimo elemento da tabela :)




--Nomeando uma primary key: 
CREATE TABLE TABELA_COM_CHAVE_PRIMARIA_NOMEADA(
	atributo int not null, -- escolhemos a chave primaria do tipo int e informamos que ela deve ser obrigatoria (not null/ Não deve está vazia)
	contraint chave_primaria primary key (atributo) -- atribuimos a variavel chave_primaria o valor do atributo
);



-- Inserindo dados em uma tabela:
INSERT INTO TABELA_COM_CINCO_ELEMENTOS (CHAVE_PRIMAIRA, Descricao, NUMERO_INTEIRO, NOME,ESTADO) VALUES
(10, 'Tabela com cinco elementos', '88', 'Daniel', 'SP');


drop database banco_de_dados;   -- apagar banco de dados 
create database banco_de_dados; -- criar banco de dados
use banco_de_dados;		-- usar banco de dados
create table tabela_com_atributo( -- criar tabela
atributo_selecionado int not null, -- atributo unico, ao menos 1 é obrigatorio, tipo int, not null (obrigatorio)
constraint chave_primaria primary key (atributo_selecionado) -- variavel destinada a ser a chave primaria da tabela
);

insert into tabela_com_atributo value (1);	-- criar e adiciona um valor uma chave primaria
insert into tabela_com_atributo value (12341);	-- o mesmo
select*from tabela_com_atributo;	--visualiza a tabela 

create table tabela_1( -- cria uma nova tabela
nomes varchar(30)	--criar uma variavel do tipo texto com 30 characteres limites
);

insert into tabela_1 (nomes) values ('felipe'),('maria'),('joana'); -- insere o valor no atributo da tabela
-- composição do insert: insert into -> nome da tabela -> (coluna) -> values -> (valor deseja), + caso queia adicionar mais -> e ;
select * from tabela_1; -- visualiza a tabela

alter table tabela_1 -- adicionando mais uma coluna a nossa tabela, coluna na horizontal
add column janela int default 3; -- adicione uma coluna chamada janela e atribui o valor padrão = 3

select * from tabela_1; -- visualiza a tabela após a adição da coluna e do valor

