create database db_ecommerce;

use db_ecommerce;

create table tb_produtos (
id bigint auto_increment,
primary key (id),
nome varchar (255),
preco decimal(6, 3),
estoque int,
validade date,
tamanho varchar (255)
);

insert into tb_produtos (nome, preco, estoque, validade, tamanho)
values ("Pneu", 10.00, 25, '2027-12-19', "5x3"),
    ("Farois", 20.00, 15, '2045-12-09', "1x3"),
    ("Macaneta", 10.00, 25, '2027-12-19', "3x2"),
    ("Porta luvas", 20.75, 25, '2022-02-03', "2x3"),
    ("Motor", 90.89, 25, '2027-11-19', "8x9"),
    ("Oleo", 8.00, 25, '2025-12-01', "5x10"),
    ("Pastilha de Freio", 10.00, 25, '2027-12-19', "3x3"),
    ("Couro de Banco", 10.00, 25, '2027-12-19', "4x4");
    
   update tb_produtos set preco = 970 where id = 5;
   
   select * from tb_produtos where preco > 500;
      select * from tb_produtos where preco < 500;
      
      update tb_produtos set preco = 220 where id = 6;