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

        // Perform login
        loginPage.login("standard_user", "secret_sauce");

        // Verify that the Products page is displayed
        String pageTitle = driver.findElement(
                By.cssSelector("[data-test='title']")
        ).getText();

        Assert.assertEquals(
                pageTitle,
                "Products",
                "User should be redirected to the Products page"
        );
    }
}
