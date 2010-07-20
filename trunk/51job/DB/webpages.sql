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
1	3	1237547	2010-7-18 0:19:35
1	3	1228454	2010-7-18 10:16:16
1	3	1219104	2010-7-18 20:21:00
1	3	1216247	2010-7-18 23:34:15
1	3	1211930	2010-7-19 8:06:24
1	3	1208958	2010-7-19 23:24:11
1	3	1204130	2010-7-20 20:15:05

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
