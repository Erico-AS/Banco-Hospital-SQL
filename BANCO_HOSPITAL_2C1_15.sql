-- a) Crie o modelo físico do banco sugerido na imagem 
create database HOSPITAL_2C1_15;
use HOSPITAL_2C1_15;

create table medico(
cod_med int not null primary key auto_increment, 
nome varchar(80) not null,
especialidade varchar(45)
);

create table paciente(
cod_paciente int not null primary key auto_increment, 
nome varchar(80) not null,
dt_nasc date not null,
peso float(3,3) not null,
altura_cm int not null,
sintomas varchar(200) not null
);

create table consulta (
cod_consulta int not null primary key auto_increment,
dt_consulta date not null,

Medico_cod_fk int not null auto_increment,
Paciente_cod_fk int not null auto_increment,
foreign key (Medico_cod_fk) references medico (cod_med),
foreign key (Paciente_cod_fk) references paciente (cod_paciente)
);

create table medicamento (
cod_medicamento int not null primary key auto_increment,
nome_med varchar(45) not null,
modo_uso varchar(80) not null
);

create table precricao (
cod_pres int not null primary key auto_increment,
observacao text not null,
dosagem varchar(60) not null,

Consulta_cod_fk int not null auto_increment,
Medicamento_cod_fk int not null auto_increment,
foreign key (Consulta_cod_fk) references consulta (cod_consulta),
foreign key (Medicamento_cod_fk) references medicamento (cod_medicamento)
);

-- b) Faca a insercao de 5 registros por tabela
select * from medico;
describe medico;
insert into medico (cod_med, nome, especialidade) values 
(default,'Erico','Mão'),
(default,'Erico2','Dedo'),
(default,'Erico3','Perna'),
(default,'Erico4','Coração'),
(default, 'Messi','Gol');

select * from paciente;
describe paciente;
insert into paciente values 
(default,'Augusto','2022-01-01', 70.25, 170, 'dor'),
(default,'Augusto2','2022-01-02', 72.25, 170, 'sono'),
(default,'Augusto3','2022-01-03', 73.25, 170, 'tristeza'),
(default,'Augusto4','2022-01-04', 74.25, 170, 'tonteira'),
(default, 'Ronaldo','2022-01-05', 75.25, 170, 'fraqueza');

select * from consulta;
describe consulta;
insert into consulta (cod_consulta, dt_consulta, Medico_cod_fk, Paciente_cod_fk) values 
(default,'2022-01-01', 1, 2),
(default,'2022-01-02', 2, 2),
(default,'2022-01-03', 3, 2),
(default,'2022-01-04', 4, 2),
(default, '2022-01-05', 5, 2);

select * from medicamento;
describe medicamento;
insert into medicamento (cod_medicamento, nome_med, modo_uso) values 
(default,'Doril','diario'),
(default,'Dorpil','semanal'),
(default,'Dormil','mensal'),
(default,'Dortil','anual'),
(default, 'Dorsil','trimestral');

select * from precricao;
describe precricao;
insert into precricao (cod_pres, observacao, dosagem, Consulta_cod_fk, Medicamento_cod_fk) values 
(default,'none','1ml',  1, 2),
(default,'nenhuma','2ml', 2, 2),
(default,'sem obs','3ml', 3, 2),
(default,'vazio','4ml', 4, 2),
(default, 'não existe','5ml',  5, 2);

-- c) Deletar 2 ultimos registros de cada tabela
select * from medico;
delete from medico where cod_med = 4;
delete from medico where cod_med = 5;

select * from paciente;
delete from paciente where cod_paciente  = 4;
delete from paciente where  cod_paciente = 5;

select * from consulta;
delete from consulta where cod_consulta = 4;
delete from consulta where cod_consulta = 5;

select * from precricao;
delete from precricao where cod_pres = 4 ;
delete from precricao where cod_pres = 5;

select * from medicamento;
delete from medicamento where cod_medicamento = 4;
delete from medicamento where cod_medicamento = 5;

-- d) atualizar um dado
update medico set nome = 'Erico Augusto' where cod_med = 1;

-- e) Exibir apenas os dados da coluna em que você fez as alterações
select nome from medico;
describe medico;


