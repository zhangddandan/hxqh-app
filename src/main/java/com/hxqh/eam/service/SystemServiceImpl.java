package com.hxqh.eam.service;

import com.hxqh.eam.dao.SfOrganizationAccountDao;
import com.hxqh.eam.model.SfOrganizationAccount;
import com.hxqh.eam.model.dto.action.LoginDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by lh on 2017/4/14.
 */
@Service("systemService")
public class SystemServiceImpl implements SystemService {

    @Autowired
    private SfOrganizationAccountDao organizationAccountDao;

    @Override
    public List<SfOrganizationAccount> getLoginUserList(LoginDto loginDto) {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("name", loginDto.getName());
        String where = "name=:name ";
        List<SfOrganizationAccount> accountList = organizationAccountDao.findAll(where, params, null);
        return accountList;
    }
}
