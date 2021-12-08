package com.Fishmarket.aspect;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

/**
 * Created by mo_yu on 2021/11/7.
 */
@Aspect
public class OnlyOneUser {
    @Before(value = "execution(* com.Fishmarket.controller.UserController.login(..))")
    public void isExit(){

    }
}
