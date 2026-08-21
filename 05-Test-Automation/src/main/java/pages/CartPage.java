package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class CartPage {

    private final WebDriver driver;

    // Locators
    private final By cartTitle =
            By.cssSelector("[data-test='title']");

    private final By backpackItem =
            By.cssSelector("[data-test='inventory-item-name']");

    private final By checkoutButton =
            By.id("checkout");

    // Constructor
    public CartPage(WebDriver driver) {
        this.driver = driver;
    }

    // Actions

    public String getCartTitle() {
        return driver.findElement(cartTitle).getText();
    }

    public String getFirstProductName() {
        return driver.findElement(backpackItem).getText();
    }

    public void clickCheckout() {
        driver.findElement(checkoutButton).click();
    }
}
