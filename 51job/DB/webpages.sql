select t.page_type,count(*),sysdate from t_webpages t where t.status='1'
group by t.page_type

/**
--result 1
1	3	1325603	2010/6/23 0:56:01


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
