create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes (
    id bigint auto_increment primary key,
    Classe varchar(255),
    Combate varchar(255),
    Sorte varchar(255)
);

insert into tb_classes (Classe, Sorte, Combate)
values 
('Mago', 'Alta', 'Range'),
('Paladino', 'FÉ', 'Melee'),
('Arqueiro', 'Alta', 'Range'),
('Feiticeiro', 'Média', 'Range'),
('Guerreiro', 'Alta', 'Melee');

create table tb_personagen (
    id bigint auto_increment primary key,
    Nome varchar(255),
    Forca int,
    Velocidade int,
    Persuasao int,
    Malandragem int,
    Agilidade int,
    Defesa int
);

insert into tb_personagen (Nome, Forca, Velocidade, Persuasao, Malandragem, Agilidade, Defesa)
values 
('Lancelot', 1250, 70, 50, 60, 80, 1000),
('Marsi', 2300, 300, 60, 70, 90, 2000),
('Eldrin', 1600, 80, 70, 55, 75, 1500),
('Eowyn', 120, 100, 90, 85, 95, 200),
('Sylvanas', 2100, 70, 60, 65, 85, 1800),
('Thalia', 200, 110, 95, 90, 100, 250),
('Grommash', 2800, 65, 55, 75, 85, 2200),
('Elowen', 1500, 85, 80, 70, 95, 1600);

select * from tb_personagen;




ALTER TABLE tb_personagen ADD classID BIGINT;

UPDATE tb_personagen SET Classid = 5 WHERE id = 1;
UPDATE tb_personagen SET Classid = 1 WHERE id = 2;
UPDATE tb_personagen SET Classid = 2 WHERE id = 3;
UPDATE tb_personagen SET Classid = 1 WHERE id = 4;
UPDATE tb_personagen SET Classid = 3 WHERE id = 5;
UPDATE tb_personagen SET Classid = 2 WHERE id = 6;
UPDATE tb_personagen SET Classid = 4 WHERE id = 7;
UPDATE tb_personagen SET Classid = 3 WHERE id = 8;

ALTER TABLE tb_personagen ADD CONSTRAINT fk_personagen_classID 
FOREIGN KEY (classID) REFERENCES tb_classes (id);

select * from tb_personagen where Forca > 2000;
select * from tb_personagen where Forca between 1000 and 2000;

select * from tb_personagen where Nome like "%C%";


SELECT nome, Forca, Velocidade, Persuasao, Malandragem, Agilidade, Defesa, tb_classes.Classe, tb_classes.Combate, tb_classes.Sorte
FROM tb_personagen INNER JOIN tb_classes
ON tb_personagen.classid = tb_classes.id;

SELECT nome, Forca, Velocidade, Persuasao, Malandragem, Agilidade, Defesa, tb_classes.Classe, tb_classes.Combate, tb_classes.Sorte
FROM tb_personagen INNER JOIN tb_classes
ON tb_personagen.classid = tb_classes.id
where classe = "Paladino";


