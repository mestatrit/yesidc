String date = "2014-12-28 13:12:12";
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
//HH:mm:ss24Сʱ�ƣ�hh:mm:ss12Сʱ��
java.util.Date dateStr = formatter.parse(date);
java.sql.Date dateDB = new java.sql.Date(dateStr.getTime());		



mysqldump --force -h 172.16.1.34 -P3306 -uxedk -padmin  xedk>xedk.sql

1.mysql -h 10.164.147.4 -P 9999 -uroot -p981050
2.������jdk7��tomcat 7

mysql mysqldump ֻ������ṹ ����������
���ƴ��� ��������:

mysqldump --opt -d ���ݿ��� -u root -p > xxx.sql 

�������ݿ� 
���ƴ��� ��������:

#mysqldump�����ݿ�����>���ݿⱸ���� 
#mysqldump��-A��-u�û�����-p���롡���ݿ���>���ݿⱸ���� 
#mysqldump��-d��-A��--add-drop-table��-uroot��-p��>xxx.sql 

1.�����ṹ���������� 
���ƴ��� ��������:

mysqldump��--opt��-d�����ݿ�����-u��root��-p��>��xxx.sql���� 

2.�������ݲ������ṹ 
���ƴ��� ��������:

mysqldump��-t�����ݿ�����-uroot��-p��>��xxx.sql�� 

3.�������ݺͱ�ṹ 22222
���ƴ��� ��������:

mysqldump�����ݿ�����-uroot��-p��>��xxx.sql�� 

4.�����ض���Ľṹ 
���ƴ��� ��������:

mysqldump��-uroot��-p��-B�����ݿ�����--table��������>��xxx.sql���� 

�������ݣ� 
��������mysqldump��������������SQL��䣬������mysql�ͻ���������׾��ܰ����ݵ����ˣ� 
���ƴ��� ��������:

#mysql�����ݿ�����<���ļ��� 
#source��/tmp/xxx.sql���� 

D:\DevTools\MySql\MySQL Server 5.6\bin>mysqldump beijing -uroot -p t_bet_set t_bets t_config_ini_auto_down_rate t_config_initial t_game_info t_game_sub_info t_history t_insert_log t_kaipan t_login_log t_news t_odds t_odds_set t_op_log t_panbiao t_role t_send_back t_send_back_default t_team t_user t_user_role t_autolet t_report_classify t_report> data20140308.sql

D:\DevTools\MySql\"MySQL Server 5.6"\bin\mysqldump beijing -uroot -p  t_game_sub_info> data20140116.sql

�����Զ�̵�¼
#mysqld_safe --user=mysql --skip-grant-tables --skip-networking &
#mysql -u root mysql
mysql> UPDATE user SET Password=PASSWORD('newpassword') where USER='root';
mysql> FLUSH PRIVILEGES;
mysql> quit;

���ȣ��Ƚ���һ���û�lavasoft������Ϊ��123456
grant all on *.* to lavasoft@'localhost' identified by '123456' with grant  option; 
���������޸�����û�������Ϊ��leizhimin
update user set password = password('leizhimin') where user = 'lavasoft' and host='localhost';
flush privileges;

create user 'acm'@'localhost' identified by 'acm12345';
grant all privileges on *.* to acm@'localhost';

b.ʹ���������¼
#mysql -u root -pnewpassword
2.Զ�̵�¼Ȩ��
mysql> GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'%' IDENTIFIED BY 'mypassword' WITH GRANT OPTION;
mysql> FLUSH PRIVILEGES;

select PERIOD_ADD(9801,2);  
SELECT DATE_ADD("1997-12-31 23:59:59",  INTERVAL 1 DAY);  
zoufeiaaa,zoufeiaa,zoufeizongdai,zoufeigudong,zoufei1

13:29:12.178 [http-apr-8000-exec-1] INFO  jdbc.sqltiming - select t.login_name loginName, sum(t.has_next_dl) hasNextDl,s
um(t.has_hy) hasHy, sum(t.total)
total,sum(t.bet_amount) betAmount,sum(t.effective_amount) effectiveAmount, sum(t.vip_win_amount)
vipWinAmount,sum(t.all_back_amount) allBackAmount,sum(t.real_back_amount) realBackAmount, sum(t.earn_back_amount)
earnBackAmount,sum(t.pre_sup_amount) preSupAmount,sum(t.pay_sup_amount) paySupAmount, sum(t.income_amount)
incomeAmount,sum(t.real_betting_amount) realBettingAmount,sum(t.real_win_amount) realWinAmount,
sum(t.real_result_amount) realResultAmount,sum(t.earn_result_amount) earnResultAmount, sum(t.bh_amt)
bhAmt,sum(t.bh_win_amt) bhWinAmt,sum(t.bh_ts_amt) bhTsAmt, sum(t.bh_result_amt) bhResultAmt,sum(t.bh_total)
bhTotal from t_report t where 1=1 and t.business_date>='2014-03-26 02:30:00' and t.business_date<='2014-03-27
02:29:00' and t.login_name in ( 'zoufeigudong' ) group by t.login_name order by t.login_name