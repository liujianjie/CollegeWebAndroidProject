select * from users
select * from move_storage
create table yfbc.move_storage
(
       moid  varchar2(32)  not null,
       mouser varchar2(32) not null,
       mowhiname varchar2(32) not null,
       ptid   varchar2(32) not null,
       touser varchar2(32) not null,
       towhiname varchar2(32) not null,
       mostate number(1) not null,
       carsid  varchar2(32) not null,
       processInstanceId varchar2(50)
);
comment on table yfbc.move_storage is '移货表';
comment on column yfbc.move_storage.moid is '主键id';
comment on column yfbc.move_storage.mouser is '原发起用户,就有仓库';
comment on column yfbc.move_storage.mowhiname is '原发起仓库';
comment on column yfbc.move_storage.ptid is '货架上的货物id';
comment on column yfbc.move_storage.touser is '到达用户，就有仓库 ';
comment on column yfbc.move_storage.towhiname is '目标仓库';
comment on column yfbc.move_storage.mostate is '状态：0为未发起 1为审核中 2审核成功 3审核失败';
comment on column yfbc.move_storage.carsid is '车辆id';
comment on column yfbc.move_storage.processInstanceId is '流程id';



create index ix_move_storage on yfbc.move_storage(moid);
alter table yfbc.move_storage
      add constraint pk_move_storage primary key(moid)
      using index ix_move_storage    

select * from rack where whid = '1D2CADFA114E479AB0E8C4042DEA07AC' for update 
select * from put_away for update 
select * from move_storage for update
select * from receiving for update
select * from warehouse
select * from rack for update
select * from users
select * from warehouse where userid = '94C1C822B44947888AC89EF8E9E67BFF'
select * from put_away where sheid = #{pid}
select * from rack where sheid = #{pid}
select * from put_away
select * from Goodtype
select * from cars_info where warehouseid = '1D2CADFA114E479AB0E8C4042DEA07AC'

drop table receiving

update move_storage set mouser='1',mowhiname='1',ptid='1',touser='1',towhiname='1',mostate=1,carsid='1',processinstanceid='1'
       where moid = '11

