package com.example.demo.controller.user;

import com.example.demo.async.ThreadAsyncPool;
import com.example.demo.async.task.UserTask;
import com.example.demo.bean.LoveUser;
import com.example.demo.service.UserService;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.concurrent.ThreadPoolExecutor;

/**
 * 创建人:连磊
 * 日期: 2018/7/25. 11:37
 * 描述：
 */
@RestController
public class UserController {

    @Resource
    private UserService userService;
    @Resource
    private ThreadAsyncPool threadAsyncPool;

    @RequestMapping(value = "/getUser" , method = RequestMethod.GET)
    @ApiOperation(value="测试接口", notes="测试接口详细描述")
    public String getUser(LoveUser loveUser){
        System.out.println("展示呢公司");
        ThreadPoolExecutor asyncExecutor = threadAsyncPool.getAsyncExecutor();
        UserTask userTask = new UserTask(userService);
        asyncExecutor.execute(userTask);
        return "成功";
    }

}
