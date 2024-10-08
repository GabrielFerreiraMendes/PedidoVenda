CREATE TABLE DADOS_GERAIS_PEDIDO(
    NUMERO_PEDIDO bigint not null auto_increment,
    DATA_EMISSAO datetime not null,
    CODIGO_USUARIO bigint not null,
    VALOR_TOTAL decimal(15, 2),
    primary key(NUMERO_PEDIDO),
    foreign key(CODIGO_USUARIO) references USUARIO(CODIGO)
);