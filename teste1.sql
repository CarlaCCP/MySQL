CREATE TABLE tb_venda (
    idVenda SMALLINT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(255) NOT NULL,
    preco DECIMAL(10.2) UNSIGNED,
    horarioVenda DATETIME DEFAULT CURRENT_TIMESTAMP,
    data_Entrega DATE,
    hora_Entrega TIME
);
insert into tb_venda (produto, preco, data_Entrega, hora_Entrega) values
("Ecosport", 70.000, "2020-12-03", "13:40:80");
SELECT * FROM tb_venda;
#Primary key é uma chave primária
#Auto increment aumenta automaticamente
#default padrão
#current_timeslamp - horario atual