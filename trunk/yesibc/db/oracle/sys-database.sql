一 启动数据库 
1）启动实例，装载并打开数据库： 
   startup 
2）启动实例，装载并打开数据库： 
   startup nomount 
3)启动实例，并装载数据库： 
  startup mount 
4)在启动的过程中限制访问数据库 
  startup restrict 
5)迫使实例启动 
  startup force 
6)启动实例，装载数据库，并启动完整的介质恢复过程 
  startup open recover 
  
  
二 改变数据库的可用性 
1)为实例装载数据库 
  alter database mount 
2)打开一个关闭的数据库 
  alter database open 
3)以只读方式打开数据库 
  alter database open read only 
  alter databaee open read write 
4)限制对打开的数据库进行访问 
  在alter system语句中添加enable restricted session or diable restricted session子句 
  
  
三 关闭数据库 
1）正常关闭 
  shutdown normal 
2)立即关闭 
  shutdown immediate 
3)以事务模式关闭 
  shutdown transactional 
4)以终止模式关闭 
  shutdown abort 
  
  
四 禁止操作数据库 
1）将数据库置于停顿状态 
  alter system quiesce restricted 
2)将数据库还原来操作状态 
  alter system unquiesce 
3)查看实例的禁止操作状态 
  select active_state from V$instance 
4)暂停或继续数据库 
  alter system suspend 
  alter system resume 
  
文章出处：DIY部落(http://www.diybl.com/course/7_databases/oracle/Oracleshl/2008717/133577.html)

Q1：LSNRCTL> status 监听端点概要..   (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=TEST)(PORT=1521))) 
监听程序不支持服务 命令执行成功 
A1：
从你的lsnrctl status来看，是服务没有注册进来， 
用sqlplus "/ as sysdba"进入sqlplus, 检查一下数据库实例的状态，
SQL>select status from v$instance. 
如果实例没有启动，启动实例。如果实例已经启动， 运行alter system register.
再查看lsnrctl status,如果是注册成功，会多出几个instance的信息。 
