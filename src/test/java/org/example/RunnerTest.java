package org.example;

import org.testng.annotations.Test;

// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class RunnerTest {

    @Test(groups = {"smoke"})
    public void smoke2(){
        System.out.println("тест 2");
    }

    @Test(groups = {"smoke"})
    public void smoke1(){
        System.out.println("тест 1");
    }


    @Test(groups = {"regress"})
    public void regress1(){
        System.out.println("regress1");
    }

    @Test(groups = {"sanity"})
    public void sanity2(){
        System.out.println("s 2");
    }
    @Test(groups = {"sanity"})
    public void sanity3(){
        System.out.println("s 3");
    }
}
