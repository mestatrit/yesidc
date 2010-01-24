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


\\=====================================================================
2009-09-24 | Linux下启动Oracle服务和监听程序  把启动和监听方式记录下来。

安装完毕oracle以后，需要创建oracle系统用户，并在/home/oracle下面的.bash_profile添加几个环境变量：ORACLE_SID,ORACLE_BASE,ORACLE_HOME。比如：
export ORACLE_SID=test export ORACLE_BASE=oracle_install_dir export ORACLE_HOME=xxx

1、启动数据库：
oracle@suse92:~> sqlplus /nolog
SQL*Plus: Release 9.2.0.4.0 - Production on Fri Jan 20 02:29:37 2006
Copyright (c) 1982, 2002, Oracle Corporation. All rights reserved.
SQL> connect /as sysdba
Connected to an idle instance.
SQL> startup
ORACLE instance started.
Total System Global Area 135352820 bytes
Fixed Size 455156 bytes
Variable Size 109051904 bytes
Database Buffers 25165824 bytes
Redo Buffers 679936 bytes
Database mounted. 

2、关闭数据库：
oracle@suse92:~> sqlplus /nolog
SQL*Plus: Release 9.2.0.4.0 - Production on Fri Jan 20 02:29:37 2006
Copyright (c) 1982, 2002, Oracle Corporation. All rights reserved.
SQL> connect /as sysdba
Connected to an idle instance.
SQL> shutdwon abort; 

3、启动监听器
oracle@suse92:~> lsnrctl start 

4、停止监听器
oracle@suse92:~> lsnrctl stop 

5、查看监听器状态
　　lsnrctl">oracle@suse92:~>lsnrctl
　　LSNRCTL> status
　　LSNRCTL> exit
linux下oracle 10G启动EM和isqlplus2008年09月26日 星期五 下午 03:18注:
$ORACLE_HOME为oracle的安装路径
1,使用EM(enterprise managment)
1.1启动EM
$ORACLE_HOME/bin/emctl start dbconsole
如果出现下面相关信息,说明服务启动
TZ set to PRC
Oracle Enterprise Manager 10g Database Control Release 10.1.0.3.0
Copyright (c) 1996, 2004 Oracle Corporation. All rights reserved.
http://localhost.localdomain:5500/em/console/aboutApplication
Starting Oracle Enterprise Manager 10g Database Control ................................. started.
1.2使用EM
在浏览器地址中输入如下地址:
http://localhost.localdomain:5500/em/console/
如果不出现登录对话页面,请确保你的数据库服务与监听服务正常启动了
注意:如果监听程序不启动,可以通过sqlplus登录,但在此页面中不能正常显示.
现在你就可以正常使用EM了!
2,使用isqlplus
2.1启动isqlplus
$ORACLE_HOME/bin/isqlplusctl start
如果出现如下信息,说明正常启动.
iSQL*Plus 10.1.0.3.0
Copyright (c) 2004 Oracle. All rights reserved.
Starting iSQL*Plus ...
iSQL*Plus started.
2.2使用isqlplus
在浏览器地址中输入如下地址:
http://localhost.localdomain:5560/isqlplus/
这样就出现了isqlplus的登录界面,就可使用isqlplus 了
Oracle Enterprise Manager无法启动，重新配置2008年09月26日 星期五 下午 02:50今天
碰到ORACLE EM 无法启动的问题，可能是IP更改了的原因，所以我使用了EMCA命令重
新配置了一下ORACLE EM，具体过程如下：$emca -config dbcontrol db -repos recreateEMCA
开始于 2007-10-12 11:16:40
EM Configuration Assistant 10.2.0.1.0 正式版
版权所有 (c) 2003, 2005, Oracle。保留所有权利。输入以下信息:
数据库 SID: orcl
已为数据库 orcl 配置了 Database Control
您已选择配置 Database Control, 以便管理数据库 orcl
此操作将移去现有配置和默认设置, 并重新执行配置
是否继续? [yes(Y)/no(N)]: y
监听程序端口号: 1521
SYS 用户的口令:
DBSNMP 用户的口令:
SYSMAN 用户的口令:
SYSMAN 用户的口令: 通知的电子邮件地址 (可选):
通知的发件 (SMTP) 服务器 (可选):
-----------------------------------------------------------------已指定以下设置数据库
ORACLE_HOME ................ e:\oracle\product\10.2.0\db_1数据库主机名 ................
hailang.mshome.net
监听程序端口号 ................ 1521
数据库 SID ................ orcl
通知的电子邮件地址 ...............
通知的发件 (SMTP) 服务器 ...............-----------------------------------------------------------------
是否继续? [yes(Y)/no(N)]: y
2007-10-12 11:17:32 oracle.sysman.emcp.EMConfig perform
信息: 正在将此操作记录到 e:\oracle\product\10.2.0\db_1\cfgtoollogs\emca\orcl\emca_2007-
2007-10-12 11:17:37 oracle.sysman.emcp.util.DBControlUtil stopOMS
信息: 正在停止 Database Control (此操作可能需要一段时间)...
2007-10-12 11:17:40 oracle.sysman.emcp.EMReposConfig dropRepository
信息: 正在删除 EM 资料档案库 (此操作可能需要一段时间)...
2007-10-12 11:24:23 oracle.sysman.emcp.EMReposConfig invoke
信息: 已成功删除资料档案库
2007-10-12 11:24:24 oracle.sysman.emcp.EMReposConfig createRepository
信息: 正在创建 EM 资料档案库 (此操作可能需要一段时间)...
2007-10-12 11:34:36 oracle.sysman.emcp.EMReposConfig invoke
信息: 已成功创建资料档案库
2007-10-12 11:35:15 oracle.sysman.emcp.util.DBControlUtil startOMS
信息: 正在启动 Database Control (此操作可能需要一段时间)...
2007-10-12 11:36:56 oracle.sysman.emcp.EMDBPostConfig performConfiguration
信息: 已成功启动 Database Control
2007-10-12 11:36:56 oracle.sysman.emcp.EMDBPostConfig performConfiguration
警告: 无法创建 Database Control 快捷方式
2007-10-12 11:36:56 oracle.sysman.emcp.EMDBPostConfig performConfiguration
信息: >>>>>>>>>>> Database Control URL 为 http://hailang.mshome.net:5500/em
<<<<<<<<<<<
已成功完成 Enterprise Manager 的配置在10g 中,我们可能会经常遇到OEM不能正常使用的
问题,但导致问题的原因不尽相同,最后绝大多数问题可以通过emca 这个命令来解决,详细的
说明可以查看连机帮助,下面给出一些常用的命令,及实例步骤.
创建一个EM资料库
emca -repos create
重建一个EM资料库
emca -repos recreate
删除一个EM资料库
emca -repos drop
配置数据库的 Database Control
emca -config dbcontrol db
删除数据库的 Database Control配置
emca -deconfig dbcontrol db
重新配置db control的端口，默认端口在1158
emca -reconfig ports
emca -reconfig ports -dbcontrol_http_port 1160
emca -reconfig ports -agent_port 3940
先设置ORACLE_SID环境变量后,启动EM console服务
emctl start dbconsole
先设置ORACLE_SID环境变量后,停止EM console服务
emctl stop dbconsole
先设置ORACLE_SID环境变量后,查看EM console服务的状态
emctl status dbconsole
配置dbconsole的步骤
emca -repos create
emca -config dbcontrol db
emctl start dbconsole
重新配置dbconsole的步骤
emca -repos drop
emca -repos create
emca -config dbcontrol db
emctl start dbconsole

==============================================================================
查看用户的表空间使用情况。
select t.*
  from (SELECT D.TABLESPACE_NAME,
               SPACE "SUM_SPACE(M)",
               BLOCKS SUM_BLOCKS,
               SPACE - NVL(FREE_SPACE, 0) "USED_SPACE(M)",
               ROUND((1 - NVL(FREE_SPACE, 0) / SPACE) * 100, 2) "USED_RATE(%)",
               FREE_SPACE "FREE_SPACE(M)"
          FROM (SELECT TABLESPACE_NAME,
                       ROUND(SUM(BYTES) / (1024 * 1024), 2) SPACE,
                       SUM(BLOCKS) BLOCKS
                  FROM DBA_DATA_FILES
                 GROUP BY TABLESPACE_NAME) D,
               (SELECT TABLESPACE_NAME,
                       ROUND(SUM(BYTES) / (1024 * 1024), 2) FREE_SPACE
                  FROM DBA_FREE_SPACE
                 GROUP BY TABLESPACE_NAME) F
         WHERE D.TABLESPACE_NAME = F.TABLESPACE_NAME(+)
        UNION ALL --if have tempfile
        SELECT D.TABLESPACE_NAME,
               SPACE "SUM_SPACE(M)",
               BLOCKS SUM_BLOCKS,
               USED_SPACE "USED_SPACE(M)",
               ROUND(NVL(USED_SPACE, 0) / SPACE * 100, 2) "USED_RATE(%)",
               SPACE - USED_SPACE "FREE_SPACE(M)"
          FROM (SELECT TABLESPACE_NAME,
                       ROUND(SUM(BYTES) / (1024 * 1024), 2) SPACE,
                       SUM(BLOCKS) BLOCKS
                  FROM DBA_TEMP_FILES
                 GROUP BY TABLESPACE_NAME) D,
               (SELECT TABLESPACE,
                       ROUND(SUM(BLOCKS * 8192) / (1024 * 1024), 2) USED_SPACE
                  FROM V$SORT_USAGE
                 GROUP BY TABLESPACE) F
         WHERE D.TABLESPACE_NAME = F.TABLESPACE(+)) t
 order by "USED_RATE(%)" desc;

