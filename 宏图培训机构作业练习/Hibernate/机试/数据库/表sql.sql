create table hbntjs_student(
       stu_id integer primary key,
       stu_name varchar2(20) not null,
       stu_age integer not null,
       stu_sex varchar2(10) not null,
       stu_desc varchar2(100)

)
create table hbntjs_jingli(
       jl_jid integer primary key,
       stu_id integer not null,
       jl_starttime varchar2(30) not null,
       jl_endtime varchar2(30) not null,
       jl_school varchar2(30)
)
drop table hbntjs_jingli
drop table hbntjs_jingli
select HBNT_JISHI.Nextval from dual
select * from hbntjs_student
select * from hbntjs_jingli
insert into hbntjs_jingli values(1,14,'2003年-9月-1号','2006年-7月-1号','台前幼稚园');
