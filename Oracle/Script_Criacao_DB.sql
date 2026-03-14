-- Conectado no database "postgress" criaremos um novo database para realizarmos
-- a interpretação do modelo logico relacional, criando os objetos "tables", 
-- juntamente com suas respectivas restrições

CREATE DATABASE "ES_03_03_26" --Identificador do BD(exclusivo)
TEMPLATE = TEMPLATE0 -- Permite trabalhar com herança
ENCODING "UTF-8" -- Acentuação/valores monetarios
CONNECTION LIMIT 100; -- Nr maximo de conexões simultaneas
