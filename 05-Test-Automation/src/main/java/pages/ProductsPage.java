package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import utils.WaitUtils;

public class ProductsPage {

    private final WebDriver driver;
    private final WaitUtils wait;

    private final By pageTitle =
            By.cssSelector("[data-test='title']");

    private final By backpackAddButton =
            By.id("add-to-cart-sauce-labs-backpack");

    private final By cartLink =
            By.cssSelector("[data-test='shopping-cart-link']");

    private final By cartBadge =
            By.cssSelector("[data-test='shopping-cart-badge']");

    public ProductsPage(WebDriver driver) {
        this.driver = driver;
        this.wait = new WaitUtils(driver);
    }

    public String getPageTitle() {
        return wait.waitForVisibility(pageTitle).getText();
    }

    public void addBackpackToCart() {
        wait.waitForClickable(backpackAddButton).click();
    }

    public void openCart() {
        wait.waitForClickable(cartLink).click();
    }

    public String getCartCount() {
        return wait.waitForVisibility(cartBadge).getText();
    }
}
