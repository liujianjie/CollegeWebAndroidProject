create table yfbc.out_storage
(
       outid      varchar2(32) not null,
       storerid   varchar2(32) not null,
       plandate   date not null,
       DONO       varchar2(32) not null,
       ShippingNO varchar2(32) not null,
       whid       varchar2(32) not null,
       customerid varchar2(32) not null,
       crossflag  number(1) not null,
       directflag number(1) not null,
       sku        varchar2(32) not null,
       saleqty    number(6) not    null
);

comment on table yfbc.out_storage is '出库计划表';
comment on column yfbc.out_storage.outid is '主键';
comment on column yfbc.out_storage.storerid is '货主NO';
comment on column yfbc.out_storage.plandate is '计划出库时间';
comment on column yfbc.out_storage.DONO is '原DO的号码';
comment on column yfbc.out_storage.ShippingNO is '客户托单号 ';
comment on column yfbc.out_storage.whid is '仓库编码 ';
comment on column yfbc.out_storage.customerid is '客户NO ';
comment on column yfbc.out_storage.crossflag is '是否越库 0为未越哭，1为越库 ';
comment on column yfbc.out_storage.directflag is '是否整进整出 0为未，1为y ';
comment on column yfbc.out_storage.sku is '货物NO ';
comment on column yfbc.out_storage.saleqty is '计划出库数量 ';

create index ix_out_storage on yfbc.out_storage(outid);
alter table yfbc.out_storage
      add constraint pk_out_storage primary key(outid)
      using index ix_out_storage    

