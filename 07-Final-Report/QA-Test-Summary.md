# QA Test Summary Report

## 1. Project Information

| Field | Details |
|---|---|
| Project | E-Commerce QA Testing Portfolio |
| Application | SauceDemo |
| Testing Type | Manual Functional Testing |
| Browser | Google Chrome |
| Environment | Practice/Test Environment |
| Tester | Selvan L |
| Report Status | In Progress |

---

# 2. Executive Summary

This report summarizes the manual testing activities performed against the SauceDemo practice e-commerce web application.

Testing currently covers the core user journey from authentication through product selection, cart management, checkout, and order completion.

The project is still under development. Additional test execution, defect verification, API testing, SQL testing, and automation testing will be added in later phases.

---

# 3. Testing Scope

The current manual testing scope includes:

- Login
- Products
- Product details
- Product sorting
- Shopping cart
- Checkout
- Order summary
- Order completion
- Navigation
- Form validation
- Negative testing
- Exploratory testing

---

# 4. Test Environment

| Item | Value |
|---|---|
| Application | SauceDemo |
| Type | Web Application |
| Browser | Google Chrome |
| Device | Laptop |
| OS | Windows |
| Environment | Practice/Test Environment |

---

# 5. Testing Activities Completed

The following activities have been performed during the current testing cycle:

- Test planning
- Test scenario identification
- Test case design
- Login testing
- Product exploration
- Cart testing
- Checkout testing
- End-to-end purchase testing
- Exploratory testing

---

# 6. Executed Test Results

The current execution includes the following confirmed results:

### Login

- Valid login — PASS
- Valid username + invalid password — PASS
- Invalid username + valid password — PASS
- Successful login navigation — PASS

### Products

- Products page loading — PASS
- Product display — PASS
- Product names — PASS
- Product prices — PASS
- Product images — PASS
- Product details — PASS
- Add product to cart — PASS
- Add multiple products — PASS
- Cart indicator — PASS

### Cart

- Open Cart — PASS
- Product appears in Cart — PASS
- Product name — PASS
- Product price — PASS
- Cart count — PASS
- Continue Shopping — PASS
- Checkout navigation — PASS
- Product link — PASS

### Checkout

- Checkout page — PASS
- Valid customer information — PASS
- Continue to order summary — PASS
- Order summary product — PASS
- Order summary price — PASS
- Total calculation — PASS
- Finish order — PASS
- Order confirmation — PASS

### End-to-End

Complete purchase workflow:

```text
Login
 ↓
Products
 ↓
Add Product
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
