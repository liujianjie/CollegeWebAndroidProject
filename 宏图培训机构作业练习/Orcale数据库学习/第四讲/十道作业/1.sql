select * from emp
--1、查询部门人数大于部门平均人数的部门信息。
所有部门的平均人数:
(select sum(count(job))/(count(*)) from emp group by deptno)

部门人数
(select deptno,count(*)c from emp group by deptno )

select * from dept d,(select deptno,count(*)部门人数 from emp group by deptno) t where --把部门人数当做一个表 多个数据和单个数据对比就这样的思路吧
       t.部门人数>(select sum(count(job))/(count(*)) from emp group by deptno) and d.deptno=t.deptno
              
select t.dname from (select e.deptno, count(*) count_emp from emp e group by e.deptno) tmp2,dept t where 
       tmp2.count_emp > (select avg(count_emp) from (select e.deptno, count(*) count_emp from emp e group by e.deptno) tmp1)
                     and t.deptno = tmp2.deptno



--2、查询拥有最少员工的部门的基本信息。
不同部门的员工
select deptno,count(*) from emp group by deptno

最少员工的部门号
select min(deptno) from emp

--思路应该和第一题一样 多对1 让多的作为表 也可能适于group by
select * from dept d,(select deptno,count(*)拥有的人数 from emp group by deptno) t
       where t.deptno=d.deptno and t.deptno<=(select min(deptno) from emp)

select * from dept where deptno=(select min(deptno) from emp)--两种方法都可以吧

--上面的错了 
最少员工的deptno
    select deptno from (select deptno,count(*)人数 from emp group by deptno order by 人数 asc)where rownum=1
    
    select * from dept where deptno =
           (select deptno from (select deptno,count(*)人数 from emp group by deptno order by 人数 asc)
                   where rownum=1)

--3、查询出平均工资最高的部门信息。（有点悬）
select top 1 sum(sal)sal from emp group by deptno order by sal desc

select * from dept where deptno=(select top 1 sum(sal)sal from emp group by deptno order by sal desc)

上面的错了 没用

--这里是对的
单个部门最高的平均工资
select * from (select deptno,avg(sal)工资 from emp group by deptno order by 工资 desc) where rownum=1

所以
select * from dept where deptno=(select deptno from (select deptno,avg(sal)工资 from emp group by deptno 
      order by 工资 desc) where rownum=1)
--4、查询出工资比所在部门平均工资高的员工信息。
部门平均工资
select deptno,sum(sal)/count(deptno)avg_sal from emp group by deptno

select * from emp a,(select deptno,sum(sal)/count(deptno)avg_sal from emp group by deptno)b--思路和第一题一样
       where a.deptno=b.deptno and a.sal>b.avg_sal

     --这才是正确的 5月17日换回来了
     部门平均工资     
     select deptno,avg(sal)工资 from emp group by deptno

     --内连接 自动匹配
     select * from emp e,(select deptno,avg(sal)工资 from emp group by deptno)b where
            e.sal>b.工资 and e.deptno=b.deptno


--5、查询出没有员工的部门信息。
select * from dept where deptno not in(select deptno from emp)

--6、查询出‘研发部 RESEARCH’、‘销售部 SALES’下的所有员工信息
select * from dept

select * from emp where deptno in (select deptno from dept where dname in('RESEARCH','SALES'))

--7、查询出工资在2000-3500之间的男性员工。
alter table emp add sex varchar2(2)
select * from emp for update

select * from emp where sal between 2000 and 3500 and sex='男'

--8、查询所有员工信息，并显示其工资
--（如果工资在低于3000，那么显示灰领；如果工资在3000到5000之间，显示白领；如果工资大于5000显示金领）
select empno,ename,job,mgr,hiredate,sal,deptno,sex,(
   case
   when sal<3000 then '灰领'
   when 3000<sal and sal<5000 then '白领'
   when sal>5000 then '金领'
   else '未定位'
   end
)职位
from emp

--9、将员工表的数据复制到newEmp表中。
create table newemp as select * from emp
select * from newemp

--10、查询出工资小于研发部 RESEARCH最小工资的员工信息。思路凑得去就行
select * from dept

--研发部 RESEARCH最小工资的员工
select sal from emp where deptno in (select deptno from dept where dname='RESEARCH') and
       sal=(select min(sal) from emp where deptno in (select deptno from dept where dname='RESEARCH'))
       
select * from emp where sal<(select sal from emp where deptno in (select deptno from dept where dname='RESEARCH') and
       sal=(select min(sal) from emp where deptno in (select deptno from dept where dname='RESEARCH')))      
 
