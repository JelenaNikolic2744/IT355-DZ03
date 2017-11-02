/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.domacibr02.aop;


import java.lang.reflect.Method;
import java.util.Arrays;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.aop.MethodBeforeAdvice;
/**
 *
 * @author Jeca
 */
public class InterceptorLog implements MethodBeforeAdvice{

    @Override
    public void before(Method br1, Object[] br2, Object br3) throws Throwable {
        System.out.println("logBefore() is running!");
        System.out.println("hijacked : " + br1.getName());
        System.out.println("******");
    }

    @After("execution(* com.mycompany.domacibr02.aop.DodajRezI.dodajRez(..))")
    public void logAfter(JoinPoint joinPoint) {
        System.out.println("logAfter() je pozvana");
        System.out.println("presretanje : " + joinPoint.getSignature().getName());
        System.out.println("******");
    }

    @AfterThrowing(pointcut = "execution(* com.mycompany.domacibr02.aop.DodajRezI.dodajRezThrowException())", throwing = "greska")
    public void logAfterThrowing(JoinPoint joinPoint, Throwable error) {
        System.out.println("logAfterThrowing() metoda je pozvana!");
        System.out.println("presretanje : " + joinPoint.getSignature().getName());
        System.out.println("Exception : " + error);
        System.out.println("******");
    }

    @AfterReturning(pointcut = "execution(* com.mycompany.domacibr02.aop.DodajRezI.dodajRezz())", returning = "returnValue")
    public void runAfter(JoinPoint joinPoint, String returnValue) throws Throwable {
        System.out.println("Inside RunAfterExecution.afterReturning() method...");
        System.out.println("inserted after : " + joinPoint.getSignature().getName());
        System.out.println("Method returned value is : " + returnValue);
    }

    @Around("execution(* execution(* com.mycompany.domacibr02.aop.DodajRezI.dodajRezA(..))")
    public void logAround(ProceedingJoinPoint joinPoint) throws Throwable {
        System.out.println("logAround() je pozvana!");
        System.out.println("presretanje: " + joinPoint.getSignature().getName());
        System.out.println("presretanje : " + Arrays.toString(joinPoint.getArgs()));
        System.out.println("Around before je pozvana!");
        joinPoint.proceed();
        System.out.println("Around metoda je pozvana!");
        System.out.println("******");
    }

    
}
