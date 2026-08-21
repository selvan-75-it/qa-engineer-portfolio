package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import utils.WaitUtils;

public class CheckoutPage {

    private final WebDriver driver;
    private final WaitUtils wait;

    private final By firstNameField =
            By.id("first-name");

    private final By lastNameField =
            By.id("last-name");

    private final By postalCodeField =
            By.id("postal-code");

    private final By continueButton =
            By.id("continue");

    private final By finishButton =
            By.id("finish");

    private final By confirmationMessage =
            By.cssSelector("[data-test='complete-header']");

    public CheckoutPage(WebDriver driver) {
        this.driver = driver;
        this.wait = new WaitUtils(driver);
    }

    public void enterFirstName(String firstName) {
        wait.waitForVisibility(firstNameField).sendKeys(firstName);
    }

    public void enterLastName(String lastName) {
        wait.waitForVisibility(lastNameField).sendKeys(lastName);
    }

    public void enterPostalCode(String postalCode) {
        wait.waitForVisibility(postalCodeField).sendKeys(postalCode);
    }

    public void enterCustomerInformation(
            String firstName,
            String lastName,
            String postalCode) {

        enterFirstName(firstName);
        enterLastName(lastName);
        enterPostalCode(postalCode);
    }

    public void clickContinue() {
        wait.waitForClickable(continueButton).click();
    }

    public void clickFinish() {
        wait.waitForClickable(finishButton).click();
    }

    public String getConfirmationMessage() {
        return wait.waitForVisibility(confirmationMessage).getText();
    }
}
