package com.example.demo.async.task;

import com.example.demo.service.UserService;

/**
 * 创建人:连磊
 * 日期: 2018/8/9. 9:44
 * 描述：
 */
public class UserTask implements Runnable {

    private UserService userService;

    public UserTask(UserService userService) {
        this.userService = userService;
    }

    @Override
    public void run() {
        for (int i = 0 ; i <100 ; i ++ ) {
            userService.getUserList();
        }
    }
}
