select t.company_code,t.company_name, t3.* from t_company t,tc_contact_header t1,
tc_contact_common t2,tc_contact_info t3
where t.id=t1.company_id
and t2.contact_header_id = t1.id
and t2.contact_info_id = t3.id
order by t.update_date desc


select t.company_code,t.company_name, t5.* from t_company t,tc_contact_header t1,
tc_contact_email t4,tc_email t5
where t.id=t1.company_id
and t4.contact_header_id = t1.id
and t4.com_email_id = t5.id
order by t.update_date desc