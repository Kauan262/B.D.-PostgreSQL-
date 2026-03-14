--Criando a "tb_empregados"
--Restrição:
--				PK aplicada a coluna "rg"
CREATE TABLE tb_empregados(
rg			VARCHAR(15),
nm_empregado VARCHAR(60),
dt_nascimento DATE,
CONSTRAINT pk_tb_emp_rg PRIMARY KEY (rg)
);

--Criando a "tb_pedidos"
--Restrição
--				PK aplicadaa coluna "Nr_pedido"
CREATE TABLE tb_pedidos(
nr_pedido			INTEGER,
ds_pedido			VARCHAR(45),
dt_pedido			DATE,
CONSTRAINT pk_tb_pedidos_nr	PRIMARY KEY(nr_pedido)
);

--Criação da nomenclatura da constraint
--SUFICO_TABLE_NAME_cOLUMN_NAME
--Exemplo: pk_tb_pedidos_nr_pedido

--Criando a "tb_itens"
--Restrições:
--			PK Composta aplicadad as xolunas "nr_pedido" e "nr_item"'
-- 			PK aplicada a coluna "nr_pedido"
CREATE TABLE tb_itens(
    nr_pedido   INTEGER,
    nr_item     INTEGER,
    ds_produto  VARCHAR(45),
    quantidade  INTEGER,

    CONSTRAINT pk_tb_itens_nr_pedido_nr_item 
        PRIMARY KEY (nr_pedido, nr_item),

    CONSTRAINT fk_tb_itens_nr_pedido 
        FOREIGN KEY (nr_pedido) 
        REFERENCES tb_pedidos(nr_pedido)
);

--Excluindo a tb_empregados
DROP TABLE tb_empregados CASCADE;

--Recriando a "tb_empregados"
--Restrição:	
--				PK aplicada a coluna "rg"
CREATE TABLE tb_empregados(
rg		VARCHAR(15),
nm_empregado	VARCHAR(60),
dt_nascimento 	DATE,
plano_saude		VARCHAR(20),
rua				VARCHAR(45),
numero			VARCHAR(5),
cidade			VARCHAR(45),
CONSTRAINT pk_tb_empregados_rh PRIMARY KEY(rg)
);

--Criando a "tb_telefones"
--Restrições:
--				PK composta aplicada as colunas "rg" e "nr_telefone"
--				Fk aplicada a coluna "rg"
CREATE TABLE tb_telefones(
rg			VARCHAR(15),
nr_telefone	VARCHAR(15),
CONSTRAINT pk_tb_telefones_rg_nr PRIMARY KEY (rg, nr_telefone),
CONSTRAINT fk_tb_telefones_rg FOREIGN KEY (rg)
REFERENCES tb_empregados(rg)
);