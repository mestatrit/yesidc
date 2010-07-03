select tce.com_email_id,main.* from
(
select t.id cid, t.bank_account,tch.id tchid,tch.* from TC_CONTACT_HEADER tch left join t_company t on t.id = tch.company_id
order by t.id
) main left join
tc_contact_email tce 
on main.tchid = tce.contact_header_id
order by main.cid,main.update_date desc


/**
select * from t_company t order by t.update_date desc

select * from tc_contact_email tce where tce.contact_header_id in
(
select id from TC_CONTACT_HEADER tch where tch.company_id = 2
)

select count(*) from
(
select company_code,count(*) from t_company t group by t.company_code
having count(*) > 1
)

select count(*) from t_company t
--103565

select   min(id)  as   id   from   t_company   group   by   company_code having count(*) > 1

select * from t_company t where t.company_code = '51job_367018'

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

*/




