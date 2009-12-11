1.bash
 /usr/ucb/ps -auxww|grep java

2.#cvs中设置可写
chown -R jvm:jvm *

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