--资金记录表 还有一个数据类型编号不知道是什么
create table MoneyRecord(
       m_id varchar2(32) not null,
       p_userid varchar2(32) not null,
       m_jytype varchar2(32) not null,
       m_yxmoney number(14,2),
       m_kymoney number(14,2),
       m_djmoney number(14,2),
       m_dsmoney number(14,2),
       m_happentime date not null,
       m_remark varchar2(500),
       m_type int not null
);
comment on table ttz.MoneyRecord is '资金记录表';
comment on column MoneyRecord.m_id is '主键id';
comment on column moneyrecord.p_userid is '交易用户';
comment on column moneyrecord.m_jytype is '交易类型';
comment on column moneyrecord.m_yxmoney is '影响资金';
comment on column moneyrecord.m_kymoney is '可用余额';
comment on column moneyrecord.m_djmoney is '冻结资金';
comment on column moneyrecord.m_dsmoney is '代收金额';
comment on column moneyrecord.m_happentime is '发生时间';
comment on column moneyrecord.m_remark is '备注';
comment on column moneyrecord.m_type is '数据编号 - 生成 的 编号！';

create index ix_moneyrecord on ttz.moneyrecord(m_id);
alter table ttz.moneyrecord
      add constraint pk_moneyrecord primary key(m_id)
      using index ix_moneyrecord    
