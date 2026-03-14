--Criando a "tb_condominio"
--Restrição:
--				PK aplicada a coluna(id_condominial)
CREATE TABLE tb_condominio(
id_condominio		VARCHAR(15),
endereco_condominio	VARCHAR(65),
cidade_condominio	VARCHAR(40),
nome_condominio		VARCHAR(40),
quantidade_unidades_condominio VARCHAR(15),
CONSTRAINT pk_tb_cond_id_condominio PRIMARY KEY (id_condominio)
);

--Criando a "tb_unidade_condominial"
--Restrições:
--					PK aplicada a coluna(unidade_condominial)
CREATE TABLE unidade_condominial(
id_unidade			VARCHAR(15),
bloco				INTEGER,
metragem			INTEGER,
numero_unidade		INTEGER,
CONSTRAINT pk_tb_und_cond_id_unidade PRIMARY KEY(id_unidade)
);

--Criando a "tb_pessoa"
--Restrições:
--					PK aplicada a coluna(id_pessoa)
CREATE TABLE tb_pessoa(
id_pessoa			VARCHAR(15),
nome_pessoa			VARCHAR(45),
cpf					VARCHAR(11),
telefone			VARCHAR(12),
gmail				VARCHAR(65),
CONSTRAINT 	pk_tb_pessoa_id_pessoa PRIMARY KEY(id_pessoa)
);

