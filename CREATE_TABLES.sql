CREATE TABLE Fornecedor (
fornecedor_ID smallint (5) unsigned NOT NULL AUTO_INCREMENT,			#Unsigned = Não se aplica negativos / não pode ser nulo e deve ter incremento
primeiro_nome varchar (25) NOT NULL,
ultimo_nome varchar(25) NOT NULL,
email varchar (50) DEFAULT NULL,
ativo tinyint(1) NOT NULL DEFAULT '1',
data_criacao datetime,
ultima_atualizacao timestamP NOT NULL default current_timestamp ON update current_timestamp,
PRIMARY KEY (fornecedor_ID))			#Indentifica chave primária
ENGINE = InnoDB;			#A database engine (or "storage engine") is the underlying software component that a DBMS uses to create, read, update and delete (CRUD) data from a database.


	