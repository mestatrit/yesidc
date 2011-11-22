1.bash
 /usr/ucb/ps -auxww|grep java
 ./artifactory.sh >> log2010-03-10.log &
 ./artifactory.sh > log2010-03-10.log &

2.#cvs相关
chown -R jvm:jvm *
cvs co -d  <directory> -r  <branchname> <module-name>
cvs co -r  <branchname> <module-name>

3.几种查看Linux版本信息的方法：
3.1. uname -a
3.2. cat /proc/version
3.3. cat /etc/issue
3.4. lsb_release -a
#Unix版本信息:
3.5 showrev


4.程序编译过程中找不到libqt-mt.3我们可以运行以下命令
#ln  -s   $QTDIR/lib/libqt-mt.3   /user/local/lib/libqt-mt.3
条件并
grep -E '(ABC.*XYZ|XYZ.*ABC)'
从文件内容查找匹配指定字符串的行：
$ grep "被查找的字符串" 文件名
从文件内容查找与正则表达式匹配的行：
$ grep –e “正则表达式” 文件名
查找时不区分大小写：
$ grep –i "被查找的字符串" 文件名
查找匹配的行数：
$ grep -c "被查找的字符串" 文件名
从文件内容查找不匹配指定字符串的行：
$ grep –v "被查找的字符串" 文件名
从根目录开始查找所有扩展名为.log的文本文件，并找出包含”ERROR”的行
find / -type f -name "*.log" | xargs grep "ERROR"
find / -name httpd.conf
find / -name access_log 2>/dev/null.txt (输出错误文件)

压缩
tar -cvf a.tar /usr/a
jar cvfM css.jar *
jar cvfm test.jar manifest.mf test
解压
tar -xvf a.tar /usr/a

显示更新十次后退出
top -n 10

Solaris硬件信息
/usr/platform/sun4u/sbin/prtdiag
vmstat 1

查看硬盘的使用情况
# df –h 可以看到已安装的文件系统的空间大小及剩余空间大小。
# quota –v 查看用户的磁盘空间信息,如果你用quota限制了用户空间大小的话。
# du -sk * 查看目录的使用情况
# du -k | sort -n 迅速发现那个目录是最大的。
# du -sm 文件夹  返回该文件夹总M数
# ls -lh 以M为单位的文件大小.
# format 这个命令可以查看硬盘的类型和分区的详细情况
# iostat –E 看硬盘的大小和型号
# prtvtoc /dev/rdsk/c0t0d0s0 显示某个磁盘的分区状况

查看CPU的使用情况
#dmesg |grep cpu
# mpstat

查看内存
#dmesg |grep mem
#prtconf -vp | grep Mem
#echo ::memstat | mdb -k
#mdb -k

查看磁盘的个数
#vxdisk list

如何查看文件系统
#df -k

查看系统内核命令
# isainfo 看内核的bit
# isainfo -kv 调整内核
# modinfo 显示可载入的模组
# prtconf 显示系统硬件配置（周边设备）
# sysdef 显示可载入的模组，硬件配置与一些可以调整的核心参考值
# ulimit -a


软链接/硬链接
ln -s /tmp/less /usr/local/bin/less

大小写转换
APP_NAME_TOMCAT=`echo $APP_NAME | sed  'y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
unzip -d $TOMCAT_HOME/webapps/$APP_NAME_TOMCAT  $APP_HOME/build/$APP_NAME.war

允许ROOT用户登录
cd /etc/ssh
vi sshd_config
找到PermitRootLogin这一行,把no改为yes.保存退出.

导入证书~~
目录：C:\jdk1.5\jre\lib\security
命令：keytool -import -alias nciic2010 -keystore cacerts -file /app/apache/uat2/cat02/ncicc201004.cer -trustcacerts 
密码：changeit
keytool -delete -alias keyAlias -keystore keystore-name -storepass password
keytool -list -keystore D:/keystore/test
keytool -printcert -file D:/keystore/TC.cer 

#CUT命令
cut命令有5个参数，其中-c,-b,-f分别表示"character", "byte"以及"field"截取方式。当采用field模式截取时，需要用"-d"参数指定一个分隔符，分割符只能为单个字符。另外还有一个"- s"，suppress，表示如果行中没有给出的分割符则不输出该行（默认为如果没有分隔符则将该行原封不动输出）
以下为几个例子：
按字符截取：echo hello, world | cut -c 8-12 则输出"world"（截取字符串中从第8到第12个共12个字符） 
按分隔符截取：echo hello, world | cut -f 2 -d " "则输出"world"（截取以空格分割的第二部分） 
echo Long, long ago | cut -f 2,3 -d " "则输出" Long, ago"（截取以空格分割的第2、3部分，注意输出的结果也以-d指定的分隔符分割） 
使用"-s"安静地忽略没有给出地分隔符地行：echo hello |cut -d "!" -f 1 -s则什么也不输出（因为行中没有"!"字符）

#scp
scp -r ./agence uat4@10.164.146.23:/app/apache/uat4/cat01/webapps 

#变量
表示方法  描述     
$n  $1 表示第一个参数，$2 表示第二个参数 ...     
$#  命令行参数的个数     
$0  当前程序的名称     
$?  前一个命令或函数的返回码     
$*  以"参数1 参数2 ... " 形式保存所有参数     
$@  以"参数1" "参数2" ... 形式保存所有参数     
$$  本程序的(进程ID号)PID     
$!  上一个命令的PID   

#Unix操作系统下文件存取权限的修改
　　无论是Linux或者Unix，二者中档案存取权限分为三级: 档案拥有者、群组、其他。利用 chmod 可以控制档案如何被他人所存取，并且也可以通过chmod命令来修改文件的存取权限，chmod具体命令的格式如下：
　　格式1: chmod symbolic_mode file…
　　格式2: chmod absolute_mode file…
　　格式1：符号模式(symbolic_mode), 符号模式的命令格式如下：
　　chmod [who] op permision file…
　　who项表示用户类型，它的内容为以下一项或多项:
　　u 文件属主(user --- owner)
　　g 用户组(group)
　　o 其他人(other)
　　a 所有人(all)
　　op项表示动作:
　　+ 表示要加上permission指定的权利
　　- 表示要取消permission指定的权利
　　permission项为存取权限，它的内容为以下一项或多项：
　　r 表示可读
　　w 表示可写
　　x 表示可执行
　　例子：
　　chmod u+w test report 属主对test和report文件“可写”
　　chmod u-x abc.c 属主对abc.c文件不可执行
　　chmod u+rwx myfile1 属主对myfile1“可读、可写、可执行”
　　chmod ugo+rwx myfile2 任何人都对myfile1“可读、可写、可执行”
　　格式2：绝对模式(absolute_mode), 符号模式的命令格式如下：
　　chmod xyz file…
　　x、y、z分别是0-7的数字，分别表示属主、用户组、其他人对该文件的存取权限。x、y、z的取值公式均为：
　　a*4 + b*2 + c
　　其中，
　　a=1分别表示可读，a=0表示不可读;
　　b=1分别表示可写，b=0表示不可写;
　　c=1分别表示可执行，c=0表示不可执行;
　　例子：
　　chmod 751 ncp 属主对ncp拥有“可读、可写、可执行”的全部权利;组内成员对ncp只有“可读、可执行”的权利;其他用户对ncp只有“可执行”的权利。

		set uid权限(SUID)：只能用在二进制文件(binary file)上，用在目录上无效，表示程序在执行的过程中能够暂时拥有该文件所有者的权限。
		添加set uid权限的命令： chmod u+s 文件名
		set gid权限(SGID)：当二进制件(binary file)被设置了此权限，则无论使用者是谁，在执行该文件时，他的有效群组将变为该文件的群组所有人。当目录被设置了此权限，就表明该目录下所创建的文件都是为目录所属组。
		添加set gid权限的命令 ： chmod g+s 目录名
		Sticky Bit权限(t权限)：目前只针对目录有效，对文件已经没效果了。它对目录的作用是：在具有SBit的目录下，使用者如果在该目录下具有w以及x的权限，则他在该目录下所创建的文件或目录，就只有他与root用户才有权力删除。即：在这样的权限内容下，任何人都可以在这样的目录下新增或修改文件，但只有该文件/目录创建者和root用户能够删除自己的目录或文件。换句话说，当甲这个用户对于A目录下是拥有group或other的项目，并且拥有w的权限，这表示甲对该目录内任何人建立的目录或文件进行“删除、更名以及搬移”等动作。但如果在A目录上设置了Sticky bit的权限时，则甲只能针对自己建立的文件或目录进行删除、更名、移动等操作。
		添加t权限的命令： chmod o+t 目录名
		我们都知道用数字来更改权限，且这些数字形态方式为三个数字的组合，如果在这三个数字前再加上一个数字的话，最前面的数字就代表上面的这几种属性了。
		注： 4为SUID、 2为SGID、 1为Sticky bit。
		例如：chmod 4755 testfile  (-rwsr-xr-x)
		chmod 6755 testfile  (-rwsr-sr-x)
		chmod 1755 testfile  (-rwxr-xr-t)

#cat /etc/passwd 可以查看所有用户的列表		
# useradd –d /usr/sam -m sam
此命令创建了一个用户sam，其中-d和-m选项用来为登录名sam产生一个主目录/usr/sam（/usr为默认的用户主目录所在的父目录）。
# useradd -s /bin/sh -g group –G adm,root gem
此命令新建了一个用户gem，该用户的登录Shell是/bin/sh，
它属于group用户组，同时又属于adm和root用户组，其中group用户组是其主组。
增加用户账号就是在/etc/passwd文件中为新用户增加一条记录，同时更新其他系统文件如/etc/shadow, /etc/group等。
# usermod -s /bin/ksh -d /home/z –g developer sam
此命令将用户sam的登录Shell修改为ksh，主目录改为/home/z，用户组改为developer。
# 例如，假设当前用户是sam，则下面的命令修改该用户自己的口令：
$ passwd
Old password:******
New password:*******
Re-enter new password:*******
# passwd -d sam
此命令将用户sam的口令删除，这样用户sam下一次登录时，系统就不再询问口令。
# passwd -l sam
passwd命令还可以用-l(lock)选项锁定某一用户，使其不能登录，例如：

1、建用户：
adduser phpq                             //新建phpq用户
passwd phpq                               //给phpq用户设置密码
2、建工作组
groupadd test                          //新建test工作组
3、新建用户同时增加工作组
useradd -g test phpq                      //新建phpq用户并增加到test工作组
注：：-g 所属组 -d 家目录 -s 所用的SHELL
4、给已有的用户增加工作组
usermod -G groupname username
或者：gpasswd -a user group
5、临时关闭：在/etc/shadow文件中属于该用户的行的第二个字段（密码）前面加上*就可以了。想恢复该用户，去掉*即可。
或者使用如下命令关闭用户账号：
passwd peter –l
重新释放：
passwd peter –u
6、永久性删除用户账号
userdel peter
groupdel peter
usermod –G peter peter   （强制删除该用户的主目录和主目录下的所有文件和子目录）
7、从组中删除用户
编辑/etc/group 找到GROUP1那一行，删除 A
或者用命令
gpasswd -d A GROUP
8、显示用户信息
id user
cat /etc/passwd

# chmod [-R] user mode filename
[bady]# chmod u+w a+rx dir1 /* 对于目录1，设置任何使用者皆有读取和执行的权限，但只有所有者可作修改 */
[bady]# chmod u+rwx go-rwx file1 /* 对于文件1，设定只有所有者有读，写，执行的权限 */
[bady]# chmod u+x file2 /* 对于文件2，增加当前用户的可执行权限 */
[bady]# chmod g+x file3 /* 对于文件3，增加工作组使用者可执行权限 */
[bady]# chmod o-r file4 /* 对于文件4，删除其他用户读取权限 */
[bady]# chmod 555 file5 /* 对于文件5，设置所有用户可读，可执行的权限 */
/* 关于数字: 1 为执行权限，2 为写权限，4 为读权限；上面的第一个 5 为文件所有者的权限，即 1+4=5 权限为 rx ，后面的两个 5 依次为 组及其他用户的权限 */
# chown [-R] user filename
[bady]# chown user1 file1 /* 将文件 file1 改为用户 user1 所有 */
[bady]# chown -R user1 dir1 /* 将目录 dir1 其子目录下的所有文件改为用户 user1 所有 */
# chgrp [-R] groupname filename
[bady]# chgrp vlsi file1 /* 将文件 file1 的工作组所有权改为 vlsi 工作组所有 */
[bady]# chgrp -R vlsi file1 /* 将目录 dir1 及其子目录下的所有文件的工作组所有权改为 vlsi 工作组所有 *

9.FTP命令
 prompt off关闭提示，-> mget *.* 取某一目录下所有文件．
 
 10. dos2unix build.xml 
 
 11.文件切割：
a) 切中间的指定行（如1001行至2000行）:
head -2000 inputfile | tail -1000 > outputfile 
sed -n '1001,2000p' ur-file >newfile
b)split -b 20m RevolutionOS.rmvb RevOS_part_
c)split -l 100 test.txt 其实，如果不加任何参数，默认情况下是以1000行大小来分割的。 
d)root@pps public_rw] cat RevOS_part_* > RevolutionOS_RSB.rmvb 
这里不怕组装顺序错误，因为分割的时候是按字母顺序排下来的，cat也是按照字母顺序处理的，如果不放心，将组装后的文件哈希对比一下：
 [root@pps public_rw]# md5sum RevolutionOS.rmvb
ac7cce07f621b1ed6f692e6df0ac8c16  RevolutionOS.rmvb 
[root@pps public_rw]# md5sum RevolutionOS_RSB.rmvb
ac7cce07f621b1ed6f692e6df0ac8c16  RevolutionOS_RSB.rmvb

12.查看所有用戶和組
cat /etc/passwd
cat /etc/group