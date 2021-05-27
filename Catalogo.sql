create table catalogo (
	id_produtos int(11) primary key auto_increment,
    produtos varchar(100) not null,
	preco real not null,
    estado varchar(100) not null,
	qtd_estoque	int(11) not null,
    tamanho enum ('PP', 'P', 'M', 'G', 'GG', 'XG') not null,
    genero enum('M', 'F') not null
)default charset=utf8;

insert into catalogo(produtos, preco, estado, qtd_estoque, tamanho, genero) values
	('Legging', '29.99', 'Disponível', '35', 'M', 'F'),
	('Calça', '79.99', 'Indisponível', '0', 'G', 'M'),
	('Camiseta', '69.90', 'Disponível', '3', 'P', 'M'),
	('Regata', '29.00', 'Disponível', '76', 'GG', 'M'),
	('Blusa', '130.80', 'Disponível', '10', 'M', 'F'),
	('Short', '65.89', 'Indisponível', '0', 'G', 'F'),
	('Moleton', '42.99', 'Disponível', '5', 'G', 'M');
    
create table vendas (
	id_venda int(11) primary key auto_increment,
    data_venda date,
    qtd_venda int(11),
	id_produtos int(11) not null,
    foreign key (id_produtos) references catalogo(id_produtos)
)default charset=utf8;

insert into vendas(data_venda, qtd_venda, id_produtos)values
	('2020-03-04', '10','3'),
	('2020-01-12', '3','2'),
	('2020-03-14', '2','3'),
	('2020-10-16', '6','2'),
	('2020-10-16', '6','1');