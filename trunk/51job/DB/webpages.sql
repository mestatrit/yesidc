select t.page_type,count(*),sysdate from t_webpages t where t.status='1'
group by t.page_type

/**
--result 1
1	3	651289	2010/6/4 16:57:05
2	2	57505	  2010/6/4 16:57:05
--result 2
1	3	657885	2010/6/4 17:27:49
2	2	57085	  2010/6/4 17:27:49
--result 3
1	3	726411	2010/6/5 0:32:52
2	2	52502	  2010/6/5 0:32:52
**/

select to_char(t.create_date,'yyyy-MM-dd hh24:mi:ss'),t.* from t_webpages t where t.url = 'http://search.51job.com/job/42179120,c.html'

select count(*) from
(
select t.url,count(*) from t_webpages t group by t.url
having count(*) > 1
)

select to_char(t.create_date,'yyyy-MM-dd hh24:mi:ss'),t.* from t_webpages t where 1=1
and t.page_type = '3'
order by t.update_date desc


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
