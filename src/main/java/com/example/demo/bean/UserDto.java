package com.example.demo.bean;

import lombok.Data;

import java.util.List;

/**
 * 创建人:连磊
 * 日期: 2018/8/9. 10:50
 * 描述：
 */
@Data
public class UserDto extends LoveUser {
    private Integer sex;

    /**
     * Database Column Remarks:
     *   年龄
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column le_user.age
     *
     * @mbg.generated
     */
    private Integer age;
    private List<LoveUserLoginLog> loveUserLoginLogs;

}
