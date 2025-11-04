CREATE TABLE cliente (
	idcliente integer not null,
	nome varchar(50) not null, 
	cpf char(11),
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar (30),
	observacoes text,

	constraint pk_cln_idcliente primary key (idcliente)
);

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf )
values (1,'Manoel','88828383821','32323','2001-01-30','M','Estudante','Brasileira','Rua Joaquim Nabuco','23','Casa','Cidade Nova','Porto Uniao','SC')

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf )
values (2,'Geraldo','12343299929','56565','1987-01-04','M','Engenheiro','Brasileira','Rua das Limas','200','Ap','Centro','Poro Uniao','SC')

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (3,'Carlos','87732323227','55463','1967-10-01','M','Pedreiro','Brasileira','Rua das Laranjeiras','300','Apart','Cto.','Canoinhas','SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (4,'Adriana','12321222122','98777','1989-09-10','F','Jornalista','Brasileira','Rua das Limas','240','Casa','São Pedro','Porto Vitória','PR');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (5,'Amanda','99982838828','28382','1991-03-04','F','Jorn.','Italiana','Av. Central','100',NULL,'São Pedro','General Carneiro','PR');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (6,'Ângelo','99982828181','12323','2000-01-01','M','Professor','Brasileiro','Av. Beira Mar','300','Ctr.','São Paulo','SP','SP');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (7,'Anderson','99982828281','Prof',NULL,'M',NULL,'Italiano','Av. Brasil','100','Apartamento','Santa Rosa','Rio de Janeiro','RJ');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (8,'Camila','9998282828',NULL,'2001-10-10','F','Professora','Norte americana','Rua Central','4333',NULL,'Centro','Uberlância','MG');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (9,'Cristiano',NULL,NULL,NULL,'M','Estudante','Alemã','Rua do Centro','877','Casa','Centro','Porto Alegre','RS');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (10,'Fabrício','8828282828','32323',NULL,'M','Estudante','Brasileiro',NULL,NULL,NULL,'PU','SC','SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (11,'Fernanda',NULL,NULL,NULL,'F',NULL,'Brasileira',NULL,NULL,NULL,'Porto União','SC','SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (12,'Gilmar','88881818181','888','2000-02-10','M','Estud.','Brasileiro','Rua das Laranjeiras','200',NULL,'C. Nova','Canoinhas','SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (13,'Diego','1010191919','111939',NULL,'M','Professor','Alemão','Rua Central','455','Casa','Cidade N.','São Paulo','SP');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (14,'Jeferson',NULL,NULL,'1983-07-01','M',NULL,'Brasileiro',NULL,NULL,NULL,'União da Vitória','PR','PR');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
values (15,'Jessica',NULL,NULL,NULL,'F','Estudante',NULL,NULL,NULL,NULL,'União da Vitória','PR','PR');

SELECT * FROM cliente;

SELECT 'CPF: ' || cpf|| 'RG: ' || rg AS "CPF e RG" FROM cliente;

SELECT * FROM cliente LIMIT 3;

SELECT nome, data_nascimento FROM cliente WHERE data_nascimento > '2000-01-01';

SELECT nome FROM cliente WHERE nome like 'C%';

SELECT nome FROM cliente WHERE nome like '%C%';

SELECT nome, data_nascimento FROM cliente WHERE data_nascimento BETWEEN '1990-01-01' AND '1998-01-01';

SELECT nome,rg FROM cliente WHERE rg IS NULL;

SELECT nome FROM cliente ORDER BY nome ASC;

SELECT nome FROM cliente ORDER BY nome DESC;

--1. O nome, o gênero e a profissão de todos os clientes, ordenado pelo nome em ordem decrescente
SELECT nome,genero,profissao FROm cliente ORDER BY nome DESC;

--2. Os clientes que tenham a letra “R” no nome
SELECT nome FROM cliente WHERE nome LIKE '%r%'

--3. Os clientes que o nome inicia com a letra “C”
SELECT nome FROM cliente WHERE nome LIKE 'C%'

--4. Os clientes que o nome termina com a letra “A”
SELECT nome FROM cliente WHERE nome LIKE '%a'

--5. Os clientes que moram no bairro “Centro”
SELECT nome, bairro FROM cliente WHERE bairro = 'Centro' OR bairro = 'Cto.' OR bairro = 'Ctr.'

--6. Os clientes que moram em complementos que iniciam com a letra “A”
SELECT nome, complemento FROM cliente WHERE complemento IS NOT NULL AND nome LIKE 'A%'

--7. Somente os clientes do sexo feminino
SELECT nome, genero FROM cliente WHERE genero = 'F'

--8. Os clientes que não informaram o CPF
SELECT nome, cpf FROM cliente WHERE cpf IS NULL

--9. O nome e a profissão dos clientes, ordenado em ordem crescente pelo nome da profissão
SELECT nome, profissao FROM cliente ORDER BY profissao ASC;

--10. Os clientes de nacionalidade “Brasileira”
SELECT nome, nacionalidade FROM cliente WHERE nacionalidade = 'Brasileira' OR nacionalidade = 'Brasileiro'

--11. Os clientes que informaram o número da residência
SELECT nome, numero FROM cliente WHERE numero IS NOT NULL;

--12. Os clientes que moram em Santa Catarina
SELECT nome, uf FROM cliente WHERE uf = 'SC';

--13. Os clientes que nasceram entre 01/01/2000 e 01/01/2002
SELECT nome, data_nascimento FROM cliente WHERE data_nascimento BETWEEN '2000-01-01' AND '2002-01-01'

--14. O nome do cliente e o logradouro, número, complemento, bairro, município e UF concatenado de todos os clientes
SELECT 'Nome ' || nome,' logradouro: ' || logradouro || ' Numero: ' || numero ||' Complemento: ' || complemento || ' bairro: ' || bairro || ' Municipio: ' || municipio || ' UF: ' || uf AS "Concatenação" FROM cliente;

select * from cliente
update cliente set nome = 'Teste' where idcliente = 1;
update cliente set nome = 'Adriano', genero = 'M', numero = '241' where idcliente = 4
insert into cliente (idcliente, nome) values (16,'João')
delete from cliente where idcliente = 16

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, municipio, uf) values (16,'Maicon','11234959642','1234','1965-10-10','F','Empresario','Florianopolis','PR')
insert into cliente (idcliente, nome,  rg,  genero, profissao,nacionalidade,logradouro,numero,complemento,bairro, municipio, uf) values (17,'Getulio','4631','F','Estudante','Brsileira','Rua Central','343','Apartamento','Centro','Curitiba','SC')
insert into cliente (idcliente, nome, genero, profissao,nacionalidade,numero,complemento) values (18,'Sandra','F','Professor','Italiana','12','Bloco A')

update cliente set cpf = '45390569432',genero ='M',nacionalidade = 'Brasileira',uf='SC' where idcliente = 16;
update cliente set data_nascimento = '1978-04-01',genero ='M' where idcliente = 17;
update cliente set genero ='F',profissao ='Professora',numero ='123' where idcliente = 18;
delete from cliente where idcliente = 16
delete from cliente where idcliente = 18

create table profissoes (
	idprofissao integer not null,
	nome varchar(30) not null,

	constraint pk_prf_idprofissoes primary key (idprofissao),
	constraint un_prf_nomes unique (nome)
	
)

insert into profissao (idprofissao, nome) values (1, 'Estudante');
insert into profissao (idprofissao, nome) values (2, 'Engenheiro');
insert into profissao (idprofissao, nome) values (3, 'Pedreiro');
insert into profissao (idprofissao, nome) values (4, 'Jornalista');
insert into profissao (idprofissao, nome) values (5, 'Professor');

select * from profissao

create table nacionalidade (
	idnacionalidade integer not null,
	nome varchar(30) not null,

	constraint pk_ncn_idnacionalidade primary key (idnacionalidade),
	constraint un_ncn_nomes unique (nome)
	
)

insert into nacionalidade (idnacionalidade, nome) values (1, 'Brasileira');
insert into nacionalidade (idnacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade (idnacionalidade, nome) values (3, 'Norte-americana');
insert into nacionalidade (idnacionalidade, nome) values (4, 'Alemã');

select * from nacionalidade

create table complemento (
	idcomplemento integer not null,
	nome varchar(30) not null,

	constraint pk_cpl_idcomplemento primary key (idcomplemento),
	constraint un_cpl_nomes unique (nome)
	
)

insert into complemento (idcomplemento, nome) values (1, 'Casa');
insert into complemento (idcomplemento, nome) values (2, 'Apartamento');

select * from complemento

create table bairro (
	idbairro integer not null,
	nome varchar(30) not null,

	constraint pk_brr_idbairro primary key (idbairro),
	constraint un_brr_nomes unique (nome)
	
)

insert into bairro (idbairro, nome) values (1, 'Cidade Nova');
insert into bairro (idbairro, nome) values (2, 'Centro');
insert into bairro (idbairro, nome) values (3, 'São Pedro');
insert into bairro (idbairro, nome) values (4, 'Santa Rosa');

select * from bairro

select * from cliente

alter table cliente  rename column profissao to idprofissao
alter table cliente alter column idprofissao type integer

alter table cliente drop idprofissao
alter table cliente add idprofissao integer
alter table cliente add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao (idprofissao)

update cliente set idprofissao = 1 where idcliente in (1,9,10,12,15,17);
update cliente set idprofissao = 2 where idcliente = 2;
update cliente set idprofissao = 3 where idcliente = 3;
update cliente set idprofissao = 4 where idcliente in (4,5);
update cliente set idprofissao = 5 where idcliente in (6,7,8,13)

alter table cliente drop nacionalidade 
alter table cliente add idnacionalidade integer;
alter table cliente add constraint fk_cln_idnacionalidade foreign key (idnacionalidade) references nacionalidade (idnacionalidade)

update cliente set idnacionalidade = 1 where idcliente in (1,2,3,4,6,10,11,14);
update cliente set idnacionalidade = 2 where idcliente in (5,7);
update cliente set idnacionalidade = 3 where idcliente = 8;
update cliente set idnacionalidade = 4 where idcliente in (9,13)

alter table cliente drop complemento
alter table cliente add idcomplemento integer
alter table cliente add constraint fk_cln_idcomplemento foreign key (idcomplemento) references complemento (idcomplemento)

select * from cliente

update cliente set idcomplemento = 1 where idcliente in (1,4,9,13);
update cliente set idcomplemento = 2 where idcliente in (2,3,7)

alter table cliente drop bairro;
alter table cliente add idbairro integer;
alter table cliente add constraint fc_cln_idbairro foreign key (idbairro) references bairro (idbairro)
update cliente set idbairro =1 where idcliente in (1,12,13);
update cliente set idbairro =2 where idcliente in (2,3,6,8,9);
update cliente set idbairro =3 where idcliente in (4,5);
update cliente set idbairro =4 where idcliente =7

create table uf (
	iduf integer not null,
	nome varchar(30) not null,
	sigla char(2) not null,

	constraint pk_ufd_idunidade_federacao primary key (iduf),
	constraint un_ufd_nome unique (nome),
	constraint un_ufd_sigla unique (sigla)
)

insert into uf (iduf,nome,sigla) values (1, 'Santa Catarina', 'SC');
insert into uf (iduf,nome,sigla) values (2, 'Paraná', 'PR');
insert into uf (iduf,nome,sigla) values (3, 'São Paulo', 'SP');
insert into uf (iduf,nome,sigla) values (4, 'Minas Gerais', 'MG');
insert into uf (iduf,nome,sigla) values (5, 'Rio Grande do Sul', 'RS');
insert into uf (iduf,nome,sigla) values (6, 'Rio de Janeiro', 'RJ');

create table municipio (
	idmunicipio integer not null,
	nome varchar(30) not null,
	iduf integer not null,

	constraint pk_mnc_idmunicipio primary key (idmunicipio),
	constraint un_mnc_nome unique (nome),
	constraint fk_mnc_iduf foreign key (iduf) references uf (iduf)
)

insert into municipio (idmunicipio, nome, iduf) values (1,'Porto União', 1);
insert into municipio (idmunicipio, nome, iduf) values (2,'Canoinhas', 1);
insert into municipio (idmunicipio, nome, iduf) values (3,'Porto Vitória', 2);
insert into municipio (idmunicipio, nome, iduf) values (4,'General Carneiro', 2);
insert into municipio (idmunicipio, nome, iduf) values (5,'São Paulo', 3);
insert into municipio (idmunicipio, nome, iduf) values (6,'Rio de Janeiro', 6);
insert into municipio (idmunicipio, nome, iduf) values (7,'Uberlândia', 4);
insert into municipio (idmunicipio, nome, iduf) values (8,'Porto Alegre', 5);
insert into municipio (idmunicipio, nome, iduf) values (9,'União Vitória', 2);

SELECT * FROM cliente 
alter table cliente drop municipio;
alter table cliente drop uf;
alter table cliente add idmunicipio integer;
alter table cliente add constraint fk_cliente_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio)

update cliente set idmunicipio = 1 where idcliente in (1,2,10,11);
update cliente set idmunicipio = 2 where idcliente in (3,12);
update cliente set idmunicipio = 3 where idcliente = 4;
update cliente set idmunicipio = 4 where idcliente = 5;
update cliente set idmunicipio = 5 where idcliente in (6,13);
update cliente set idmunicipio = 6 where idcliente = 7;
update cliente set idmunicipio = 7 where idcliente = 8;
update cliente set idmunicipio = 8 where idcliente = 9;
update cliente set idmunicipio = 9 where idcliente in (14,15);

create table fornecedor (
	idfornecedor integer not null,
	nome varchar(30) unique not null,

	constraint pk_frn_idfornecedor primary key (idfornecedor),
	constraint un_frn_nome unique (nome)
);

insert into fornecedor (idfornecedor, nome) values (1,'Cap.Computadores');
insert into fornecedor (idfornecedor, nome) values (2,'AA. Computadores');
insert into fornecedor (idfornecedor, nome) values (3,'BB. Máquinas');

create table Vendedor (
	idvendedor integer not null,
	nome varchar(30) unique not null,

	constraint pk_vnd_idvendedor primary key (idvendedor),
	constraint un_vnd_nome unique (nome)
);

insert into vendedor (idvendedor, nome) values (1,'André');
insert into vendedor (idvendedor, nome) values (2,'Alisson');
insert into vendedor (idvendedor, nome) values (3,'José');
insert into vendedor (idvendedor, nome) values (4,'Ailton');
insert into vendedor (idvendedor, nome) values (5,'Maria');
insert into vendedor (idvendedor, nome) values (6,'Suelem');
insert into vendedor (idvendedor, nome) values (7,'Aline');
insert into vendedor (idvendedor, nome) values (8,'Silvana');

create table Transportadora (
	idtransportadora integer not null,
	idmunicipio integer,
	nome varchar(30) unique not null,
	logradouro varchar(50),
	numero varchar(10),

	constraint pk_tnp_idtransportadora primary key (idtransportadora),
	constraint fk_tnp_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio),
	constraint un_tnp_nome unique (nome),
	constraint un_tnp_logradouro unique (logradouro),
	constraint un_tnp_numero unique (numero)
);

insert into transportadora (idtransportadora,idmunicipio,nome,logradouro, numero) values (1,9,'BS. Transportes','Rua das Limas','01');
insert into transportadora (idtransportadora,idmunicipio,nome) values (2,5,'União Transportes');

create table produto(
	idproduto integer not null,
	idfornecedor integer not null,
	nome varchar(50) not null,
	valor float not null,

	constraint pk_prd_idproduto primary key (idproduto),
	constraint pk_prd_idfornecedor foreign key (idfornecedor) references fornecedor (idfornecedor)
)

insert into produto (idproduto, idfornecedor, nome, valor) values
(1, 1, 'Microcomputador', 800);
insert into produto (idproduto, idfornecedor, nome, valor) values
(2, 1, 'Monitor', 500);
insert into produto (idproduto, idfornecedor, nome, valor) values
(3, 2, 'Placa mãe', 200);
insert into produto (idproduto, idfornecedor, nome, valor) values
(4, 2, 'HD', 150);
insert into produto (idproduto, idfornecedor, nome, valor) values
(5, 2, 'Placa de vídeo', 200);
insert into produto (idproduto, idfornecedor, nome, valor) values
(6, 3, 'Memória RAM', 100);
insert into produto (idproduto, idfornecedor, nome, valor) values
(7, 1, 'Gabinete', 35);

create table pedido(
	idpedido integer not null,
	idcliente integer not null,
	idtransportadora integer,
	idvendedor integer not null,
	data_pedido date not null,
	valor float not null,

	constraint pk_pdd_idpedido primary key (idpedido),
	constraint fk_pdd_idcliente foreign key (idcliente) references cliente (idcliente),
	constraint fk_pdd_idtransportadora foreign key (idtransportadora) references transportadora (idtransportadora),
	constraint fk_pdd_idvendedor foreign key (idvendedor) references vendedor (idvendedor)
	);

insert into pedido (idpedido, data_pedido, valor,idcliente,idtransportadora,idvendedor )
values (1,'2008-04-01',1300,1,1,1);
insert into pedido (idpedido, data_pedido, valor,idcliente,idtransportadora,idvendedor )
values (2,'2008-04-01',500,1,1,1);
insert into pedido (idpedido, data_pedido, valor,idcliente,idtransportadora,idvendedor )
values (3,'2008-04-02',300,11,2,5);
insert into pedido (idpedido, data_pedido, valor,idcliente,idtransportadora,idvendedor )
values (4,'2008-04-05',1000,8,1,7);
insert into pedido (idpedido, data_pedido, valor,idcliente,idtransportadora,idvendedor )
values (5,'2008-04-06',200,9,2,6);
insert into pedido (idpedido, data_pedido, valor,idcliente,idtransportadora,idvendedor )
values (6,'2008-04-06',1985,10,1,6);
insert into pedido (idpedido, data_pedido, valor,idcliente,idtransportadora,idvendedor )
values (7,'2008-04-06',800,3,1,7);
insert into pedido (idpedido, data_pedido, valor,idcliente,idtransportadora,idvendedor )
values (8,'2008-04-06',175,3,null,7);
insert into pedido (idpedido, data_pedido, valor,idcliente,idtransportadora,idvendedor )
values (9,'2008-04-07',1300,12,null,8);
insert into pedido (idpedido, data_pedido, valor,idcliente,idtransportadora,idvendedor )
values (10,'2008-04-10',200,6,1,8);
insert into pedido (idpedido, data_pedido, valor,idcliente,idtransportadora,idvendedor )
values (11,'2008-04-15',300,15,2,1);
insert into pedido (idpedido, data_pedido, valor,idcliente,idtransportadora,idvendedor )
values (12,'2008-04-20',300,15,2,5);
insert into pedido (idpedido, data_pedido, valor,idcliente,idtransportadora,idvendedor )
values (13,'2008-04-20',350,9,1,7);
insert into pedido (idpedido, data_pedido, valor,idcliente,idtransportadora,idvendedor )
values (14,'2008-04-23',300,2,1,5);
insert into pedido (idpedido, data_pedido, valor,idcliente,idtransportadora,idvendedor )
values (15,'2008-04-25',200,11,null,5)

select * from pedido

create table pedido_produto (
	idpedido integer not null,
	idproduto integer not null,
	quantidade integer not null,
	valor_unitario float not null,

	constraint pk_pdp_idpedidoproduto primary key (idpedido, idproduto),
	constraint fk_pdp_idpedido foreign key (idpedido) references pedido (idpedido),
	constraint fk_pdp_idproduto foreign key (idproduto) references produto (idproduto)
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (1,1,1,800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (1,2,1,500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (2,2,1,500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (3,4,2,150);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (4,1,1,800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (4,3,1,800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (5,3,1,200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (6,1,2,800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (6,7,1,35);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (6,5,1,200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (6,4,1,150);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (7,1,1,800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (8,7,5,35);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (9,1,1,800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (9,2,1,500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (10,5,1,200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (11,5,1,200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (11,6,1,100);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (12,2,1,500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (13,3,1,200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (13,4,1,150);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (14,6,3,100);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (15,3,1,200);

--exercicios

--1. Somente o nome de todos os vendedores em ordem alfabética.

SELECT nome FROM vendedor ORDER BY nome ASC

--2. Os produtos que o preço seja maior que R$200,00, em ordem crescente pelo preço.

SELECT nome FROM produto WHERE valor > 200

--3. O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto.

SELECT
	nome,
	valor,
	valor*1.1 AS valor_ajustado
FROM produto

--4. Os municípios do Rio Grande do Sul.

SELECT 
	m.nome
FROM municipio AS m 
FULL OUTER JOIN uf AS u ON m.iduf = u.iduf
WHERE u.sigla = 'RS'

--5. Os pedidos feitos entre 10/04/2008 e 25/04/2008 ordenado pelo valor.

SELECT * FROM pedido WHERE data_pedido BETWEEN '10/04/2008' AND '25/04/2008'

--6. Os pedidos que o valor esteja entre R$1.000,00 e R$1.500,00.

SELECT * FROM pedido WHERE valor BETWEEN '1000' AND '1500'

--7. Os pedidos que o valor não esteja entre R$100,00 e R$500,00.

SELECT * FROM pedido WHERE valor < 100 OR valor > 500

--8. Os pedidos do vendedor André ordenado pelo valor em ordem decrescente.

SELECT
	p.idpedido
FROM pedido AS p 
FULL OUTER JOIN vendedor AS v ON p.idvendedor = v.idvendedor
WHERE v.nome = 'André'

--9. Os pedidos do cliente Manoel ordenado pelo valor em ordem crescente.

SELECT
	p.idpedido
FROM pedido AS p 
FULL OUTER JOIN cliente AS c ON p.idvendedor = c.idcliente
WHERE c.nome = 'Manoel'
ORDER BY p.valor ASC

--10. Os pedidos da cliente Jéssica que foram feitos pelo vendedor André.

SELECT
	p.idpedido
FROM pedido AS p
FULL OUTER JOIN cliente AS c ON p.idcliente = c.idcliente
FULL OUTER JOIN vendedor AS v ON p.idvendedor = v.idvendedor
WHERE v.nome = 'André'

--11. Os pedidos que foram transportados pela transportadora União Transportes.

SELECT 
	p.idpedido
FROM pedido AS p FULL OUTER JOIN transportadora AS t
ON p.idtransportadora = t.idtransportadora
WHERE t.idtransportadora = '2'

--12. Os pedidos feitos pela vendedora Maria ou pela vendedora Aline.

SELECT idpedido FROM pedido AS p
FULL OUTER JOIN vendedor AS v ON p.idpedido = v.idvendedor
WHERE v.nome = 'Maria' OR v.nome = 'Aline'

--13. Os clientes que moram em União da Vitória ou Porto União.

SELECT 
	p.idpedido
FROM pedido AS p FULL OUTER JOIN transportadora AS t
ON p.idtransportadora = t.idtransportadora
WHERE t.idtransportadora = '2' OR  t.idtransportadora = '1'

--14. Os clientes que não moram em União da Vitória e nem em Porto União.

SELECT c.nome FROM cliente AS c
FULL OUTER JOIN municipio AS m ON c.idmunicipio = m.idmunicipio
WHERE m.nome != 'Porto União' OR m.nome != 'Vitória'


--15. Os clientes que não informaram o logradouro.

SELECT * FROM cliente WHERE logradouro IS NULL

--16. Os clientes que moram em avenidas.

SELECT * FROM cliente WHERE logradouro LIKE '%Av%'

--17. Os vendedores que o nome começa com a letra S.

SELECT nome FROM vendedor WHERE nome LIKE '%S%'

--18. Os vendedores que o nome termina com a letra A.

SELECT nome FROM vendedor WHERE nome LIKE '%a'

--19. Os vendedores que o nome não começa com a letra A.

SELECT nome FROM vendedor WHERE nome NOT LIKE 'A%'

--20. Os municípios que começam com a letra P e são de Santa Catarina.

SELECT 
	m.nome
FROM municipio AS m 
FULL OUTER JOIN uf AS u ON m.iduf = u.iduf
WHERE m.nome LIKE 'P%' AND u.sigla = 'SC'


--21. As transportadoras que informaram o endereço.

SELECT * FROM transportadora WHERE logradouro IS NOT NULL

--22. Os itens do pedido 01.

SELECT nome FROM produto AS pr
FULL OUTER JOIN pedido_produto AS pp ON pr.idproduto = pp.idproduto
FULL OUTER JOIN pedido AS p ON pp.idpedido = p.idpedido
WHERE p.idpedido = '1'

--23. Os itens do pedido 06 ou do pedido 10.

SELECT nome FROM produto AS pr
FULL OUTER JOIN pedido_produto AS pp ON pr.idproduto = pp.idproduto
FULL OUTER JOIN pedido AS p ON pp.idpedido = p.idpedido
WHERE p.idpedido = '6' OR p.idpedido= '10'

--funções agregadas

select avg(valor) from pedido

select count(idmunicipio) from municipio

select max(valor) from pedido

select min(valor) from pedido

select sum(valor) from pedido

select idcliente, sum(valor) from pedido group by idcliente

select idcliente, sum(valor) from pedido group by idcliente having sum(valor) > 500

--1. A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00.

SELECT idvendedor, avg(valor) FROM pedido GROUP BY idvendedor HAVING avg(valor) > 200

--2. Os vendedores que venderam mais que R$ 1500,00.

SELECT idvendedor, SUM(valor) FROM pedido GROUP BY idvendedor HAVING SUM(valor) > 1500

--3. O somatório das vendas de cada vendedor.

SELECT idvendedor, SUM(valor) FROM pedido GROUP BY idvendedor

--4. A quantidade de municípios.

SELECT COUNT(*) FROM municipio

--5. A quantidade de municípios que são do Paraná ou de Santa Catarina.

SELECT
	COUNT(m.iduf)
FROM municipio AS m 
INNER JOIN uf AS u ON m.iduf = u.iduf
WHERE u.nome = 'Paraná' OR u.nome = 'Santa Catarina'

--6. A quantidade de municípios por estado.

SELECT
	u.nome,
	COUNT(m.iduf) AS municipios
FROM municipio AS m 
FULL OUTER JOIN  uf AS u ON m.iduf = u.iduf
GROUP BY u.nome

--7. A quantidade de clientes que informaram o logradouro.

SELECT COUNT(idcliente) FROM cliente WHERE logradouro IS NOT NULL

--8. A quantidade de clientes por município.

SELECT idmunicipio, COUNT(idcliente) FROM cliente GROUP BY idmunicipio

--9. A quantidade de fornecedores.

SELECT COUNT(*) FROM fornecedor

--10. A quantidade de produtos por fornecedor.

SELECT
	f.nome,
	COUNT(p.idproduto)
FROM produto AS p 
FULL OUTER JOIN fornecedor AS f ON p.idfornecedor = f.idfornecedor
GROUP BY f.nome

--11. A média de preços dos produtos do fornecedor Cap. Computadores.

SELECT
	f.nome,
	AVG(p.idproduto)
FROM produto AS p 
FULL OUTER JOIN fornecedor AS f ON p.idfornecedor = f.idfornecedor
GROUP BY f.nome
HAVING f.nome = 'Cap.Computadores'

--12. O somatório dos preços de todos os produtos.

SELECT SUM(valor) FROM produto

--13. O nome do produto e o preço somente do produto mais caro.

SELECT nome, valor from produto ORDER BY valor DESC LIMIT 1

--14. O nome do produto e o preço somente do produto mais barato.

SELECT nome, valor from produto ORDER BY valor LIMIT 1

--15. A média de preço de todos os produtos.

SELECT AVG(valor) FROM produto

--16. A quantidade de transportadoras.

SELECT COUNT(idtransportadora) FROM transportadora

--17. A média do valor de todos os pedidos.

SELECT AVG(valor) FROM pedido

--18. O somatório do valor do pedido agrupado por cliente.

SELECT 
	c.nome,
	SUM(p.valor) AS sum_value
FROM pedido AS p
FULL OUTER JOIN cliente AS c
ON p.idcliente = c.idcliente
GROUP BY c.nome

--19. O somatório do valor do pedido agrupado por vendedor.

SELECT 
	v.nome,
	SUM(p.valor) AS sum_value
FROM pedido AS p
FULL OUTER JOIN vendedor AS v
ON p.idvendedor = v.idvendedor
GROUP BY v.nome

--20. O somatório do valor do pedido agrupado por transportadora.

SELECT 
	t.nome,
	SUM(p.valor) AS sum_value
FROM pedido AS p
FULL OUTER JOIN transportadora AS t
ON t.idtransportadora = p.idtransportadora
GROUP BY t.nome

--21. O somatório do valor do pedido agrupado pela data.

SELECT 
	data_pedido,
	SUM(valor) AS sum_value
FROM pedido 
GROUP BY data_pedido

--22. O somatório do valor do pedido agrupado por cliente, vendedor e transportadora.

SELECT 
	c.nome,
	v.nome,
	t.nome,
	SUM(p.valor) AS sum_value
FROM pedido AS p
FULL OUTER JOIN cliente AS c
ON p.idcliente = c.idcliente
FULL OUTER JOIN vendedor AS v
ON p.idvendedor = v.idvendedor
FULL OUTER JOIN transportadora AS t
ON p.idtransportadora = t.idtransportadora
GROUP BY c.nome, v.nome, t.nome

--23. O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00.

SELECT
	SUM(valor) AS sum_value
FROM pedido
WHERE data_pedido BETWEEN '2008-04-01' AND '2009-12-10' 
AND valor > 200

--24. A média do valor do pedido do vendedor André.

SELECT 
	v.nome,
	AVG(p.valor) AS avg_value
FROM pedido AS p
FULL OUTER JOIN vendedor AS v
ON p.idvendedor = v.idvendedor
GROUP BY v.nome
HAVING v.nome = 'André'

--25. A média do valor do pedido da cliente Jéssica.

SELECT 
	c.nome,
	AVG(p.valor) AS avg_value
FROM pedido AS p
FULL OUTER JOIN cliente AS c
ON p.idcliente = c.idcliente
GROUP BY c.nome
HAVING c.nome = 'Jessica'

--26. A quantidade de pedidos transportados pela transportadora BS. Transportes.

SELECT 
	t.nome,
	COUNT(p.idpedido) AS qnt_pedido
FROM pedido AS p
FULL OUTER JOIN transportadora AS t
ON t.idtransportadora = p.idtransportadora
GROUP BY t.nome
HAVING t.nome = 'BS. Transportes'

--27. A quantidade de pedidos agrupados por vendedor.

SELECT 
	v.nome,
	COUNT(p.idpedido) AS qnt_pedido
FROM pedido AS p
FULL OUTER JOIN vendedor AS v
ON p.idvendedor = v.idvendedor
GROUP BY v.nome

--28. A quantidade de pedidos agrupados por cliente.

SELECT 
	c.nome,
	COUNT(p.idpedido) AS qnt_pedido
FROM pedido AS p
FULL OUTER JOIN cliente AS c
ON p.idcliente = c.idcliente
GROUP BY c.nome

--29. A quantidade de pedidos entre 15/04/2008 e 25/04/2008.

SELECT 
	COUNT(idpedido) AS qnt_pedido
FROM pedido 
WHERE data_pedido BETWEEN '2008-04-15' AND '2008-04-25' 

--30. A quantidade de pedidos que o valor seja maior que R$ 1.000,00.

SELECT 
	COUNT(idpedido) AS qnt_pedido
FROM pedido
WHERE valor >1000

--31. A quantidade de microcomputadores vendida.

SELECT SUM(quantidade) FROM pedido_produto AS pp
FULL OUTER JOIN produto AS p
ON pp.idproduto = p.idproduto
WHERE p.nome = 'Microcomputador'

--32. A quantidade de produtos vendida agrupado por produto.

SELECT 
	p.nome,
	SUM(quantidade) AS qnt
FROM pedido_produto AS pp
FULL OUTER JOIN produto AS p
ON pp.idproduto = p.idproduto
GROUP BY p.nome

--33. O somatório do valor dos produtos dos pedidos, agrupado por pedido.

SELECT 
	p.idpedido,
	SUM(pp.valor_unitario) AS sum_value
FROM pedido AS p
FULL OUTER JOIN pedido_produto AS pp
ON p.idpedido = pp.idpedido
GROUP BY p.idpedido

--34. A quantidade de produtos agrupados por pedido.

SELECT 
	p.idpedido,
	SUM(pp.quantidade) AS sum_value
FROM pedido AS p
FULL OUTER JOIN pedido_produto AS pp
ON p.idpedido = pp.idpedido
GROUP BY p.idpedido

--35. O somatório dos valores unitários de todos os produtos.

SELECT SUM(valor_unitario) FROM pedido_produto

--36. A média dos produtos do pedido 6.

SELECT 
	AVG(pp.quantidade) AS avg_value
FROM pedido AS p
FULL OUTER JOIN pedido_produto AS pp
ON p.idpedido = pp.idpedido
WHERE p.idpedido = '6'

--37. O valor do maior produto do pedido.

SELECT
	MAX(valor_unitario) AS max_value
FROM pedido_produto

--38. O valor do menor produto do pedido.

SELECT
	MIN(valor_unitario) AS min_value
FROM pedido_produto

--39. O somatório da quantidade de produtos por pedido.

SELECT
	p.idpedido,
	pp.idproduto,
	SUM(pp.quantidade) qnt_pedido
FROM pedido AS p
FULL OUTER JOIN pedido_produto AS pp
ON p.idpedido = pp.idpedido
GROUP BY p.idpedido, pp.idproduto

--40. O somatório da quantidade de todos os produtos do pedido.

SELECT
	p.idpedido,
	SUM(pp.quantidade) qnt_pedido
FROM pedido AS p
FULL OUTER JOIN pedido_produto AS pp
ON p.idpedido = pp.idpedido
GROUP BY p.idpedido

-- Relacionamento com joins

SELECT
	cln.nome AS cliente,
	prf.nome AS profissao
FROM
	cliente AS cln
LEFT OUTER JOIN
	profissao AS prf on cln.idprofissao = prf.idprofissao

SELECT
	cln.nome AS cliente,
	prf.nome AS profissao
FROM
	cliente AS cln
INNER JOIN
	profissao AS prf on cln.idprofissao = prf.idprofissao

--1. O nome do cliente, a profissão, a nacionalidade, o logradouro, o número, o complemento, o bairro, o município e a unidade de federação.

SELECT
	c.nome AS nome_cliente,
	p.nome AS profissao,
	n.nome AS nacionalidade,
	c.logradouro AS logradouro,
	c.numero AS numero,
	b.nome AS bairro,
	m.nome AS municipio,
	u.nome
FROM cliente AS c
FULL OUTER JOIN profissao AS p ON c.idprofissao = p.idprofissao
FULL OUTER JOIN nacionalidade AS n ON c.idnacionalidade = n.idnacionalidade
FULL OUTER JOIN bairro AS b ON c.idbairro = b.idbairro
FULL OUTER JOIN municipio AS m ON c.idmunicipio = m.idmunicipio
FULL OUTER JOIN uf AS u ON u.iduf = m.iduf
	
	
--2. O nome do produto, o valor e o nome do fornecedor.

SELECT
	p.nome AS nome_produto,
	p.valor,
	f.nome AS nome_fornecedor
FROM produto AS p
FULL OUTER JOIN fornecedor AS f ON p.idfornecedor = f.idfornecedor

--3. O nome da transportadora e o município.

SELECT
	t.nome AS nome_transportadora,
	m.nome AS nome_municipio
FROM transportadora AS t
FULL OUTER JOIN municipio AS m ON t.idmunicipio = m.idmunicipio

--4. A data do pedido, o valor, o nome do cliente, o nome da transportadora e o nome do vendedor.

SELECT
	p.data_pedido,
	p.valor,
	c.nome AS nome_cliente,
	t.nome AS nome_transportadora,
	v.nome AS nome_vendedor
FROM pedido AS p
FULL OUTER JOIN cliente AS c ON p.idcliente = c.idcliente
FULL OUTER JOIN transportadora AS t ON p.idtransportadora = t.idtransportadora
FULL OUTER JOIN vendedor AS v ON p.idvendedor = v.idvendedor


--5. O nome do produto, a quantidade e o valor unitário dos produtos do pedido.

SELECT 
	p.nome,
	pp.quantidade,
	pp.valor_unitario
FROM produto AS p 
FULL OUTER JOIN pedido_produto AS pp ON p.idproduto = pp.idproduto

--6. O nome dos clientes e a data do pedido dos clientes que fizeram algum pedido (ordenado pelo nome do cliente).

SELECT
	c.nome,
	p.data_pedido
FROM cliente AS c
FULL OUTER JOIN pedido AS p ON c.idcliente = p.idcliente
WHERE p.data_pedido IS NOT NULL
ORDER BY c.nome ASC

--7. O nome dos clientes e a data do pedido de todos os clientes, independente se tenham feito pedido (ordenado pelo nome do cliente).

SELECT
	c.nome,
	p.data_pedido
FROM cliente AS c
FULL OUTER JOIN pedido AS p ON c.idcliente = p.idcliente
ORDER BY c.nome ASC

--8. O nome da cidade e a quantidade de clientes que moram naquela cidade.

SELECT 
	COUNT(c.idcliente) AS qnt_cliente,
	m.nome 
FROM cliente AS c
FULL OUTER JOIN municipio AS m ON c.idmunicipio = m.idmunicipio
GROUP BY m.nome

--9. O nome do fornecedor e a quantidade de produtos de cada fornecedor.

SELECT
	f.nome,
	COUNT(p.idproduto) AS qnt_produto
FROM fornecedor AS f
FULL OUTER JOIN produto AS p ON f.idfornecedor = p.idfornecedor
GROUP BY f.nome
	

--10.O nome do cliente e o somatório do valor do pedido (agrupado por cliente).

SELECT 
	c.nome,
	SUM(p.valor) AS sum_value
FROM cliente AS c FULL OUTER JOIN pedido AS p ON c.idcliente = p.idcliente
GROUP BY c.nome

--11.O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor).

SELECT 
	v.nome,
	SUM(p.valor) AS sum_value
FROM vendedor AS v FULL OUTER JOIN pedido AS p ON v.idvendedor = p.idvendedor
GROUP BY v.nome

--12.O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).

SELECT 
	t.nome,
	SUM(p.valor) AS sum_value
FROM transportadora AS t FULL OUTER JOIN pedido AS p ON t.idtransportadora = p.idtransportadora
GROUP BY t.nome

--13.O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).

SELECT 
	c.nome,
	COUNT(p.idpedido) AS qnt_pedido
FROM cliente AS c FULL OUTER JOIN pedido AS p ON c.idcliente = p.idcliente
GROUP BY c.nome

--14.O nome do produto e a quantidade vendida (agrupado por produto).

SELECT
	p.nome,
	SUM(pp.quantidade) AS qnt_vendida
FROM produto AS p FULL OUTER JOIN pedido_produto AS pp ON p.idproduto = pp.idproduto
GROUP BY p.nome

--15.A data do pedido e o somatório do valor dos produtos do pedido (agrupado pela data do pedido).

SELECT
	p.data_pedido,
	SUM(pp.valor_unitario) AS sum_unit_value
FROM pedido AS p FULL OUTER JOIN pedido_produto AS pp ON p.idpedido = pp.idpedido
GROUP BY p.data_pedido

--16.A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).

SELECT
	p.data_pedido,
	SUM(pp.quantidade) AS sum_quantidade
FROM pedido AS p FULL OUTER JOIN pedido_produto AS pp ON p.idpedido = pp.idpedido
GROUP BY p.data_pedido

--comandos adicionais

SELECT * FROM pedido
SELECT 
	data_pedido,
	extract(day from data_pedido) AS dia, 
	extract(month from data_pedido) AS mes,
	extract(year from data_pedido) AS ano
from pedido

select nome, substring(nome from 1 for 5), substring(nome,2) from cliente

select nome, upper (nome) from cliente
select nome,cpf, coalesce(cpf,'Não informado')from cliente

select
	case sigla
		when 'PR' then 'Paraná'
		when 'SC' then 'Santa Catarina'
	else 'Outros'
	end as uf
FROM
	uf

--1. O nome do cliente e somente o mês de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.

SELECT
	nome,
	COALESCE(EXTRACT(MONTH FROM data_nascimento),'0') 
FROM cliente

--2. O nome do cliente e somente o nome do mês de nascimento (Janeiro, Fevereiro etc). Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.

SELECT 
    nome,
	CASE
    	WHEN data_nascimento IS NOT NULL THEN TO_CHAR(data_nascimento, 'Month')
		ELSE 'Não Informado'
	END AS mes
FROM cliente


--3. O nome do cliente e somente o ano de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.

SELECT 
    nome,
	CASE
    	WHEN data_nascimento IS NOT NULL THEN TO_CHAR(data_nascimento, 'YYYY')
		ELSE 'Não Informado'
	END AS Ano
FROM cliente

--4. O caractere 5 até o caractere 10 de todos os municípios.

select nome, substring(nome from 5 for 5) from municipio

--5. O nome de todos os municípios em letras maiúsculas.

SELECT
	UPPER(nome)
FROM municipio

--6. O nome do cliente e o gênero. Caso seja M mostrar “Masculino”, senão mostrar “Feminino”.

SELECT 
	nome,
	CASE genero
		WHEN 'M' THEN 'Masculino'
		WHEN 'F' THEN 'Feminino'
	ELSE 'Não informado'
	END AS gender
FROM cliente

--7. O nome do produto e o valor. Caso o valor seja maior do que R$ 500,00 mostrar a mensagem “Acima de 500”, caso contrário, mostrar a mensagem “Abaixo de 500”.

SELECT
	nome,
	CASE 
		WHEN valor>500 THEN 'Acima de 500'
	ELSE 'Abaixo de 500'
	END AS valor
FROM produto

--SUBCONSULTA

--1. O nome dos clientes que moram na mesma cidade do Manoel. Não deve ser mostrado o Manoel.

SELECT
	nome
FROM cliente
WHERE idmunicipio = (
	SELECT idmunicipio
	FROM cliente
	WHERE nome = 'Manoel'
)
AND idcliente <> 1
	

--2. A data e o valor dos pedidos que o valor do pedido seja menor que a média de todos os pedidos.

SELECT
	data_pedido,
	valor
FROM pedido
WHERE valor > (SELECT AVG(valor) FROM pedido)

--3. A data,o valor, o cliente e o vendedor dos pedidos que possuem 2 ou mais produtos.

SELECT
	p.data_pedido,
	p.valor,
	c.nome,
	v.nome
FROM pedido AS p 
FULL OUTER JOIN cliente AS c ON p.idcliente = c.idcliente
FULL OUTER JOIN vendedor AS v ON p.idvendedor = v.idvendedor
FULL OUTER JOIN pedido_produto AS pp ON p.idpedido = pp.idpedido 
WHERE p.idpedido IN (
    SELECT idpedido
    FROM pedido_produto
    GROUP BY idpedido
    HAVING SUM(quantidade) >= 2
);

--4. O nome dos clientes que moram na mesma cidade da transportadora BSTransportes.

SELECT
	nome
FROM cliente
WHERE idmunicipio = (
	SELECT
		idmunicipio
	from transportadora
	WHERE nome = 'BS. Transportes'
)

--5. O nome do cliente e o município dos clientes que estão localizados no mesmo município de qualquer uma das transportadoras.

SELECT
	c.nome AS nome_cliente,
	m.nome AS nome_municipio
FROM cliente AS c 
FULL OUTER JOIN municipio AS m ON c.idmunicipio = m.idmunicipio
WHERE c.idmunicipio IN (
	SELECT 
		idmunicipio
	FROM transportadora
)

--6. Atualizar o valor do pedido em 5% para os pedidos que o somatório do valor total dos produtos daquele pedido seja maior que a média do valor total de todos os produtos de todos os pedidos.

update pedido  set valor = valor + ((valor*5) /100)
WHERE (select sum(pdp.valor_unitario) from pedido_produto pdp where pdp.idpedido = pedido.idpedido ) > (select avg(valor_unitario) from pedido_produto)

SELECT * FROM pedido

--7. O nome do cliente e a quantidade de pedidos feitos pelo cliente.

SELECT
    c.nome,
    (
        SELECT COUNT(*)
        FROM pedido AS p
        WHERE p.idcliente = c.idcliente
    ) AS qtd_pedidos
FROM cliente AS c


--8. Para revisar, refaça o exercício anterior (número 07) utilizando group by e mostrando somente os clientes que fizeram pelo menos um pedido.

SELECT
    c.nome,
    (
        SELECT COUNT(*)
        FROM pedido AS p
        WHERE p.idcliente = c.idcliente
    ) AS qtd_pedidos
FROM cliente AS c
WHERE (
    SELECT COUNT(*)
    FROM pedido AS p
    WHERE p.idcliente = c.idcliente
) > 0;

-- Views

CREATE VIEW cliente_profissao AS
SELECT
	c.nome AS nome_cliente,
	p.nome AS nome_profissao
FROM cliente AS c
FULL OUTER JOIN profissao AS p ON c.idprofissao = p.idprofissao

SELECT nome_cliente FROM cliente_profissao WHERE nome_profissao = 'Professor'

--1. O nome, a profissão, a nacionalidade, o complemento, o município, a unidade de federação, o bairro, o CPF,o RG, a data de nascimento, o gênero (mostrar “Masculino” ou “Feminino”), o logradouro, o número e as observações dos clientes.

CREATE VIEW tabela_completa AS
SELECT
    c.nome AS nome_cliente,
    n.nome AS nome_nacionalidade,
    m.nome AS nome_municipio,
    u.nome AS nome_uf,
    b.nome AS nome_bairro,
    c.cpf,
    c.rg,
    c.data_nascimento,
    CASE 
        WHEN c.genero = 'M' THEN 'Masculino'
        WHEN c.genero = 'F' THEN 'Feminino'
        ELSE 'Não informado'
    END AS genero,
    c.logradouro,
    c.numero,
    c.observacoes
FROM cliente AS c
FULL OUTER JOIN nacionalidade AS n ON c.idnacionalidade = n.idnacionalidade
FULL OUTER JOIN municipio AS m ON c.idmunicipio = m.idmunicipio
FULL OUTER JOIN uf AS u ON m.iduf = u.iduf
FULL OUTER JOIN bairro AS b ON c.idbairro = b.idbairro;

--2. O nome do município e o nome e a sigla da unidade da federação.

CREATE VIEW nome_municipio_sigla AS
	SELECT
		m.nome AS nome_municipio,
		u.nome AS nome_unidade_deferacao
	FROM municipio AS m
	FULL OUTER JOIN uf AS u ON m.iduf = u.iduf

--3. O nome do produto, o valor e o nome do fornecedor dos produtos.

CREATE VIEW produto_valor_fornecedor AS
	SELECT
		p.nome AS nome_produto,
		p.valor AS valor_produto,
		f.nome AS nome_fornecedor
	FROM produto AS p 
	FULL OUTER JOIN fornecedor AS f ON p.idfornecedor = f.idfornecedor

--4. O nome da transportadora, o logradouro, o número, o nome da unidade de federação e a sigla da unidade de federação das transportadoras.

CREATE VIEW transportadora_dados AS
	SELECT 
		t.nome AS nome_transportadora,
		t.logradouro AS logradouro,
		u.nome AS nome_unidade_federacao,
		u.sigla AS sigla_unidade_federacao
	FROM transportadora AS t
	LEFT OUTER JOIN municipio AS m ON t.idmunicipio = m.idmunicipio
	LEFT OUTER JOIN uf AS u ON m.iduf = u.iduf
		
--5. A data do pedido, o valor, o nome da transportadora, o nome do cliente e o nome do vendedor dos pedidos.

CREATE VIEW pedido_dados AS
SELECT
	p.data_pedido,
	p.valor,
	t.nome AS transportadora,
	c.nome AS cliente,
	v.nome AS vendedor
FROM pedido AS p 
LEFT OUTER JOIN transportadora AS t ON p.idtransportadora = t.idtransportadora
LEFT OUTER JOIN cliente AS c ON p.idcliente = c.idcliente
LEFT OUTER JOIN vendedor AS v ON p.idvendedor = v.idvendedor 

--6. O nome do produto, a quantidade, o valor unitário e o valor total dos produtos do pedido.

CREATE VIEW vendas_totais AS
SELECT
	p.nome AS nome_produto,
	pp.quantidade AS quantidade,
	pp.valor_unitario AS valor_unitario,
	pp.valor_unitario * pp.quantidade AS valor_total
FROM pedido_produto AS pp
LEFT OUTER JOIN produto AS p ON pp.idproduto = p.idproduto

SELECT * FROM tabela_completa

-- Campos Autoincremento
create table exemplo (
	idexemplo serial not null,
	nome varchar(50) not null,

	constraint pk_exemplo_idexemplo primary key (idexemplo)
)

INSERT INTO exemplo (nome) VALUES ('Exemplo 1');
INSERT INTO exemplo (nome) VALUES ('Exemplo 2');
INSERT INTO exemplo (nome) VALUES ('Exemplo 3');
INSERT INTO exemplo (nome) VALUES ('Exemplo 4');
INSERT INTO exemplo (nome) VALUES ('Exemplo 5');

SELECT * FROM EXEMPLO

SELECT * FROM BAIRRO
SELECT MAX(idbairro) + 1 FROM bairro 
CREATE SEQUENCE bairro_id_seq MINVALUE 5
ALTER TABLE bairro ALTER idbairro SET DEFAULT nextval('bairro_id_seq')
ALTER SEQUENCE bairro_id_seq OWNED BY bairro.idbairro
INSERT INTO bairro (nome) VALUES ('Teste 1')

--a. Cliente

SELECT MAX(idcliente) +1 FROM cliente
CREATE SEQUENCE cliente_id_seq MINVALUE 18
ALTER TABLE cliente ALTER idcliente SET DEFAULT nextval('cliente_id_seq')
ALTER SEQUENCE cliente_id_seq OWNED BY cliente.idcliente
INSERT INTO cliente (nome) VALUES ('Teste 1')

--b. Complemento

SELECT MAX(idcomplemento) +1 FROM complemento
CREATE SEQUENCE complemento_id_seq MINVALUE 3
ALTER TABLE complemento ALTER idcomplemento SET DEFAULT nextval('complemento_id_seq')
ALTER SEQUENCE complemento_id_seq OWNED BY complemento.idcomplemento

--c. Fornecedor

SELECT MAX(idfornecedor) +1 FROM fornecedor
CREATE SEQUENCE fornecedor_id_seq MINVALUE 5
ALTER TABLE fornecedor ALTER idfornecedor SET DEFAULT nextval('fornecedor_id_seq')
ALTER SEQUENCE fornecedor_id_seq OWNED BY fornecedor.idfornecedor


--d. Município

SELECT MAX(idmunicipio) +1 FROM municipio
CREATE SEQUENCE municipio_id_seq MINVALUE 11
ALTER TABLE municipio ALTER idmunicipio SET DEFAULT nextval('municipio_id_seq')
ALTER SEQUENCE municipio_id_seq OWNED BY municipio.idmunicipio
--e. Nacionalidade

SELECT MAX(idnacionalidade) +1 FROM nacionalidade
CREATE SEQUENCE nacionalidade_id_seq MINVALUE 4
ALTER TABLE nacionalidade ALTER idnacionalidade SET DEFAULT nextval('nacionalidade_id_seq')
ALTER SEQUENCE nacionalidade_id_seq OWNED BY nacionalidade.idnacionalidade

--f. Pedido

SELECT MAX(idpedido) +1 FROM pedido
CREATE SEQUENCE pedido_id_seq MINVALUE 17
ALTER TABLE pedido ALTER idpedido SET DEFAULT nextval('pedido_id_seq')
ALTER SEQUENCE pedido_id_seq OWNED BY pedido.idpedido
SELECT * FROM PEDIDO

--h. Profissão

SELECT MAX(idprofissao) +1 FROM profissao
CREATE SEQUENCE profissao_id_seq MINVALUE 7
ALTER TABLE profissao ALTER idprofissao SET DEFAULT nextval('profissao_id_seq')
ALTER SEQUENCE profissao_id_seq OWNED BY profissao.idprofissao

--i. Transportadora

SELECT MAX(idtransportadora) +1 FROM transportadora
CREATE SEQUENCE transportadora_id_seq MINVALUE 4
ALTER TABLE transportadora ALTER idtransportadora SET DEFAULT nextval('transportadora_id_seq')
ALTER SEQUENCE transportadora_id_seq OWNED BY transportadora.idtransportadora
INSERT INTO transportadora (nome) VALUES ('Teste sequência')

--j. UF

SELECT MAX(iduf) +1 FROM uf
CREATE SEQUENCE ud_id_seq MINVALUE 8
ALTER TABLE uf ALTER iduf SET DEFAULT nextval('ud_id_seq')
ALTER SEQUENCE ud_id_seq OWNED BY uf.iduf

--k. Vendedor

SELECT MAX(idvendedor) +1 FROM vendedor
CREATE SEQUENCE vendedor_id_seq MINVALUE 10
ALTER TABLE vendedor ALTER idvendedor SET DEFAULT nextval('vendedor_id_seq')
ALTER SEQUENCE vendedor_id_seq OWNED BY vendedor.idvendedor

--l. Produto

SELECT MAX(idproduto) +1 FROM produto
CREATE SEQUENCE produto_id_seq MINVALUE 8
ALTER TABLE produto ALTER idproduto SET DEFAULT nextval('produto_id_seq')
ALTER SEQUENCE produto_id_seq OWNED BY produto.idproduto

-- Campos Default
ALTER TABLE pedido ALTER COLUMN data_pedido SET DEFAULT CURRENT_DATE;
ALTER TABLE pedido ALTER COLUMN valor SET DEFAULT 0
INSERT INTO PEDIDO (idcliente,idvendedor) VALUES (1,1)
SELECT * FROM PEDIDO

--1. Adicione valores default na tabela de produtos do pedido

--a. Quantidade com o valor 1

ALTER TABLE pedido_produto ALTER COLUMN quantidade SET DEFAULT 1


--b. Valor unitário com o valor 0

ALTER TABLE pedido_produto ALTER COLUMN valor_unitario SET DEFAULT 0


--2. Adicione valor default na tabela de produtos

--a. Valor com o valor 0
ALTER TABLE produto ALTER COLUMN valor SET DEFAULT 0

-- índices
CREATE INDEX idx_cln_nome ON cliente (nome)

--1. Adicione índices nas seguintes tabelas e campos

--a. Pedido – data do pedido

CREATE INDEX idx_pdd_data_pedido ON pedido (data_pedido)

--b. Produto – nome
CREATE INDEX idx_pr_nome ON produto (nome)

--Função

SELECT valor, concat ('R$', ROUND(CAST(valor AS NUMERIC),2)) FROM pedido

CREATE FUNCTION formata_moeda(valor float) returns varchar(20) language plpgsql AS 
$$
BEGIN
	return concat('R$ ', round(CAST(valor AS numeric),2));
END;
$$;

SELECT valor, formata_moeda(valor) FROM pedido

CREATE FUNCTION get_nome_by_id(idc integer) RETURNS VARCHAR(50) LANGUAGE plpgsql AS
$$
DECLARE r VARCHAR(50);
BEGIN 
	SELECT nome INTO r FROM cliente WHERE idcliente = idc;
	RETURN r;
END;
$$;

SELECT data_pedido, valor, idcliente, get_nome_by_id(idcliente) FROM pedido

--1. Crie uma função que receba como parâmetro o ID do pedido e retorne o valor total deste pedido

CREATE FUNCTION get_value_by_id(idp integer) RETURNS VARCHAR(50) LANGUAGE plpgsql AS
$$
DECLARE p VARCHAR(50);
BEGIN 
	SELECT valor INTO p FROM pedido WHERE idpedido = idp;
	RETURN p;
END;
$$;

SELECT get_value_by_id(idpedido) FROM pedido_produto

--2. Crie uma função chamada “maior”, que quando executada retorne o pedido com o maior valor

CREATE OR REPLACE FUNCTION maior()
RETURNS FLOAT
LANGUAGE plpgsql
AS $$
DECLARE
    m FLOAT;
BEGIN
    SELECT MAX(valor)
    INTO m
    FROM pedido;

    RETURN m;
END;
$$;

SELECT maior()

--Stored procedures
CREATE PROCEDURE insere_bairro (nome_bairro VARCHAR(30)) LANGUAGE SQL AS
$$
	INSERT INTO bairro (nome) VALUES (nome_bairro);
$$

CALL insere_bairro('Teste procedure')
SELECT * FROM bairro

--1. Crie uma stored procedure que receba como parâmetro o ID do produto e o percentual de aumento,
--e reajuste o preço somente deste produto de acordo com o valor passado como parâmetro

CREATE OR REPLACE PROCEDURE reajuste_preco(idproduto INTEGER, percentual NUMERIC)
LANGUAGE SQL
AS $$
    UPDATE produto
    SET valor = valor * (1 + (percentual / 100))
    WHERE idproduto = reajuste_preco.idproduto;
$$;

--2. Crie uma stored procedure que receba como parâmetro o ID do produto e exclua da 
--base de dados somente o produto com o ID correspondente

CREATE OR REPLACE PROCEDURE delet_product(idproduto INTEGER)
LANGUAGE SQL
AS $$
    DELETE FROM produto
    WHERE produto.idproduto = delet_product.idproduto;
$$;

--Triggers

CREATE TABLE bairro_auditoria(
	idbairro integer not null,
	data_criacao timestamp not null
)

CREATE OR REPLACE FUNCTION bairro_log() RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO bairro_auditoria(idbairro, data_criacao)
	VALUES (NEW.idbairro, current_timestamp);
	RETURN NEW;
END;
$$;

CREATE OR REPLACE TRIGGER log_bairro_trigger AFTER INSERT ON bairro FOR EACH ROW EXECUTE PROCEDURE bairro_log()

call insere_bairro ('Teste 2');
call insere_bairro ('Teste 3');
call insere_bairro ('Teste 4')
SELECT * FROM bairro_auditoria

Exercícios triggers

-- 1. Crie uma tabela chamada PEDIDOS_APAGADOS
CREATE TABLE pedidos_apagados (
    idpedido INTEGER NOT NULL,
    data_apagado TIMESTAMP NOT NULL
);

-- 2. Crie a função de trigger
CREATE OR REPLACE FUNCTION pedido_log() 
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO pedidos_apagados (idpedido, data_apagado)
    VALUES (OLD.idpedido, current_timestamp);  
    RETURN OLD;
END;
$$;

-- 3. Crie a trigger
CREATE OR REPLACE TRIGGER log_pedido_trigger
AFTER DELETE ON pedido
FOR EACH ROW
EXECUTE PROCEDURE pedido_log();

--Domínios

-- Ids
create domain idcurto as smallint;
create domain idmedio as integer;
create domain idlongo as bigint;

-- Caracteres
create domain sigla as char(3);
create domain codigo as varchar(10);
create domain nome_curto as varchar(15);
create domain nome_medio as varchar(50);
create domain nome_longo as varchar(70);
create domain documento as varchar(15);
create domain tipo as char(1);
create domain texto as text;

-- Data e hora
create domain data as date;
create domain hora as time;
create domain data_hora timestamp;

-- Numéricos
create domain moeda as numeric(10,2);
create domain float_curto as numeric(6,2);
create domain float_medio as numeric(10,2);
create domain float_longo as numeric(15,2);
create domain quantidade as smallint;

alter table bairro_auditoria alter column data_criacao type data_hora;

drop view cliente_profissao
drop view dados_pedido
drop view tabela_completa
drop view pedido_dados

alter table cliente alter column nome type nome_longo;
alter table cliente alter column cpf type documento;
alter table cliente alter column rg type documento;
alter table cliente alter column data_nascimento type data;
alter table cliente alter column genero type tipo;
alter table cliente alter column logradouro type nome_longo;
alter table cliente alter column numero type nome_curto;
alter table cliente alter column idprofissao type idmedio;
alter table cliente alter column idnacionalidade type idmedio;
alter table cliente alter column idbairro type idmedio;
alter table cliente alter column idmunicipio type idmedio;
alter table cliente alter column idcomplemento type idmedio;]


alter table complemento alter column nome type nome_medio;

DROP VIEW produto_valor_fornecedor
DROP VIEW nome_municipio_sigla
DROP VIEW transportadora_dados

alter table fornecedor alter column nome type nome_medio;
alter table municipio alter column nome type nome_medio;
alter table municipio alter column iduf type idmedio;
alter table nacionalidade alter column nome type nome_medio;
alter table pedido alter column idpedido type bigint;
alter table pedido alter column idcliente type idmedio;
alter table pedido alter column idtransportadora type idmedio;
alter table pedido alter column idvendedor type idmedio;
alter table pedido alter column data_pedido type data;
alter table pedido alter column valor type moeda;

DROP VIEW vendas_totais

alter table pedido_produto alter column idpedido type idlongo;
alter table pedido_produto alter column idproduto type idmedio;
alter table pedido_produto alter column quantidade type quantidade;
alter table pedido_produto alter column valor_unitario type moeda;
alter table pedidos_apagados alter column idpedido type idlongo;
alter table produto alter column idfornecedor type idmedio;
alter table produto alter column nome type nome_medio;
alter table produto alter column valor type moeda;
alter table profissao alter column nome type nome_medio;
alter table transportadora alter column idmunicipio type idmedio;
alter table transportadora alter column nome type nome_medio;
alter table transportadora alter column logradouro type nome_longo;
alter table transportadora alter column numero type nome_curto;
alter table uf alter column nome type nome_medio;
alter table uf alter column sigla type sigla;
alter table vendedor alter column nome type nome_medio;

--Usurários e permissões
CREATE ROLE gerente;
CREATE ROLE estagiario;

GRANT SELECT, INSERT, DELETE, UPDATE ON bairro,cliente,complemento,fornecedor,municipio,nacionalidade,pedido,pedido_produto,produto,profissao,transportadora,uf,vendedor TO gerente WITH GRANT OPTION;
GRANT SELECT ON cliente_profissao, pedido_dados TO estagiario;

CREATE ROLE maria login PASSWORD '123' IN ROLE gerente;
CREATE ROLE pedro LOGIN PASSWORD '321' IN ROLE estagiario;

GRANT SELECT ON ALL SEQUENCES IN SCHEMA PUBLIC TO gerente 

CREATE ROLE atendente;
GRANT SELECT, INSERT ON pedido_produto, pedido TO atendente;
CREATE ROLE carlos login PASSWORD '123' IN ROLE atendente;
GRANT SELECT ON ALL SEQUENCES IN SCHEMA PUBLIC TO atendente


--Transações
