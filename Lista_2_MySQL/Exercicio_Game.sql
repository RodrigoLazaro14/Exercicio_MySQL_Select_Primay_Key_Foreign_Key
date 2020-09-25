#drop database db_generation_game_online;
create database db_generation_game_online;
use db_generation_game_online;

CREATE TABLE tb_classe (
    id_classe INT PRIMARY KEY auto_increment,
    nome_classe VARCHAR(50),
    numero_skill int
);

CREATE TABLE 
tb_personagem (
    id_personagem int primary key AUTO_INCREMENT,
	nome_personagem VARCHAR(30) NOT NULL,
	poder_atk int,
	poder_def int,
	hp int,
    fk_id_classe int,
    
    constraint fk_classe foreign key (fk_id_classe) references tb_classe (id_classe)
);

insert into tb_classe(nome_classe, numero_skill) values
('Mago', 3),
('Guerreiro', 2),
('Arqueiro', 4),
('Paladino', 5),
('Healer', 3);

insert into tb_personagem(nome_personagem, poder_atk, poder_def, hp, fk_id_classe) values
('Arme', '2400', '1000', '5000', 1),
('Elesis', '3000', '2000', '9000', 2),
('Lire', '1500', '2500', '8000', 3),
('Ronan', '1000', '15000', '15000', 4),
('Karin', '1000', '1000', '10000', 5),
('Rosie', '1000', '1000', '10000', 5),
('Evan', '1200', '15000', '10000', 4),
('Colt', '3000', '2000', '5000', 2);

select * from tb_personagem;
select * from tb_personagem where poder_atk >2000;
select * from tb_personagem where poder_def between 1000 and 2000;
select * from tb_personagem where nome_personagem like 'c%';
select * from tb_personagem inner join tb_classe on fk_id_classe = id_classe;