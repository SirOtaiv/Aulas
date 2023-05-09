/* SQL para a criação da tabela FA_ITNOTA */
create table FA_ITNOTA(
    PK_ITNOTA number not null,
    FKNOTA number not null,
    FKPRODUTO number not null,
    CD_PROD varchar2(50) not null,
    VL_UNIT number(4,2) not null,
    QUANTIDADE number not null,
    VL_DESC number,
    primary key(PK_ITNOTA)
);

/* Comando SQL para a inserção dos dados na tabela FA_ITNOTA 24 inserts */
insert into FA_ITNOTA (PK_ITNOTA,FKNOTA,FKPRODUTO,CD_PROD,VL_UNIT,QUANTIDADE,VL_DESC)
values (1,1,1,1,25.00,10,5);
insert into FA_ITNOTA (PK_ITNOTA,FKNOTA,FKPRODUTO,CD_PROD,VL_UNIT,QUANTIDADE,VL_DESC)
values (1,1,1,1,25.00,10,5);