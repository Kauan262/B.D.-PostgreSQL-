--Criando a "tb_autor"
--Restrições:
--				PK aplicada a "id_autor"
CREATE TABLE tb_autor(
id_autor 			VARCHAR(15),
nome_autor			VARCHAR(65),
nacionalidade		VARCHAR(50),
CONSTRAINT pk_tb_autor_id_autor PRIMARY KEY(id_autor)
);

--Construindo a "tb_livro"
--Restrições:
--					PK aplicada a "id_livro1"
CREATE TABLE  tb_livro(
id_livro			VARCHAR(15),
ano_publicacao		INTEGER,
titulo				VARCHAR(45),
CONSTRAINT pk_tb_id_livro PRIMARY KEY(id_livro)
);

--Construindo a "tb_editora"
--Restrições:
--					PK aplicada a "id_editora"
CREATE TABLE tb_editora(
id_editora			VARCHAR(15),
cidade_editora		VARCHAR (40),
nome_editora		VARCHAR (65),
CONSTRAINT tb_editora_id_editora PRIMARY KEY(id_editora)
);

--Construindo a "tb_exemplar"
--Restriçõe:
--					PK aplicada a (id_exemplar)
CREATE TABLE tb_exemplar(
id_exemplar			VARCHAR(15),
disponibilidade		BOOLEAN,
estado				VARCHAR(16),
CONSTRAINT tb_exemplar_id_exemplar PRIMARY KEY(id_exemplar)
);

--Construindo a "tb_cliente"
--Restrições:
--					PK	aplicada a (id_cliente)
CREATE TABLE tb_cliente(
id_cliente			VARCHAR(15),
nome_cliente		VARCHAR(65),
email_cliente		VARCHAR(65),
telefone_cliente	VARCHAR(12),
CONSTRAINT tb_cliente_id_cliente PRIMARY KEY (id_cliente)
);

--Criando a "tb_bibliotecaria"
--Restrições:
-- 					PK aplicada a "id_bibliotecaria"
CREATE TABLE tb_bibliotecaria(
id_bibliotecaria	VARCHAR(15),
nome_bibliotecaria	VARCHAR(65),
CONSTRAINT tb_bibliotecaria_id_bibliotecaria
PRIMARY kEY (id_bibliotecaria)
);

--Criando a "tb_estante"
--Restrições:
--					PK Aplicade a "id_estante"
CREATE TABLE tb_estante(
id_estante			VARCHAR(15) ,
localizaceo			VARCHAR(40),
CONSTRAINT tb_estante_id_estante PRIMARY KEY (id_estante)
);

--Criando a "tb_categoria"
--Restrições:
--					PK aplicada a "id_categoria"
CREATE TABLE tb_categoria(
id_categoria 		VARCHAR(15),
nome_categoria		VARCHAR(35),
CONSTRAINT tb_categoria_id_categoria PRIMARY KEY(id_categoria)
);
