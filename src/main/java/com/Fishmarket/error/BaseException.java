package com.Fishmarket.error;

import lombok.Data;

/**
 * @author MO_YU
 * @date 2021/11/10
 * @description 业务错误类
 */
@Data
public class BaseException extends RuntimeException {

    private int code;
    private String msg;

    public BaseException(int code, String msg) {
        super(msg);
        this.code = code;
    }
}
