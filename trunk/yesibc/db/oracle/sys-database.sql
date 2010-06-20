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

===============================================
创建Oracle数据库（以Oracle10g为例）
有两种创建数据库的方式，一种是以命令行脚本方式，即手动方式创建；另一种是利用Oracle提供的数据库配置向导来创建。本篇主要介绍在Unix和Windows下以命令行脚本方式创建Oracle数据库。
     一个完整的数据库系统，应包括一个物理结构、一个逻辑结构、一个内存结构和一个进程结构，如果要创建一个新的数据库，则这些结构都必须完整的建立起来。
一、在Unix下创建数据库
1.确定数据库名、数据库实例名和服务名
关于数据库名、数据库实例名和服务名，我之前有专门用一篇来详细介绍。这里就不再说明了。
2.创建参数文件
参数文件很确定了数据库的总体结构。Oracle10g有两种参数文件，一个是文本参数文件，一种是服务器参数文件。在创建数据库时先创建文本参数文件，在数据库创建后，可以由文件参数文件创建服务器参数文件。文本参数文件的取名方式为initORACLE_SID.ora,其中，ORACLE_SID是数据库实例名。其名称及路径为：
/home/app/oracle/product/10.1.0/admin/DB_NAME/pfile/initORACLE_SID.ora
其中，DB_NAME为数据库名。所以，应创建一个以之命名的目录，并将文本参数文件存放在上述目录中。假设新创建的数据库名为MYORACLE，SID与数据库名一致。则上述目录实际为：
/home/app/oracle/product/10.1.0/admin/MYORACLE/pfile/initMYORACLE.ora
1)参数文件的介绍
参数文件决定着数据库的总体结构，用于设置数据库的近260个系统参数。下面分类别说明一下各参数的作用，关于参数的详细使用说明请参考Oracle官方参考文档。
a.数据库标识类参数
DB_NAME: 数据库名，此参数在创建数据前决定，数据库创建后修改时，必须建控制文件
DB_DOMAIN: 数据库域名，用于区别同名数据库。数据库名与域名一起构成了全局数据库名
INSTANCE_NAME: 数据库实例名，可以与数据库相同
SERVICE_NAMES: 数据库服务名，与全局数据库名相同如果没有域名，则服务名就是数据库名
b.日志管理类参数
LOG_ARCHIVE_START: 是否启动自动归档进程ARCH
LOG_ARCHIVE_DEST: 归档日志文件存储目录
LOG_ARCHIVE_FORMAT: 归档日志文件的默认文件存储格式
LOG_ARCHIVE_DUPLEX_DEST: 归档日志文件镜像存储目录（Oracle8以上）
LOG_ARCHIVE_DEST_n: 归档日志文件存储目录（Oracle8i以上）
LOG_ARCHIVE_DEST_STATE_n: 设置参数LOG_ARCHIVE_DEST_n失效或生效
LOG_ARCHIVE_MAX_PROCESSES: 设置自动归档进程的个数
LOG_ARCHIVE_MIN_SUCCEED_DEST: 设置最少的成功归档日志存储目录的个数
LOG_CHECKPOINT_INTERVAL: 根据日志数量设置检验点频率
LOG_CHECKPOINT_TIMEOUT: 根据时间间隔设置检验点频率
c.内存管理参数
DB_BLOCK_SIZE: 标准数据块大小
DB_nK_CACHE_SIZE: 非标准数据块数据缓冲区大小
SHARED_POOL_SIZE: 共享池大小控制参数，单位为字节
DB_CACHE_SIZE: 标准数据块数据缓冲区大小
DB_BLOCK_BUFFERS: 数据缓冲区大小，9i之后已放弃使用
LOG_BUFFER: 日志缓冲区大小
SORT_AREA_SIZE: 排序区大小
LARGE_POOL_SIZE: 大池大小
JAVA_POOL_SIZE: Java池大小
d.最大许可用户数量限制参数
LICENSE_MAX_SESSIONS:数据库可以连接的最大会话数
LICENSE_MAX_USERS:数据库支持的最大用户数
LICENSE_MAX_WARNING:数据库最大警告会数（会话数据达到这个值时，产生新会话时就会产生警告信息）
e.系统跟踪信息管理参数
USER_DUMP_DEST:用户跟踪文件生成的设置
BACKGROUND_DUMP_DEST:后台进程跟踪文件生成的位置
MAX_DUMPFILE_SIZE:跟踪文件的最大尺寸
f.系统性能优化与动态统计参数
SQL_TRACE:设置SQL跟踪
TIMED_STATICS:设置动态统计
AUDIT_TRAIL:启动数据库审计功能
g.其他系统参数
CONTROL_FILES:控制文件名及路径
Undo_MANAGMENT:Undo空间管理方式
ROLLBACK_SEGMENTS:为这个例程分配的回退段名
OPEN_CURSORS:一个用户一次可以打开的游标的最大值
PROCESSES:最大进程数，包括后台进程与服务器进程
IFILE:另一个参数文件的名字
DB_RECOVERY_FILE_DEST:自动数据库备份目录
DB_RECOVERY_FILE_SIZE:数据库备份文件大小
2）参数文件样式
db_name=myoracle
instance_name=myoracle
db_domain=fangys.xiya.com
service_names=myoracle.fangys.xiya.com
control_files=(/home/app/oracle/product/10.1.0/oradata/myoracle/control01.ctl,
               /home/app/oracle/product/10.1.0/oradata/myoracle/control02.ctl,
               /home/app/oracle/product/10.1.0/oradata/myoracle/control03.ctl)
db_block_size=8192
user_dump_dest=/home/app/oracle/product/10.1.0/admin/myoracle/udump
background_dump_dest=/home/app/oracle/product/10.1.0/admin/myoracle/bdump
core_dump_dest=/home/app/oracle/product/10.1.0/admin/myoracle/cdump
db_recovery_file_dest=/home/app/oracle/product/10.1.0/flash_recover_area
db_recovery_file_size=100G
...

3.设置操作系统参数
$ORACLE_SID=myoracle
$export ORACLE_SID
4.启动实例并创建数据库
在创建数据库之前，首先要以新的数据库参数启动数据库实例，因为这时数据库的控制文件还没有产生，不能MOUNT或OPEN数据库。启动实例时，Oracle只按照内存参数分配SGA区，启动系统后台进程。
$sqlplus "sys/pass as sysdba"
sql>startup nomount
如果参数文件不在规定的目录中，可以在启动实例时指定参数文件：
sql>startup pfile=/export/home/user/initmyoracle.init nomount
在实例启动后就可以使用CREATE DATABASE命令创建数据。其详细语法请参考Oracle官方SQL参考文档。这里以实例来介绍：
sql>CREATE DATABASE myoracle
    MAXINSTANCE 1
    MAXLOGHISTORY 216
    MAXLOGFILES 50
    MAXLOGMEMBERS 5
DATAFILE '/home1/app/oracle/product/10.1.0/oradata/myoracle/system01.dbf' SIZE 500m
AUTOEXTEND ON NEXT 100m MAXSIZE UNLIMITED
LOGFILE
    GROUP 1('/home1/app/oracle/product/10.1.0/oradata/myoracle/log1a.log',
            '/home1/app/oracle/product/10.1.0/oradata/myoracle/log1b.log') SIZE 10m,
    GROUP 2('/home1/app/oracle/product/10.1.0/oradata/myoracle/log2a.log',
            '/home1/app/oracle/product/10.1.0/oradata/myoracle/log2b.log') SIZE 10m,
    GROUP 3('/home1/app/oracle/product/10.1.0/oradata/myoracle/log3a.log',
            '/home1/app/oracle/product/10.1.0/oradata/myoracle/log3b.log') SIZE 10m,
Undo TABLESPACE undotbs DATAFILE
'/home1/app/oracle/product/10.1.0/oradata/myoracle/undotbs01.dbf' size 200m
AUTOEXTEND ON NEXT 100m MAXSIZE UNLIMITED
DEFAULT TEMPORARY TALESPACE temp TEMPFILE
'/home1/app/oracle/product/10.1.0/oradata/myoracle/temp01.dbf' size 325m
AUTOEXTEND ON NEXT 100m MAXSIZE UNLIMITED
DEFAULT TABLESPACE users DATAFILE
'/home1/app/oracle/product/10.1.0/oradata/myoracle/usertbs01.dbf' size 1000m
CHARACTER SET ZHS16GBK;
这里说明一下CREATE DATABASE语句的各个关键字的含义：
DATAFILE:SYSTEM表空间的数据文件定义
LOGFILE:日志文件组的定义
Undo_TABLESPACE:重做表空间的定义
DEFAULT TEMPORTY TABLESPACE:默认临时表空间的定义
DEFAULT TABLESPACE：默认数据表空间的定义。

5.创建数据字典
在数据库创建结束后，数据库自动处于OPEN状态下，这时所有V$××××类数据字典都可以查询。而其它数据字典，如DBA_DATA_FILES、DBA_TABLESPACES等都不存在，必须通过下列骤为系统创建数据字典。
1)加载常用的数据字典包
sql>@/home/app/oracle/product/10.1.0/db_1/rdbms/catalog
2)加载PL/SQL程序包
sql>@/home/app/oracle/product/10.1.0/db_1/rdbms/admin/catproc
3)加载数据复制支持软件包
sql>@/home/app/oracle/product/10.1.0/db_1/rdbms/admin/catrep
4)加载Java程序包
sql>@/home/app/oracle/product/10.1.0/db_1/javavm/install/initjvm
5)加载系统环境文件
sql>connect system/pass
sql>@/home/app/oracle/product/10.1.0/db_1/sqlplus/admin/pupbld
二、在Windows下创建数据库
Oracle实例在Windows下表现为操作系统服务。在windows下，使用命令行方式创建数据的方法有所不同，差别在于在Windows下，需要先创建数据库服务和实例。
1.确定数据库名、数据库实例名和服务名
（略）
2.创建参数文件
在Windows下的参数文件名称及路径如下：
d:\oracle\product\10.1.0\admin\DB_NAME\pfile\init.ora(oracle10g)
d:\orant\database\iniORACLE_SID.ora(oracle7,oracle8)
参数据文件内容与前述一致。这里不再说明。
3.选择数据库实例
设置环境变量ORACLE_SID
c:\>set ORACLE_SID=数据库实例名
4.创建数据库实例
在Windows中创建数据库实例的命令为Oradim.exe，是一个可执行文件，可以在操作系统符号下直接运行。直接输入oradim显示此命令的帮助。
c:\>Oradim
下面对Oradim命令的参数进行一个说明
-------------------------------
-NEW 表示新建一个实例
-EDIT 表示修改一个实例
-DELETE 表示删除一个实例
-SID sid 指定要启动的实例名称
-SRVC service 指定要启动的服务名称
-INTPWD password 以Internal方式连接数据库时的口令字
-MAXUSERS count 该实例可以连接的最大用户数
-USRPWD password 指定内部用户的口令，如是作为Windows管理登录，不用此参数
-PFILE pfile 该实例所使用的参数文件名及路径
-STARTTYPE srvc|inst|srvc,inst 启动选项（srvc:只启动服务，inst:启动实例，服务必须先启动，srvc,inst:服务和实例同时启动）
-SHUTTYPE srvc|linst|srvc,inst 关闭选项（srvc:只关闭服务，实例必须已关闭，inst:只关闭实例，srvc,inst:服务和实例同时关闭）
-STARTMODE a|m 创建实例所使用的模式（a:自动，即windows启动时自动启动 m:手动）
-SHUTMODE a|i|m 关闭实例时所使用的模式（a:abort异常方式,i:immediate立即方式,n:normal正常方式）
----------------------------
例：创建一个数据库实例
c:\>oradim -NEW -SID myoracle -STARTMODE m -PFILE "d:\fangys\initmyoracle.ora"
或
c:\>oradim -NEW -SRVC OracleServicemyoracle -STARTMODE m -PFILE "d:\fangys\initmyoracle.ora"
例：修改一个数据实例
c:\>oradim -EDIT -SID myoracle -STARTMODE a
或
c:\>oradim -EDIT -SRVC OracleServicemyoracle -STARTMODE a
例：删除一个实例
c:\>oradim -DELETE -SID myoracle
或
c:\>oradim -DELETE -SRVC Oracleservicemyoracle
例：启动服务与实例
c:\>oradim -STARTUP -SID myoracle -STARTTYPE srvc,inst
只启动服务
c:\>oradim -STARTUP -SID myoracle -STARTTYPE srvc
启动实例：
c:\>oradim -STARTUP -SID myoracle -STARTTYPE inst
例：关闭服务与实例
c:\>oradim -SHUTDOWN -SID myoracle 
c:\>oradim -SHUTDOWN -SID myoracle -SHUTTYPE srvc,inst
5.启动实例并创建数据库
c:\>oradim -NEW -SID myoracle -INTPWD syspass -STARTMODE a -PFILE d:\fangys\initmyoracle.ora
c:\>set ORACLE_SID=myoracle
c:\>sqlplus sys/syspass as sysdba
sql>startup -pfile=d:\fangys\initmyoracle.ora nomount
sql>CREATE DATABASE myoracle
logfile group...
...
6.创建数据字典
sql>@d:\oracle\product\10.1.0\db_1\rdbms\admin\catalog.sql;
sql>@d:\oracle\product\10.1.0\db_1\rdbms\admin\catproc.sql;
sql>@d:\oracle\product\10.1.0\db_1\rdbms\admin\catrep.sql;
sql>@d:\oracle\product\10.1.0\db_1\javavm\install\initjvm.sql;
sql>@d:\oracle\product\10.1.0\db_1\sqlplus\admin\ppbld.sql;
