# Test Scenarios — E-Commerce Web Application

## 1. Project Information

| Field | Details |
|---|---|
| Project | E-Commerce QA Testing Portfolio |
| Application | SauceDemo |
| Testing Type | Manual Functional Testing |
| Environment | Practice/Test Environment |
| Browser | Google Chrome |
| Tester | Selvan L |

---

## 2. Purpose

This document defines the high-level test scenarios for the major functional areas of the SauceDemo e-commerce web application.

A test scenario describes **what functionality should be tested**.

Detailed test steps, test data, expected results, and execution status will be maintained in the Test Cases and Test Execution documents.

---

# 3. Login & Authentication

| Scenario ID | Test Scenario | Priority |
|---|---|---|
| TS-LOGIN-001 | Verify login with valid username and valid password. | High |
| TS-LOGIN-002 | Verify login is rejected with a valid username and incorrect password. | High |
| TS-LOGIN-003 | Verify login is rejected with an incorrect username and valid password. | High |
| TS-LOGIN-004 | Verify validation when the username is empty. | High |
| TS-LOGIN-005 | Verify validation when the password is empty. | High |
| TS-LOGIN-006 | Verify password characters are appropriately masked. | Medium |
| TS-LOGIN-007 | Verify successful login redirects the user to the Products page. | High |
| TS-LOGIN-008 | Verify logout functionality. | Medium |

---

# 4. Products & Inventory

| Scenario ID | Test Scenario | Priority |
|---|---|---|
| TS-PROD-001 | Verify the Products page loads successfully after login. | High |
| TS-PROD-002 | Verify products are displayed on the Products page. | High |
| TS-PROD-003 | Verify product names are displayed correctly. | Medium |
| TS-PROD-004 | Verify product prices are displayed correctly. | High |
| TS-PROD-005 | Verify product images are displayed correctly. | Medium |
| TS-PROD-006 | Verify a product can be opened to view its details. | Medium |
| TS-PROD-007 | Verify available product sorting options work correctly. | Medium |
| TS-PROD-008 | Verify a product can be added to the cart. | High |
| TS-PROD-009 | Verify multiple products can be added to the cart. | High |
| TS-PROD-010 | Verify the cart indicator updates after adding a product. | High |

---

# 5. Shopping Cart

| Scenario ID | Test Scenario | Priority |
|---|---|---|
| TS-CART-001 | Verify the Cart page opens successfully. | High |
| TS-CART-002 | Verify an added product appears in the cart. | High |
| TS-CART-003 | Verify the correct product name is displayed in the cart. | High |
| TS-CART-004 | Verify the correct product price is displayed in the cart. | High |
| TS-CART-005 | Verify the cart item count is updated correctly. | High |
| TS-CART-006 | Verify the Remove option works when available. | High |
| TS-CART-007 | Verify Continue Shopping navigation returns to the Products page. | Medium |
| TS-CART-008 | Verify the Checkout button opens the checkout process. | High |
| TS-CART-009 | Verify a product link opens the corresponding product details. | Medium |

---

# 6. Checkout

| Scenario ID | Test Scenario | Priority |
|---|---|---|
| TS-CHK-001 | Verify the Checkout Information page opens successfully. | High |
| TS-CHK-002 | Verify valid customer information can be submitted. | High |
| TS-CHK-003 | Verify validation when First Name is empty. | High |
| TS-CHK-004 | Verify validation when Last Name is empty. | High |
| TS-CHK-005 | Verify validation when Postal Code is empty. | High |
| TS-CHK-006 | Verify the Continue button proceeds to the order summary. | High |
| TS-CHK-007 | Verify the selected product appears in the order summary. | High |
| TS-CHK-008 | Verify the product price in the order summary. | High |
| TS-CHK-009 | Verify the order total is calculated correctly. | High |
| TS-CHK-010 | Verify the Finish button completes the order. | High |
| TS-CHK-011 | Verify an order confirmation is displayed after successful completion. | High |

---

# 7. Navigation

| Scenario ID | Test Scenario | Priority |
|---|---|---|
| TS-NAV-001 | Verify navigation from Products to Cart. | High |
| TS-NAV-002 | Verify navigation from Cart to Checkout. | High |
| TS-NAV-003 | Verify Continue Shopping navigation. | Medium |
| TS-NAV-004 | Verify navigation from a product listing to Product Details. | Medium |
| TS-NAV-005 | Verify available navigation controls perform their intended actions. | Medium |
| TS-NAV-006 | Verify logout navigation. | Medium |

---

# 8. Negative Testing

| Scenario ID | Test Scenario | Priority |
|---|---|---|
| TS-NEG-001 | Verify login with an incorrect password. | High |
| TS-NEG-002 | Verify login with an incorrect username. | High |
| TS-NEG-003 | Verify login with an empty username. | High |
| TS-NEG-004 | Verify login with an empty password. | High |
| TS-NEG-005 | Verify checkout with missing required information. | High |
| TS-NEG-006 | Verify invalid input does not allow an invalid workflow to continue. | High |

---

# 9. Exploratory Testing

Exploratory testing will be performed alongside predefined test cases.

The tester will explore the application to identify unexpected behavior involving:

- Navigation
- User interface
- Product information
- Cart behavior
- Form validation
- Error handling
- State changes
- Usability
- Browser interaction

An exploratory observation will only be reported as a defect after it has been reproduced and evaluated against expected behavior or requirements.

---

# 10. Smoke Testing

The following critical workflows will be considered for smoke testing:

1. Application is accessible.
2. User can log in with valid credentials.
3. Products page loads successfully.
4. Product can be added to the cart.
5. Cart opens successfully.
6. Checkout can be initiated.
7. Valid checkout information can be submitted.
8. Order can be completed.

---

# 11. Regression Testing

Regression testing will be performed after applicable changes or defect fixes.

Potential regression areas include:

- Login
- Products
- Product Details
- Cart
- Checkout
- Order Completion
- Navigation

The exact regression scope will depend on the affected functionality.

---

# 12. Scenario Status

These scenarios define the planned testing scope.

They do **not** represent completed execution results.

Execution results will be documented separately in:

`01-Manual-Testing/Test-Execution.md`

Possible statuses:

- Not Executed
- PASS
- FAIL
- BLOCKED
- NOT APPLICABLE

---

# 13. Traceability

Scenario IDs will be linked to detailed test cases.

Example:

```text
TS-LOGIN-001
      ↓
TC-LOGIN-001
      ↓
Execution Result
      ↓
Defect (if applicable)
      ↓
Retest
