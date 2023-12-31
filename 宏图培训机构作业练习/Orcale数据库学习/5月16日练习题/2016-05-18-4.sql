
/** sql语句的字段列表可以进行加法运算*/
/** nvl(a,b) 是一个判断函数，如果第一个参数是空，就返回第二个参数 */
select e.ename,e.sal + nvl(e.comm,0) ,e.* from emp e 

/**  转化为日期的函数 to_date(a,b) 第一个参数是字符串，第二个是要转化的格式*/

select * from emp e where e.hiredate > to_date('1981-07-01','yyyy-mm-dd') 

/**  注意and和or */
select *
  from dept t, emp e
 where e.deptno = t.deptno
   and t.loc = 'CHICAGO'
   and (e.job = 'MANAGER' or e.job = 'SALESMAN')
   
/** 日期的增加函数 Add_months(a,b) 参数a是日期类型的，参数b是要增加的月份 */   
select * from emp e where e.hiredate < Add_months(sysdate,-288)

/** to_char(a,b)  转化字符串函数 */
select sum(e.sal+nvl(e.comm,0))*12 from emp e where to_char(e.hiredate,'yyyy') = '1981'

select to_char(e.hiredate,'yyyy-mm-dd hh24:mi:ss') from emp e 
   

select count(*),to_char(e.hiredate,'yyyy-mm') from emp e group by to_char(e.hiredate,'yyyy-mm')
   
select e.ename,t.dname from emp e ,dept t where e.deptno = t.deptno and e.job='MANAGER'

select t.dname
  from dept t,
       (select *
          from (select e.deptno, avg(e.sal) avg_sal
                  from emp e    
                 group by e.deptno
                 order by avg_sal desc)
         where rownum = 1
        union all
        select *
          from (select e.deptno, avg(e.sal) avg_sal
                  from emp e
                 group by e.deptno
                 order by avg_sal)
         where rownum = 1) 
 where ee.deptno = t.deptno
 
/** 日期格式可以< > 进行比较*/  

select * from (select *
  from emp e
 where e.hiredate > (select e.hiredate from emp e where e.empno = 7521)
 order by e.hiredate ) where rownum = 1
 
 
 
