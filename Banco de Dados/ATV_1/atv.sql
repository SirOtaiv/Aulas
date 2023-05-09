create table ba_produto (
    pkproduto number(10) not null primary key,
    fkfornecedor number(10),
    nmproduto varchar2(50) not null,
    dsproduto varchar2(100) not null,
    peso number(4,2),
    altura number(4,2),
    largura number(4,2),
    profundidade number(4,2),
    preco number(8,2),
	em_estoque char(1),
    qnt_estoque number(3)
);

insert into ba_produto(pkproduto, fkfornecedor, nmproduto, dsproduto, peso, altura, largura, profundidade, preco, em_estoque, qnt_estoque) 
values (1, 15,'Notebook acer', 'Notebook acer aspire 5 i5-8265U', 30.60, 1.20, 5.60, 0.20, 27.00, 'S', 12);
insert into ba_produto(pkproduto, fkfornecedor, nmproduto, dsproduto, peso, altura, largura, profundidade, preco, em_estoque, qnt_estoque)
values (2, 15,'Notebook good', 'Notebook acer aspire 5 i5-6265G', 30.60, 1.20, 5.60, 0.20, 27.00, 'S', 12);
insert into ba_produto(pkproduto, fkfornecedor, nmproduto, dsproduto, peso, altura, largura, profundidade, preco, em_estoque, qnt_estoque) 
values (3, 14,'Notebook vaio', 'Notebook acer aspire 4 i3-7545G', 25.60, 1.50, 5.50, 0.30, 17.00, 'N', 0);
insert into ba_produto(pkproduto, fkfornecedor, nmproduto, dsproduto, peso, altura, largura, profundidade, preco, em_estoque, qnt_estoque) 
values (4, 16,'Notebook predator', 'Notebook acer aspire 6 i7-9565H', 30.00, 1.40, 0.40, 5.80, 35.00, 'N', 0);
insert into ba_produto(pkproduto, fkfornecedor, nmproduto, dsproduto, peso, altura, largura, profundidade, preco, em_estoque, qnt_estoque) 
values (5, 15,'Notebook logi', 'Notebook acer aspire 5 i5-8775U', 30.40, 1.60, 4.30, 0.30, 22.00, 'N', 0);
insert into ba_produto(pkproduto, fkfornecedor, nmproduto, dsproduto, peso, altura, largura, profundidade, preco, em_estoque, qnt_estoque) 
values (6, 15,'Notebook note', 'Notebook acer aspire 3 i5-6655U', 26.80, 1.20, 6.50, 0.30, 18.00, 'N', 0);
insert into ba_produto(pkproduto, fkfornecedor, nmproduto, dsproduto, peso, altura, largura, profundidade, preco, em_estoque, qnt_estoque) 
values (7, 15,'Notebook high', 'Notebook acer aspire 5 i5-8765H', 32.60, 1.50, 5.00, 0.20, 38.00, 'S', 17);

select * from ba_produto where ba_produto.qnt_estoque > 10;
select * from ba_produto where ba_produto.peso > 5.30 and ba_produto.fkfornecedor = 121314;
select * from ba_produto where (ba_produto.nmproduto like 'A%' and ba_produto.em_estoque = 'N') or ba_produto.pkproduto < 4;
select * from ba_produto where ba_produto.altura > 1.30 or ba_produto.largura < 4.20;
select * from ba_produto where ba_produto.preco > 4.60 and ba_produto.fkfornecedor like '4%';
select * from ba_produto where ba_produto.fkfornecedor like '9%' and ba_produto.qnt_estoque <= 10;
