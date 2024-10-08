CREATE TABLE PRODUTO(
	CODIGO bigint not null auto_increment,
	DESCRICAO varchar(200) not null,
    	PRECO decimal(15, 2),
    	primary key(CODIGO)
);