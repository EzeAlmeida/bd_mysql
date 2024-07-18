create database db_alunos;

use db_alunos;

create table tb_habilidades (
id bigint auto_increment,
primary key (id),
nome varchar (255),
media decimal(6, 3),
frequencia int,
participacao varchar (255),
comportamento varchar (255)
);

insert into tb_habilidades (nome, media, frequencia, participacao, comportamento)
values ("Ezequiel", 10.00, 25, 'ALTA', "ADEQUADO"),
    ("Joao", 20.00, 15, 'BAIXA', "ADEQUADO"),
    ("Luiz", 10.00, 25, 'ALTA', "ADEQUADO"),
    ("Thais", 20.75, 25, 'MEDIA', "INADEQUADO"),
    ("Marcos", 90.89, 25, 'ALTA', "INADEQUADO"),
    ("Maria", 8.00, 25, 'BAIXA', "ADEQUADO"),
    ("Matheus", 10.00, 25, 'ALTA', "INADEQUADO"),
    ("Emilia", 10.00, 25, 'ALTA', "ADEQUADO");
    
    
    update tb_habilidades set media = 4 where id = 5;
    update tb_habilidades set media = 2 where id = 8;

   
   select * from tb_habilidades where media > 7;
      select * from tb_habilidades where media < 7;
      
          update tb_habilidades set media = 2 where id = 3;

