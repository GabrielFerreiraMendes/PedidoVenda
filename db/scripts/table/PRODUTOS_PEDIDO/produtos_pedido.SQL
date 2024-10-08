CREATE TABLE PRODUTOS_PEDIDO(
	AUTOINCREM bigint not null auto_increment,
    	NUMERO_PEDIDO bigint not null,
	CODIGO_PRODUTO bigint not null,
    	QUANTIDADE int,
    	VALOR_UNITARIO decimal(15,2),
    	VALOR_TOTAL decimal(15,2),
    	primary key(AUTOINCREM),
    	foreign key(NUMERO_PEDIDO) references DADOS_GERAIS_PEDIDO(NUMERO_PEDIDO),
    	foreign key(CODIGO_PRODUTO) references  PRODUTO(CODIGO)
);