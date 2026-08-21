# 🤖 Test Automation

## 1. Overview

This section demonstrates web UI test automation using:

- Selenium WebDriver
- Java
- TestNG
- Maven
- Page Object Model

The automation project is based on the same e-commerce testing workflow used in the manual testing section.

---

## 2. Technology Stack

| Technology | Purpose |
|---|---|
| Java | Programming language |
| Selenium WebDriver | Browser automation |
| TestNG | Test execution and assertions |
| Maven | Dependency and build management |
| Page Object Model | Test framework design |
| GitHub | Version control and portfolio |

---

## 3. Automation Objectives

The automation suite will cover:

- Login
- Invalid login
- Product navigation
- Add product to cart
- Cart validation
- Checkout
- Order completion
- Negative scenarios

---

## 4. Framework Structure

```text
src/
├── main/java/
│   ├── base/
│   │   └── BaseTest.java
│   │
│   └── pages/
│       ├── LoginPage.java
│       ├── ProductsPage.java
│       ├── CartPage.java
│       └── CheckoutPage.java
│
└── test/java/
    └── tests/
        ├── LoginTest.java
        ├── ProductTest.java
        ├── CartTest.java
        └── CheckoutTest.java
