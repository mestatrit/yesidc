select tce.com_email_id,main.* from
(
select t.id cid, t.bank_account,tch.id tchid,tch.* from TC_CONTACT_HEADER tch left join t_company t on t.id = tch.company_id
order by t.id
) main left join
tc_contact_email tce 
on main.tchid = tce.contact_header_id
order by main.cid,main.update_date desc

/**
select * from tc_contact_email tce where tce.contact_header_id in
(
select id from TC_CONTACT_HEADER tch where tch.company_id = 2
)
*/
