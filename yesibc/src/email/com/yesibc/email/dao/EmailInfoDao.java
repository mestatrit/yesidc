package com.yesibc.email.dao;

import java.util.List;

import com.yesibc.core.dao.EntityDao;
import com.yesibc.email.model.MailSender;
import com.yesibc.email.model.MailServer;

public interface EmailInfoDao extends EntityDao<MailServer> {
	public List<MailSender> getMails();

}
