select * from
(
select t.*, level from t_code t 
connect by prior t.id=t.code_type
start with t.id =6
)
c
where c.cname like '%Íâ°ü%'

select * from t_code t where t.cname like '%%'

select * from t_code t where t.id=14527
