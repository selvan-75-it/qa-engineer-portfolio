# API Test Execution Report

## 1. Project Information

| Field | Details |
|---|---|
| Project | QA Engineer Internship Portfolio |
| API | JSONPlaceholder |
| Tool | Postman |
| Testing Type | REST API Testing |
| Tester | Selvan L |
| Status | In Progress |

---

# 2. Execution Objective

This document records the actual results obtained while executing API test cases using Postman.

Only tests that have actually been executed will be marked as PASS or FAIL.

---

# 3. API Environment

| Item | Value |
|---|---|
| API | JSONPlaceholder |
| Base URL | `https://jsonplaceholder.typicode.com` |
| Client | Postman |
| Protocol | HTTPS |
| Format | JSON |

---

# 4. Execution Results

| Test Case | Description | Status | Notes |
|---|---|---|---|
| TC-API-001 | GET valid post | NOT EXECUTED | Pending Postman execution |
| TC-API-002 | Validate HTTP 200 | NOT EXECUTED | Pending Postman execution |
| TC-API-003 | Validate response ID | NOT EXECUTED | Pending Postman execution |
| TC-API-004 | Validate required fields | NOT EXECUTED | Pending Postman execution |
| TC-API-005 | Invalid resource | NOT EXECUTED | Pending Postman execution |
| TC-API-006 | Invalid HTTP method | NOT EXECUTED | Pending Postman execution |

---

# 5. Planned Postman Assertions

The valid GET request will contain assertions for:

### Status Code

```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
