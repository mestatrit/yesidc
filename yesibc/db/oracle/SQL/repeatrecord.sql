1.--查某一列(或多列)的重复值(只能查出重复记录的值，不能整个记录的信息) 
--如:查找stuid,stuname重复的记录 
select stuid,stuname from stuinfo 
group by stuid,stuname 
having(count(*))>1 

2.--查某一列有重复值的记录(这种方法查出的是所有重复的记录,也就是说如果有两条记录重复的，就查出两条) 
--如:查找stuid重复的记录 
select * from stuinfo 
where stuid in ( 
select stuid from stuinfo 
group by stuid 
having(count(*))>1 
) 

3.--查某一列有重复值的记录(只显示多余的记录,也就是说如果有三条记录重复的，就显示两条) 
--这种方成绩的前提是：需有一个不重复的列,本例中的是recno 
--如:查找stuid重复的记录 
select * from stuinfo s1 
where recno not in ( 
select max(recno) from stuinfo s2 
where s1.stuid=s2.stuid 
) 

--下面这个是查出所有重复记录的SQL语句： 
--方法1：   
Select *
	FROM table_name A
 WHERE ROWID > (SELECT min(rowid)
									FROM table_name B
								 WHERE A.key_values = B.key_values);
--方法2：   
select *
	from table_name t1
 where exists (select 'x'
					from table_name t2
				 where t2.key_value1 = t1.key_value1
					 and t2.key_value2 = t1.key_value2
					 and t2.rowid > t1.rowid);