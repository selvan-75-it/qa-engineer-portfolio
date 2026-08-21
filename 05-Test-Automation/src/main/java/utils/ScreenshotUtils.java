package utils;

import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ScreenshotUtils {

    public static String capture(
            WebDriver driver,
            String testName) {

        try {
            File source =
                    ((TakesScreenshot) driver)
                            .getScreenshotAs(OutputType.FILE);

            Path directory =
                    Path.of("test-output", "screenshots");

            Files.createDirectories(directory);

            Path destination =
                    directory.resolve(testName + ".png");

            Files.copy(
                    source.toPath(),
                    destination,
                    StandardCopyOption.REPLACE_EXISTING
            );

            return destination.toString();

        } catch (Exception e) {

            System.out.println(
                    "Screenshot failed: " + e.getMessage()
            );

            return null;
        }
    }
}
