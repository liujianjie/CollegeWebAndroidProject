--QQgame表

create table game(
  id integer,
  qqnum varchar2(50),
  qqname varchar2(50),
  vip varchar2(10) default '不是',
  shescore integer,
  shenode integer default 2 null,
  txzgk integer default 0,
  shetoux0 integer,
  shetouy0 integer,
  shetoux1 integer,
  shetouy1 integer,
  foodx integer,
  foody integer,
  direction integer,
  constraint PK_game primary key(id)
)
alter table game modify txzgk integer default 1 
drop table game;
alter table game add constraint mr default '不是' for vip
alter table QQ drop column shescore

select * from game

delete from game

delete from qq

delete from history
