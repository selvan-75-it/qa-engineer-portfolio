package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import utils.WaitUtils;

public class CartPage {

    private final WebDriver driver;
    private final WaitUtils wait;

    private final By cartTitle =
            By.cssSelector("[data-test='title']");

    private final By backpackItem =
            By.cssSelector("[data-test='inventory-item-name']");

    private final By checkoutButton =
            By.id("checkout");

    public CartPage(WebDriver driver) {
        this.driver = driver;
        this.wait = new WaitUtils(driver);
    }

    public String getCartTitle() {
        return wait.waitForVisibility(cartTitle).getText();
    }

    public String getFirstProductName() {
        return wait.waitForVisibility(backpackItem).getText();
    }

    public void clickCheckout() {
        wait.waitForClickable(checkoutButton).click();
    }
}
