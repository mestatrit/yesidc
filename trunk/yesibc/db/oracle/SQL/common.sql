--1.时间
update alpha b set b.db_last_update_date = to_date('2014-1-20 15:49:16','yyyy-MM-dd hh24:mi:ss');
select to_char(systimestamp, 'yyyy-mm-dd hh24:mi:ss.ff ') from dual
select to_timestamp('2003-10-24 10:48:45.656000','yyyy-mm-dd hh24:mi:ssxff') from dual;
select to_char(systimestamp,'yyyy-mm-dd hh24:mi:ssxff') time1, to_char(current_timestamp) time2 from dual;

--2.查看所有存储过程
select *From user_source;

--3.表空间
CREATE TABLESPACE cfccc
DATAFILE '/opt/oracle/oradata/orcl/itc.dbf' SIZE 200M
UNIFORM SIZE 128k;
alter tablespace #### datafile '###########.dbf'   offline;
drop tablespace #### including contents add datafiles;
alter database datafile 'D:\ORACLE\ORADATA\ORADB\DATAFILE_NAME.DBF' offline drop;

--增加额外的数据文件到表空间中
alter tablespace users add datafile '/opt/oracle/oradata/orcl/itc.dbf' size 25m;
--修改表空间当前的数据文件
alter database datafile '/opt/oracle/oradata/orcl/itc.dbf' resize 50m;

--4.用户权限
select * from dba_users/all_users/user_users; 
select * from tab/dba_tables/dba_objects/cat; 
create user cfccc identified by cfccc;
alter user cfccc default tablespace cfccc
temporary tablespace temp;
grant create session,connect,resource to cfccc;
grant select, insert, update, delete on CHN_INST.APPLICATION_BASIC to CHN_NEWECREDIT;

--5.表操作
--5.0 不同表空间，进行复制表
copy   from   bid/bid@orcl   to   sky/sky@orcl   append   menuinfo   using   select   *   from   menuinfo 

-- 5.1 Create table
create table CHN_INST.PLAN
(
  PLAN_ID          VARCHAR2(9) not null,
  PLAN_NUMBER      VARCHAR2(5),
  STO_NUMBER	   VARCHAR2(9)
)
tablespace TBS_CHN_ECREDIT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
-- 5.2 Create/Recreate primary, unique and foreign key constraints 
alter table CHN_INST.PLAN
  add constraint PLAN_PK primary key (PLAN_ID)
  using index 
  tablespace TBS_CHN_ECREDIT
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
--5.3 comment
comment on column CHN_INST.PLAN.PLAN_ID is 'PK';
--5.4 FK
alter table CHN_INST.PLAN
  add constraint PLAN_FK_STORE foreign key (STO_NUMBER)
  references CHN_INST.STORES (STORE_NUMBER);

--6.process进程
select count(*) from v$process --查看当前的连接数 show parameter processes;
select value from v$parameter where name = 'processes' --查看数据库允许的最大连接数 
select * from v$process --查看当前的连接数 
alter system set processes=300 scope=spfile; --设置连接数
--System altered.--重起数据库后该设定才会生效。
shutdown immediate ;
--Database closed.Database dismounted.ORACLE instance shut down.
startup; 

--7.session连接
select vs.username,count(*) --vs.username,vs.STATUS,vs.OSUSER,vs.MACHINE,vs.*
  from v$session vs
 where 1=1
 and lower(vs.username) in ('newecredit_sit','des_user')
 --and vs.OSUSER ='uat3'
 group by vs.username
-- order by vs.OSUSER,vs.username;
select vs.username,vs.username,vs.STATUS,vs.OSUSER,vs.MACHINE,vs.*
  from v$session vs
 where 1=1
 and lower(vs.username) in ('newecredit_sit','des_user')
 and vs.OSUSER ='abel.ye'


--8.解锁
select t2.username,t2.sid,t2.serial#,t2.logon_time 
from v$locked_object t1,v$session t2 where t1.session_id=t2.sid order by t2.logon_time;
alter system kill session '101,35422';--sid及serial#为第一步查出来的数据
 
--9.限制csuser的连接数为1
create profile limit_csuser limit sessions_per_user 1;--Profile created
ALTER USER csuser profile limit_csuser;--User altered
alter system set resource_limit=true;

--10.having用法
select t.auth_number,count(distinct t.cust1_nb_creditcards) from application_basic_audit t
group by t.auth_number
having count(distinct t.cust1_nb_creditcards) > 1


--11.Oracle中用于类似MSSQL中top的关键字为rownumber,具体用法如下:
SELECT   *   FROM  chn_inst_uat4.application_basic_audit    WHERE   ROWNUM<11;
select * from (select a.*, rownum row_num
                          from (select * from t_webpages t order by t.id desc) a
                         where rownum <= 1000000) b
                 where b.row_num >= 1

--12.循环写Sequence
declare 
  i number;
  j number;
begin
i:= 1;
while i<=10000 loop
i:= i+1;
select chn_des_uat2.seq_sub_db_id.nextval into j  from dual;
end loop;
end;
--
declare
  LastValue  number;
  endValue number;
begin
  endValue:=1000;
  loop
    select A.currval into LastValue from dual;
    exit when LastValue >= endValue;
  end loop;
end;
/
--
ALTER SEQUENCE SEQ_C_EMAIL  
minvalue 1
INCREMENT BY 1  
MAXVALUE 9999999999999999999999999999  
minvalue 1
cache 20;
--NOCACHE ;

--13.保证创建的标识符在每个数据库里都是唯一的。
select SYS_GUID()  from dual;
 
--14.字符载取，随机数
select to_char(sysdate,'yyyymmddhhmiss') || lpad(round(dbms_random.value(1,99999)),5,0) from dual
select substr(to_char(systimestamp,'yyyymmddhhmissxff'),13)  from dual
select lpad(to_char(sysdate,'yyyymmddhhmiss'),9,0)  from dual
group by to_char(a.application_date_time,'yyyymm')
select lpad(999,6,'0') from dual
select to_char('999','FM0000000000') from dual

--15.日志写到文件
/**
创建目录的写法一：
首先一个Directories的变量,如下语句:
CREATE OR REPLACE DIRECTORY UTL_FILES_DIR AS '/usr/www/wjhd';
再把权限授给相应用户,如下是授给公众用户:
GRANT READ ON DIRECTORY UTL_FILES_DIR TO PUBLIC; 
在utl_file包里就可以使用Directories的变量了(UTL_FILES_DIR),如
f:=UTL_FILE.FOPEN('UTL_FILES_DIR','FCG.2006050110.BIL','R');
创建目录的写法二：
select * from dba_directories
创建目录的写法三：
在init.ora中加入UTL_FILE_DIR = C:\TEMP
重起后就行了 
**/
  --需要用到utl_file包  
  --看例子：   
  --先修改或添加init.ora的UTL_FILE_DIR参数   
  --例如：   
  --utl_file_dir=G:\oracle\temp         //保存文本的路径为G:\oracle\temp   
  --此过程将用户FILE_OWNER的过程FILE_NAME的代码保存到G:\oracle\temp\TEXT.TXT中   
  create or replace procedure PRO_TO_TXT(FILE_OWNER VARCHAR2,
                                         FILE_NAME  VARCHAR2) is
    file_handle utl_file.file_type;
    STOR_TEXT   VARCHAR2(4000);
    N           NUMBER;
    I           NUMBER;
  begin
    I := 1;
    SELECT MAX(LINE)
      INTO N
      FROM ALL_SOURCE
     WHERE OWNER = FILE_OWNER
       AND NAME = FILE_NAME
       AND TYPE = 'PROCEDURE';
    file_handle := utl_file.fopen('G:\oracle\temp', 'test.txt', 'a');
    utl_file.put_line(file_handle, 'PROCEDURE   NAME:' || FILE_NAME);
    WHILE I <= N LOOP
      SELECT TEXT
        INTO STOR_TEXT
        FROM ALL_SOURCE
       WHERE OWNER = FILE_OWNER
         AND NAME = FILE_NAME
         AND TYPE = 'PROCEDURE'
         AND LINE = I;
      I := I + 1;
      utl_file.put_line(file_handle, stor_text);
    END LOOP;
    utl_file.fclose(file_handle);
    commit;
  end PRO_TO_TXT;
  
--16.oracle 打印  
dbms_output.put_line('Output from PL/SQL...');

---17.查询结果输出
set markup html on; 
set pagesize 0;
set linesize 200;
spool d:/backup/test.txt
select * from tab;
spool off;


--18.Oracle 查詢用戶权限
select * from user_tab_privs where privilege = 'EXECUTE'; 
select * from user_objects where object_type = 'TABLE'; 

--19.同义词
create public synonym t1 for "A"."T";
grant create synonym to baixing;

--20.ORA-02266: 表中的唯一/主键被启用的外部关键字引用;
select * from dba_constraints where r_constraint_name='PK_TIP_INSTANCE'; 
--查到其外键为FK_TIP_INST_REFERENCE_TIP_INST；查到ORA-02266报错问题原因是：TIP_INSTANCE的主键关联所致。
alter table TIP_INSTANCE disable primary key cascade;
truncate table TIP_INSTANCE;
alter table TIP_INSTANCE enable primary key;

--21.删除重复记录.
delete from t_company
 where id in (select min(id) as id
                from t_company
               group by company_code
              having count(*) > 1)
--22.树形结构              
SELECT LEVEL,RPAD(' ',LEVEL*3) || wb.code,wb.* FROM WEB_ELEMENTS wb 
CONNECT BY PRIOR id = code_type START WITH code='types';
 
--23.DBLINK相关
--在sys用户下，把CREATE PUBLIC DATABASE LINK，DROP PUBLIC DATABASE LINK权限授予给你的用户
grant CREATE PUBLIC DATABASE LINK，DROP PUBLIC DATABASE LINK to scott;
--则创建了一个以scott用户和北京数据库的链接beijing，我们查询北京的scott数据: 
SQL>create public database link beijing connect to scott identified by tiger  
            using 'tobeijing';  
--这样就可以把深圳和北京scott用户的数据做成一个整体来处理。  
SQL>select * from emp@beijing;  
--建立同义词，为了使有关分布式操作更透明，ORACLE数据库里有同义词的对象synonym 
SQL>create synonym bjscottemp for emp@beijing; 
--查看所有的数据库链接，进入系统管理员SQL>操作符下，运行命令：   
SQL>select owner,object_name from dba_objects where object_type='DATABASE LINK'; 
--查看数据库连接
sql> select owner, db_link from dba_db_links; 
ower    db_link
public   TEST.US.ORACLE.COM
--删除数据库连接
先从第三步中查看数据库连接，取得其db_link的名称
sql>drop public database link TEST.US.ORACLE.COM
--还可以建立一个本地的远程视图，方便使用：       
CREATE   VIEW   worker   AS   SELECT   *   FROM   worker@sbzw_link   where…

--24.Oracle BUG?
--第一种写法时间显示为空。
select daa.* from des_alpha_audit daa where 
daa.log_id in
(
  select  da.log_id  from des_decisions_audit da
 inner join des_basic_audit db
    on da.log_id = db.log_id
 where da.es_typ_es = 'FIN'
   and da.es_final_man_decision = 'OK'
   and db.logo = '900'
   and da.es_date_time_last_call >
       to_date('2010-7-1 0:49:16', 'yyyy-MM-dd hh24:mi:ss')
   and da.es_date_time_last_call <
       to_date('2010-9-30 23:49:16', 'yyyy-MM-dd hh24:mi:ss')
)

--第二种写法时间显示为0000/0/0，此时无法导出。
select daa.*
  from des_decisions_audit da
 inner join des_basic_audit db
    on da.log_id = db.log_id
 inner join des_alpha_audit daa
    on daa.log_id = db.log_id
 where da.es_typ_es = 'FIN'
   and da.es_final_man_decision = 'OK'
   and db.logo = '900'
   and da.es_date_time_last_call >
       to_date('2010-7-1 0:49:16', 'yyyy-MM-dd hh24:mi:ss')
   and da.es_date_time_last_call <
       to_date('2010-9-30 23:49:16', 'yyyy-MM-dd hh24:mi:ss')

24.你的服务器全局事务的状态，通过Dblink连入或连出的链接在本机及远端机器对应的sid,serial#,spid都是多少？
如果你也有这样的语句，请看看下面的SQL。
SELECT /*+ ORDERED */
S.KSUSEMNM "ORIGIN",S.KSUUDLNA USERNAME,S.KSUSEPNM,
S.INDX SID,S.KSUSESER SERIAL#,P.KSUPRPID SPID,
G.K2GTITID_ORA "GTXID",DECODE(BITAND(KSUSEIDL, 11),1,'ACTIVE',
0,DECODE(BITAND(KSUSEFLG, 4096), 0, 'INACTIVE', 'CACHED'),2,
'SNIPED',3,'SNIPED','KILLED') "STATUS",
EVENT "WAITING"
FROM X$K2GTE G, X$KTCXB T, X$KSUSE S, V$SESSION_WAIT W, X$KSUPR P
WHERE G.K2GTDXCB = T.KTCXBXBA AND G.K2GTDSES = T.KTCXBSES
AND S.ADDR = G.K2GTDSES AND W.SID = S.INDX
AND S.KSUSEPRO = P.ADDR -- AND SUBSTR(G.K2GTITID_ORA, 1, 35) = 'XREP.1e55ca62.77.4.729'
-- AND W.EVENT='SQL*NET MESSAGE FROM DBLINK'
ORDER BY WAITING, STATUS       