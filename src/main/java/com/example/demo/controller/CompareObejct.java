package com.example.demo.controller;

import com.alibaba.fastjson.JSONArray;
import com.example.demo.bean.LoveUserLoginLog;
import com.example.demo.bean.UserDto;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.alibaba.fastjson.JSON;


class CompareObejct<T> {


	public void contrastObj(T original, T current , Class<T> cls) {
		if(original==null){
			return;
		}
        try {
            Field[] fields = cls.getDeclaredFields();
            for (Field field : fields) {

                PropertyDescriptor pd = new PropertyDescriptor(field.getName(), cls);
                Method getMethod = pd.getReadMethod();
                Object o1 = getMethod.invoke(original);
                Object o2 = getMethod.invoke(current);
                String s1 = o1 == null ? "" : o1.toString();//避免空指针异常  
                String s2 = o2 == null ? "" : o2.toString();//避免空指针异常  
                if (!s1.equals(s2)) {
                	System.out.println("不一样的属性：" + field.getName() + " 属性值：[" + s1 + "," + s2 + "]");
                }  
            }  
        } catch (Exception e) {
		    e.printStackTrace();
            System.out.println(e.getMessage());  
        }
    }
	public static class CompareTest {

		public static void main(String[] args) {

			UserDto userDto = new UserDto();
			UserDto userDto1 = new UserDto();
			/*userDto.setAge(25);
			userDto1.setAge(20);*/

            LoveUserLoginLog loveUserLoginLog = new LoveUserLoginLog();
            loveUserLoginLog.setUserId("dsfaf");
            loveUserLoginLog.setLoginTime(new Date());
            List<LoveUserLoginLog> loveUserLoginLogs = new ArrayList<>();
            loveUserLoginLogs.add(loveUserLoginLog);
            userDto.setLoveUserLoginLogs(loveUserLoginLogs);

			CompareObejct compare = new CompareObejct();
			compare.contrastObj(userDto ,userDto1 , UserDto.class);
		}

	}
}