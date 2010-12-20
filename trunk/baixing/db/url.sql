select * from tp_sim_person tp,tp_sim_contact_info tc,T_WEBPAGES tw
where tp.id = tc.sim_person_id
and tw.id = tp.web_id

delete from tp_sim_person tc where tc.id in
(
select max(t.id) from tp_sim_person t group by t.web_id having count(t.web_id) > 1
)

for update
select * from tp_sim_contact_info tc where tc.sim_person_id=126 for update

select * from t_extend_code t  order by  length(t.name) desc,t.name desc for update

select * from t_extend_code t where t.name like '%Î÷°²%'
