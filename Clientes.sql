/*Criação das tabelas*/
create table clientes(
    id int not null auto_increment primary key,
    nome varchar(100) not null,
    cpf  int(11),
    nascimento date,
    email varchar(100)
    )default charset=utf8;
    
insert	into clientes values
    (default,'Douglas','Rua Guarabira','1999-09-09','douglas.rocha6@hotmail.com'),
    (default,'Matheus','Rua Jurubia','1999-09-09','matheus.oliveira@hotmail.com'),
    (default,'Jose','Rua Matias Franca','1999-09-09','jose.silva@hotmail.com'),
    (default,'Lucas','Rua Andradina','1999-09-09','lucas.rodrigues@hotmail.com');
    
create table enderecos (
	idEndereco int(11) primary key auto_increment,
    rua varchar(100) not null,
    numero int (10) not null,
    complemento varchar(100), 
    bairro varchar (100) not null,
    cidade varchar (100) not null,
    estado varchar (100) not null,
    cep varchar (8) not null
)   default charset=utf8;

insert into enderecos (rua, numero, complemento, bairro, cidade, estado, cep) values
	('Rua Souza','76','','Jd Cruzeiro','Bahia','BA','09852765'),
	('Av. Parada','62','','Vila Silveira','Distrito Federal','DF','02766547'),
	('Rua Antonio ','65','','Franco Só','Paraiba','PB','02769873'),
	('Rua Souto','346','Viela 1','Caboia','Roraima','RR','02761963'),
	('Av. Melo','43','7º Andar','Pedra Só','Pernambuco','PE','65754765'),
	('Rua Yara','32','Casa 3','Parapuã','Rio de Janeiro','RJ','98766756');
