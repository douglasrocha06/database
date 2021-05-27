create table inventario (
id_vendas int(11) primary key auto_increment,
id_cliente int(11),
id_produto int(11),
data_venda date
)default charset = utf8;

insert into inventario(id_vendas, id_cliente, id_produto, data_venda) values
	(default, '1', '1', '2021-05-27');