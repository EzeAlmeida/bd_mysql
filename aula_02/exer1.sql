create database db_gerenciamentoRH;


use db_gerenciamentoRH;

create table tb_informacoesColaboradores(

id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	cargo varchar (255),
    admissao DATE,
	setor varchar (255),
    salario decimal (6, 3),
    PRIMARY KEY (id)

);
insert into tb_informacoesColaboradores (nome, cargo, admissao, setor, salario)
value ("Ezequiel", "Gerente", "2021-4-13", "Planejamento", 14.000),
("Rafael", "Supervisor", "2021-4-19", "Producao", 8.000),
("Geandro", "Team Leader", "2019-6-13", "Desenvolvimento", 21.000),
("Marcos", "Team Leader", "2022-6-19", "Producao", 8.000);

select * from tb_informacoescolaboradores;

select * from tb_informacoescolaboradores where salario > 2.000;
select * from tb_informacoescolaboradores where salario < 2.000;

update tb_informacoescolaboradores  set salario = 10.00 where id = 1;