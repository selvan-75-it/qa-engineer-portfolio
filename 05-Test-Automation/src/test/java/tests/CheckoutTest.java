package tests;

import base.BaseTest;
import pages.CartPage;
import pages.CheckoutPage;
import pages.LoginPage;
import pages.ProductsPage;

import org.testng.Assert;
import org.testng.annotations.Test;

public class CheckoutTest extends BaseTest {

    @Test
    public void completePurchaseTest() {

        // Login
        LoginPage loginPage = new LoginPage(driver);

        loginPage.login(
                "standard_user",
                "secret_sauce"
        );

        // Products
        ProductsPage productsPage =
                new ProductsPage(driver);

        productsPage.addBackpackToCart();
        productsPage.openCart();

        // Cart
        CartPage cartPage =
                new CartPage(driver);

        Assert.assertEquals(
                cartPage.getFirstProductName(),
                "Sauce Labs Backpack",
                "Expected product should be present in cart"
        );

        cartPage.clickCheckout();

        // Checkout
        CheckoutPage checkoutPage =
                new CheckoutPage(driver);

        checkoutPage.enterCustomerInformation(
                "Selvan",
                "QA",
                "627001"
        );

        checkoutPage.clickContinue();

        checkoutPage.clickFinish();

        // Verify order confirmation
        Assert.assertEquals(
                checkoutPage.getConfirmationMessage(),
                "Thank you for your order!",
                "Order confirmation should be displayed"
        );
    }
}
