package com.xdf.service.impl;

import org.apache.log4j.Logger;

import com.xdf.bean.Easybuy_User;
import com.xdf.dao.UserDao;
import com.xdf.dao.impl.UserDaoImpl;
import com.xdf.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDao dao = new UserDaoImpl();

	Logger log = Logger.getLogger(UserServiceImpl.class);

	/**
	 * ע�����û�
	 */
	@Override
	public void register(Easybuy_User user) {
		int row = dao.add(user);
		if (row > 0) {
			log.debug("�û�ע��ɹ���");
		} else {
			log.debug("�û�ע��ʧ�ܣ�");
		}
	}

	/**
	 * ��¼
	 */
	@Override
	public Easybuy_User login(String userName, String password) {
		Easybuy_User user = dao.login(userName, password);
		if (user == null) {
			log.debug("�û���¼ʧ�ܣ�");
			return null;
		} else {
			log.debug("�û���¼�ɹ���");
			return user;
		}
	}

}
