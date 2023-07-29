
--创建
declare
v_job_id binary_integer;--job id
begin
         dbms_job.submit(v_job_id,--创建时返回的jobid
         'a_pack.sel_btoa(1);',--job调用的存储过程 只能有存储过程
         sysdate+1/60/24,--第一次执行的时间
         'sysdate+2/24');--第二次执行的时间
         commit;
         dbms_output.put_line(v_job_id);
end;
/

--修改
declare
begin
  dbms_job.change(job => 25,
  what => 'a_pack.upd_btoa;',
  next_date => sysdate+1/60/24, 
  interval =>'sysdate+5/60/24' );
  commit;
  end;
  
 
select * from a  

--删除
declare
begin
  dbms_job.remove(job => 25);
commit;
end;
