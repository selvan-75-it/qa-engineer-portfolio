package tests;

import base.BaseTest;
import pages.LoginPage;

import org.openqa.selenium.By;
import org.testng.Assert;
import org.testng.annotations.Test;

public class LoginTest extends BaseTest {

    @Test
    public void validLoginTest() {

        LoginPage loginPage = new LoginPage(driver);

        loginPage.login("standard_user", "secret_sauce");

        String pageTitle = driver.findElement(
                By.cssSelector("[data-test='title']")
        ).getText();

        Assert.assertEquals(
                pageTitle,
                "Products",
                "User should be redirected to the Products page"
        );
    }

    @Test
    public void invalidPasswordTest() {

        LoginPage loginPage = new LoginPage(driver);

        loginPage.login("standard_user", "wrong_password");

        String errorMessage = loginPage.getErrorMessage();

        Assert.assertTrue(
                errorMessage.toLowerCase().contains("username and password"),
                "An appropriate login error message should be displayed"
        );

        Assert.assertTrue(
                driver.getCurrentUrl().contains("saucedemo.com"),
                "User should remain on the login page"
        );
    }
}
