select t.page_type,count(*) from t_webpages t where t.page_type in ('2','3')
group by t.page_type


select count(*) from
(
select t.url,count(*) from t_webpages t group by t.url
having count(*) > 1
)

select count(*) from
(
select t.memo,count(*) from t_webpages t group by t.memo
having count(*) > 1
)

select * from t_webpages t order by t.update_date desc

delete from t_company
 where id in ( 
 select id from 
 (
 select min(id) as id
                from t_company 
               group by company_code
              having count(*) > 1
  )
 where ROWNUM < 2000             
  )
