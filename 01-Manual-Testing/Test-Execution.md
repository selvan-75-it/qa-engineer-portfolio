# Test Execution Report — E-Commerce Web Application

## 1. Project Information

| Field | Details |
|---|---|
| Project | E-Commerce QA Testing Portfolio |
| Application | SauceDemo |
| Testing Type | Manual Testing |
| Browser | Google Chrome |
| Environment | Practice/Test Environment |
| Tester | Selvan L |

---

# 2. Execution Objective

The purpose of this document is to record the actual results obtained while executing the defined test cases against the SauceDemo application.

Only tests that have actually been executed are marked with an execution result.

Tests that have not yet been performed remain **NOT EXECUTED**.

---

# 3. Execution Status Definitions

| Status | Meaning |
|---|---|
| PASS | Actual result matches the expected result. |
| FAIL | Actual result does not match the expected result. |
| BLOCKED | Test could not be completed because of a blocker. |
| NOT EXECUTED | Test has not yet been performed. |
| NOT APPLICABLE | Test does not apply to the current environment. |

---

# 4. Login Execution Results

| Test Case ID | Scenario | Result | Notes |
|---|---|---|---|
| TC-LOGIN-001 | Valid username + valid password | PASS | User successfully logged in and reached the Products page. |
| TC-LOGIN-002 | Valid username + incorrect password | PASS | Login was rejected and an authentication error was displayed. |
| TC-LOGIN-003 | Incorrect username + valid password | PASS | Login was rejected and an authentication error was displayed. |
| TC-LOGIN-004 | Empty username | NOT EXECUTED | Pending execution. |
| TC-LOGIN-005 | Empty password | NOT EXECUTED | Pending execution. |
| TC-LOGIN-006 | Password masking | NOT EXECUTED | Pending execution. |
| TC-LOGIN-007 | Successful login navigation | PASS | User reached the Products page. |
| TC-LOGIN-008 | Logout | NOT EXECUTED | Pending execution. |

---

# 5. Products Execution Results

| Test Case ID | Scenario | Result | Notes |
|---|---|---|---|
| TC-PROD-001 | Products page loading | PASS | Products page loaded successfully. |
| TC-PROD-002 | Product display | PASS | Products were displayed. |
| TC-PROD-003 | Product names | PASS | Product names were visible. |
| TC-PROD-004 | Product prices | PASS | Product prices were displayed. |
| TC-PROD-005 | Product images | PASS | Product images were displayed. |
| TC-PROD-006 | Product details | PASS | Product details opened correctly. |
| TC-PROD-007 | Product sorting | NOT EXECUTED | Pending detailed execution. |
| TC-PROD-008 | Add product to cart | PASS | Product was added successfully. |
| TC-PROD-009 | Add multiple products | PASS | Multiple products were added successfully. |
| TC-PROD-010 | Cart indicator | PASS | Cart indicator updated correctly. |

---

# 6. Cart Execution Results

| Test Case ID | Scenario | Result | Notes |
|---|---|---|---|
| TC-CART-001 | Open Cart | PASS | Cart page opened successfully. |
| TC-CART-002 | Product appears in Cart | PASS | Added product appeared in the cart. |
| TC-CART-003 | Product name | PASS | Product name matched the selected product. |
| TC-CART-004 | Product price | PASS | Product price was displayed correctly. |
| TC-CART-005 | Cart count | PASS | Cart count updated correctly. |
| TC-CART-006 | Remove product | NOT EXECUTED | Removal behavior requires explicit verification. |
| TC-CART-007 | Continue Shopping | PASS | Returned to the Products page. |
| TC-CART-008 | Checkout navigation | PASS | Checkout page opened successfully. |
| TC-CART-009 | Product link | PASS | Correct product details opened. |

---

# 7. Checkout Execution Results

| Test Case ID | Scenario | Result | Notes |
|---|---|---|---|
| TC-CHK-001 | Checkout page | PASS | Checkout Information page opened successfully. |
| TC-CHK-002 | Valid customer information | PASS | Valid information was accepted. |
| TC-CHK-003 | Empty First Name | NOT EXECUTED | Pending execution. |
| TC-CHK-004 | Empty Last Name | NOT EXECUTED | Pending execution. |
| TC-CHK-005 | Empty Postal Code | NOT EXECUTED | Pending execution. |
| TC-CHK-006 | Continue to order summary | PASS | Order summary was reached successfully. |
| TC-CHK-007 | Order summary product | PASS | Selected product appeared in the summary. |
| TC-CHK-008 | Order summary price | PASS | Product price was displayed. |
| TC-CHK-009 | Total calculation | PASS | Total calculation appeared correct during the tested order flow. |
| TC-CHK-010 | Finish order | PASS | Order completed successfully. |
| TC-CHK-011 | Order confirmation | PASS | Order confirmation was displayed. |

---

# 8. End-to-End Test Execution

## E2E-001 — Complete Purchase Workflow

**Flow:**

```text
Login
  ↓
Products
  ↓
Select Product
  ↓
Add to Cart
  ↓
Cart
  ↓
Checkout
  ↓
Customer Information
  ↓
Order Summary
  ↓
Finish
  ↓
Order Confirmation
