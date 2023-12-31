

drop table notice
create table  notice
(
       n_id varchar2(32),
       n_title varchar2(100) not null,
       n_body varchar2(3000),
       n_date date not null,
       n_author varchar2(100),
       n_count number(10)
);
comment on table ttz.notice is '公告';
comment on column notice.n_id is '主键';
comment on column notice.n_title is '标题';
comment on column notice.n_body is '主体';
comment on column notice.n_date is '日期';
comment on column notice.n_author is '作者';
comment on column notice.n_count is '浏览次数';

create index ix_notice on ttz.notice(n_id);
alter table ttz.notice
      add constraint pk_notice primary key(n_id)
      using index ix_notice    
      
 delete from notice
insert into notice values(sys_guid(),'11111','公告测试1！',sysdate,'admin',13);
insert into notice values(sys_guid(),'22222','公告测试2！',sysdate);
insert into notice values(sys_guid(),'33333','公告测试3！',sysdate);
insert into notice values(sys_guid(),'44444','公告测试4！',sysdate);
insert into notice values(sys_guid(),'55555','公告测试5！',sysdate);
insert into notice values(sys_guid(),'66666','公告测试6！',sysdate);
insert into notice values(sys_guid(),'77777','公告测试7！',sysdate);
insert into notice values(sys_guid(),'88888','公告测试8！',sysdate);
insert into notice values(sys_guid(),'99999','公告测试9！',sysdate);
insert into notice values(sys_guid(),'aaaaa','公告测试10！',sysdate);
insert into notice values(sys_guid(),'bbbbb','公告测试11！',sysdate);


--取前10的数据
select * from(select * from notice n order by n_date desc)where rownum<=10 order by rownum 

--按时间分页查询
select * from(select row_number()over(order by n_date desc) r,s.* from notice s ) 

select * from(select row_number()over(order by n_date desc) r,s.* from notice s)where r <= (2*2) and r > (2-1)*2

select * from(select row_number()over(order by n_date desc) r,s.* from notice s ) where r<=10--也可以取前几条数据

