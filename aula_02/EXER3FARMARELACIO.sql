create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_Categoria (
id bigint auto_increment,
primary key (id),
gotas varchar(255),
solido varchar(255)
);

create table tb_produtos (
id bigint auto_increment primary key,
categoriaid bigint,
nome varchar(255),
validade date,
Pediatrico varchar(255),
Adulto varchar(255),
Preco decimal(10,2)
);

select * from tb_produtos;

insert into tb_Categoria (gotas, solido)
values ("Receita", "Receita"),
("Sem receita", "Receita"),
("Com receita", "Com receita"),
("Sem receita", "Sem receita"),
("Com receita", "COm receita");

select * from tb_categoria;

insert into tb_produtos (categoriaid, nome, validade, Pediatrico, Adulto, preco)
values 
(1, 'Paracetamol', '2024-07-31', 'Sim', 'Não', 15.50),
(2, 'Amoxicilina', '2024-08-15', 'Não', 'Sim', 25.75),
(3, 'Dipirona', '2024-08-10', 'Sim', 'Não', 12.80),
(1, 'Omeprazol', '2024-09-05', 'Não', 'Sim', 30.00),
(2, 'Sinvastatina', '2024-07-25', 'Sim', 'Sim', 55.25), 
(3, 'Buscopan', '2024-08-20', 'Sim', 'Não', 18.60),
(1, 'Atenolol', '2024-08-31', 'Sim', 'Não', 22.40),
(2, 'Clonazepam', '2024-09-15', 'Não', 'Sim', 70.90);


select * from tb_produtos;

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between  5 and 60;

select*from tb_produtos where nome like "%c%";

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categoria (id);

SELECT nome, preco, validade, pediatrico, adulto, tb_categoria.Gotas, tb_categoria.Solido
FROM tb_produtos INNER JOIN tb_categoria 
ON tb_produtos.categoriaid = tb_categoria.id;

SELECT nome, preco, validade, pediatrico, adulto, tb_categoria.Gotas, tb_categoria.Solido
FROM tb_produtos INNER JOIN tb_categoria 
ON tb_produtos.categoriaid = tb_categoria.id
where solido = 'receita';
