
drop table rates

delete  rates
create table  rates
(
       r_id varchar2(32),
       r_name varchar2(100) not null,
       r_zhi float
);
comment on table ttz.rates is '费率表';
comment on column rates.r_id is '主键';
comment on column rates.r_name is '名称';
comment on column rates.r_zhi is '率值';

create index ix_rates on ttz.rates(r_id);
alter table ttz.rates
      add constraint pk_rates primary key(r_id)
      using index ix_rates    
      
insert into rates values(sys_guid(),'借款年利率',0.13);
update rates set r_name = ,r_zhi = where r_id = #{r_id}
