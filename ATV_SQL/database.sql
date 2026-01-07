create database teste;

create table categoria(
         id INT PRIMARY KEY auto_increment,
         nome VARCHAR(100) NOT NULL);

create table produto(
         id INT PRIMARY KEY auto_increment,
         id_categoria INT,
         nome VARCHAR(100) NOT NULL,
         preco INT NOT NULL,
         CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id)
         ON DELETE SET NULL
);


insert into categoria (nome) values ('Eletrônicos');
insert into categoria (nome) values ('Roupas');
insert into categoria (nome) values ('Alimentos');

