package tests;

import base.BaseTest;
import pages.LoginPage;
import pages.ProductsPage;

import org.testng.Assert;
import org.testng.annotations.Test;

public class ProductTest extends BaseTest {

    @Test
    public void addProductToCartTest() {

        LoginPage loginPage = new LoginPage(driver);

        loginPage.login(
                "standard_user",
                "secret_sauce"
        );

        ProductsPage productsPage =
                new ProductsPage(driver);

        Assert.assertEquals(
                productsPage.getPageTitle(),
                "Products",
                "Products page should be displayed"
        );

        productsPage.addBackpackToCart();

        Assert.assertEquals(
                productsPage.getCartCount(),
                "1",
                "Cart should contain one product"
        );
    }
}
