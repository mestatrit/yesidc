--您兑换过的账号为>>yoka238986 ,密码为 061482 
select * from
(
select t.*, level from t_code t 
connect by prior t.id=t.code_type
start with t.id =1
)
c
where c.cname like '%公司%'

select * from t_code t where t.cname like '%社会团体%'

select * from t_code t where t.id=14527