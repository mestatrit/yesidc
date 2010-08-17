select t.page_type,count(*),sysdate from t_webpages t where t.status='1'
group by t.page_type

select count(*) from t_company

select * from  t_webpages t order by t.update_date desc
select * from  t_company t order by t.update_date desc
select * from  tc_email  t --where t.email='yunjiework@126.com' 
order by t.update_date desc
select * from  tc_contact_info   t --where t.email='yunjiework@126.com' 
order by t.update_date desc 
for update
select * from  tc_contact_header    t --where t.email='yunjiework@126.com' 
order by t.update_date desc

/**
--result 1
1	3	1055172	2010/8/2 7:58:43
1	3	1049020	2010/8/2 18:40:28
1	3	1030745	2010/8/5 7:54:21
1	3	1020616	2010/8/5 19:20:10
1	3	989668	2010/8/9 21:20:27
1	3	953711	2010/8/11 23:07:30
1	3	943213	2010/8/13 4:23:09
1	3	929794	2010/8/13 21:53:16
1	3	917545	2010/8/14 14:07:43
1	3	912020	2010/8/16 6:35:11
1	3	900991	2010/8/16 19:22:03

1	103570
**/

select to_char(t.create_date,'yyyy-MM-dd hh24:mi:ss'),t.* from t_webpages t where 1=1
and t.memo = '41277886' 
t.url = 'http://search.51job.com/job/42179120,c.html'

select count(*) from
(
select t.url,count(*) from t_webpages t group by t.url
having count(*) > 1
)

select to_char(t.create_date,'yyyy-MM-dd hh24:mi:ss'),t.* from t_webpages t where 1=1
and t.page_type = '3'
order by t.update_date desc

select * from  t_webpages t order by t.id

select count(*)
  from (select min(id) as id,url, count(*)
          from (select * from t_webpages where rownum <= 610000)
         group by url
        having count(*) > 1)
    
        
delete from t_webpages
 where id in (select id
                from (select min(id) as id, count(*)
                        from (select * from t_webpages)
                       group by url
                      having count(*) > 1))
