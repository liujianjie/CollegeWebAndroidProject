﻿--表空间
--查看有哪些表空间
Select * from v$tablespace

--查看有哪些数据文件
select * from v$datafile

--表空间的组成

--创建表空间
truncate table newemp
select * from newemp

create tablespace "LJJ"
logging
datafile 'D:\oracle\product\10.2.0\oradata\orcl\1.dbf' size 5M
reuse
autoextend on next 512k maxsize 5M

--创建临时表空间
create temporary tablespace "LJJtemp"
tempfile 'D:\oracle\product\10.2.0\oradata\orcl\ljjtemp.dbf' size 5m
extent management local
Uniform size 1m

--创建还原表空间
create undo tablespace "roolback1"
       datafile 'D:\oracle\product\10.2.0\oradata\orcl\roolback1.dbf' size 5m
       
--脱机
alter tablespace "LJJ" offline normal

--联机
alter tablespace "LJJ" online

--表空间只读：不能写数入据，可删除
alter tablespace "LJJ" read only

--表空间为读写状态
alter tablespace "LJJ" read write

--改变空间数据文件大小 重新定义大小
alter database datafile 'D:\oracle\product\10.2.0\oradata\orcl\1.dbf' resize 6m

--设置自动增长 上面联合使用 不能单独使用 autoextend on
alter database datafile 'D:\oracle\product\10.2.0\oradata\orcl\1.dbf' autoextend on next 600k resize 5m

--增加数据文件
alter tablespace "LJJ"
      add datafile 'D:\oracle\product\10.2.0\oradata\orcl\2.dbf' size 5m
      
--改变表空间名称
1.先设置为离线
alter tablespace "LJJ" offline normal
2.在本地文件夹下改变名称
3.在orcale中执行表空间文件名称修改
ALTER tablespace "LJJ" rename datafile 'D:\oracle\product\10.2.0\oradata\orcl\1.dbf'
      to 'D:\oracle\product\10.2.0\oradata\orcl\LLJ.dbf'
4.联机
alter tablespace "LJJ" online

--用户管理
orcale是一个多用的数据库系统

--创建用户
create user "刘建杰" identified by "tiger"
account unlock;--默认用户表空间

--修改用户存在的表空间
alter user "刘建杰" default tablespace "LJJ"--默认的用户表空间为 users

--设定用户在表空间的控件限额对创表的权限
alter user "刘建杰" quota 2m on users--这个大小可以是 unlimited 是无限大小
alter user "刘建杰" quota unlimited on LJJ
--修改用户的密码
alter user "刘建杰" identified by "123"


--查看当前用户的角色与权限
select * from user_role_privs;
select * from user_sys_privs;
select * from user_tab_privs;

--权限
select * from dba_sys_privs where grantee in ('CONNECT','RESOURCE');  

select * from role_sys_privs where role="CONNECT";

--导入于导出 在dos命令窗口中运行

