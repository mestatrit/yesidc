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

#CUT命令
cut命令有5个参数，其中-c,-b,-f分别表示"character", "byte"以及"field"截取方式。当采用field模式截取时，需要用"-d"参数指定一个分隔符，分割符只能为单个字符。另外还有一个"- s"，suppress，表示如果行中没有给出的分割符则不输出该行（默认为如果没有分隔符则将该行原封不动输出）
以下为几个例子：
按字符截取：echo hello, world | cut -c 8-12 则输出"world"（截取字符串中从第8到第12个共12个字符） 
按分隔符截取：echo hello, world | cut -f 2 -d " "则输出"world"（截取以空格分割的第二部分） 
echo Long, long ago | cut -f 2,3 -d " "则输出" Long, ago"（截取以空格分割的第2、3部分，注意输出的结果也以-d指定的分隔符分割） 
使用"-s"安静地忽略没有给出地分隔符地行：echo hello |cut -d "!" -f 1 -s则什么也不输出（因为行中没有"!"字符）

#scp
scp -r ./agence uat4@10.164.146.23:/app/apache/uat4/cat01/webapps 