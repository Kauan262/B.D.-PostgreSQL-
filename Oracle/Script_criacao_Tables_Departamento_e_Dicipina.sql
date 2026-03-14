-- Conectado no database "ES_03_03_26", daremos inicio a criação dos objetos table.

-- Criando a tb_departamento
-- Restrição:
-- PK aplicata a coluna "cod_depto"

CREATE TABLE tb_departamento(
cod_depto	INTEGER,
nm_depto	VARCHAR(40),
CONSTRAINT pk_tb_depto_cod_depto PRIMARY KEY (cod_depto)
);

-- Como nomear as restrições na table
-- sufixo_table_name_column_name
-- Exemplo: pk_tb_depto_cod_depto

-- Consultando a tb_departamento
SELECT * 
FROM tb_departamento;

-- Realizando uma carga de dados na tb_departamento
INSERT INTO tb_departamento(cod_depto, nm_depto)
VALUES
(1, 'Computação'),
(2, 'Engenharia'),
(3, 'Ciências Médica'),
(4, 'Administração');

-- Criando a tb_disciplina
-- Restrição:
-- 		PK aplicada a coluna cod_disciplina
--		FK aplicada a coluna cod_depto
--		NN aplicada a coluna cod_depto (devido a cardinalidade)
CREATE TABLE tb_disciplina(
cod_disciplina INTEGER,
cod_depto INTEGER CONSTRAINT nn_tb_disc_cod_depto NOT NULL,
nm_disciplina VARCHAR(40),
credito INTEGER,
CONSTRAINT pk_tb_disc_cod_disc PRIMARY KEY (cod_disciplina),
CONSTRAINT fk_tb_disc_cod_depto FOREIGN KEY (cod_depto)
	REFERENCES tb_departamento (cod_depto)
);