CREATE TABLE PRODUTO(
ID NUMBER(4) PRIMARY KEY,
NOME VARCHAR2(120) NOT NULL,
PRECO NUMBER(6,2) NOT NULL,
CONSTRAINT UQ_NOME_PRODUTO UNIQUE (NOME)
);
INSERT INTO PRODUTO (ID, NOME, PRECO) VALUES (1, 'Caneta', 2.50);
INSERT INTO PRODUTO (ID, NOME, PRECO) VALUES (2, 'Papel', 12.30);
INSERT INTO PRODUTO (ID, NOME, PRECO) VALUES (3, 'Borracha', 0.45);
INSERT INTO PRODUTO (ID, NOME, PRECO) VALUES (4, 'Lápis', 1.50);
INSERT INTO PRODUTO (ID, NOME, PRECO) VALUES (5, 'Pincel', 6);

CREATE TABLE PESSOA(
ID NUMBER(4) PRIMARY KEY,
NOME VARCHAR2(120) NOT NULL,
CONSTRAINT UQ_NOME_PESSOA UNIQUE (NOME)
);
INSERT INTO PESSOA (ID, NOME) VALUES (1, 'João Silva');
INSERT INTO PESSOA (ID, NOME) VALUES (2, 'Maria Silva');
INSERT INTO PESSOA (ID, NOME) VALUES (3, 'Claudia Souza');
INSERT INTO PESSOA (ID, NOME) VALUES (4, 'Jurema Paschoal');
INSERT INTO PESSOA (ID, NOME) VALUES (5, 'André Paulo');

select * from pessoa;

--aqui ele mostra da data que atualizou
declare 
da date;
begin
    da := sysdate();
    dbms_output.put_line(da);
end;

-- aqui ele criar  uma sequencia para colocar no insert 
create sequence seq_log_pessoa
    start with 1
    increment by 1
    nomaxvalue
    nominvalue
    nocache
    no cycly

create sequence sq_produto
    start with 1
    increment 1
    nomaxvalue
    nominvalue
    nocache
    no cycle


--criar tabela com primary key e foreign key e sequnece 
create table LOG_PRODUTO(
    ID NUMBER PRIMARY KEY NOT NULL,
    ID_PRODUTO NUMBER(4),
    PRECO_ANTES NUMBER,
    PRECO_DEPOIS NUMBER,
    DATA_ALTERACAO DATE,
    CONSTRAINT FK_LOG FOREIGN KEY(ID_PRODUTO) REFERENCES PRODUTO(ID)
); 

create sequence sq_log_produto
    start with 1
    increment by 1
    maxvalue
    minvalue
    nocache


