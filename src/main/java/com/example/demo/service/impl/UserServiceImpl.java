package com.example.demo.service.impl;

import com.example.demo.bean.LoveUser;
import com.example.demo.bean.LoveUserExample;
import com.example.demo.dao.LoveUserMapper;
import com.example.demo.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 创建人:连磊
 * 日期: 2018/8/9. 9:46
 * 描述：
 */
@Service
public class UserServiceImpl implements UserService {

    @Resource
    private LoveUserMapper loveUserMapper;

    @Override
    public List<LoveUser> getUserList() {
        LoveUserExample loveUserExample = new LoveUserExample();
        return loveUserMapper.selectByExample(loveUserExample);
    }
}
