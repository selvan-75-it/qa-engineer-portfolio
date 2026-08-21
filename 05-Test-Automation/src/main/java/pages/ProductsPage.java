package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class ProductsPage {

    private final WebDriver driver;

    // Locators
    private final By pageTitle =
            By.cssSelector("[data-test='title']");

    private final By backpackAddButton =
            By.id("add-to-cart-sauce-labs-backpack");

    private final By cartLink =
            By.cssSelector("[data-test='shopping-cart-link']");

    private final By cartBadge =
            By.cssSelector("[data-test='shopping-cart-badge']");

    // Constructor
    public ProductsPage(WebDriver driver) {
        this.driver = driver;
    }

    // Actions

    public String getPageTitle() {
        return driver.findElement(pageTitle).getText();
    }

    public void addBackpackToCart() {
        driver.findElement(backpackAddButton).click();
    }

    public void openCart() {
        driver.findElement(cartLink).click();
    }

    public String getCartCount() {
        return driver.findElement(cartBadge).getText();
    }
}
