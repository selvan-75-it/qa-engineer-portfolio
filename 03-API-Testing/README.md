# 🔌 API Testing — Postman

## 1. Overview

This section demonstrates API testing skills using Postman.

API testing validates the communication between a client and server by examining:

- HTTP requests
- HTTP methods
- Request parameters
- Headers
- Request bodies
- HTTP status codes
- Response bodies
- Response headers
- Response time
- Data validation
- Error handling

---

# 2. API Testing Objectives

The objectives of API testing are to verify that:

1. Requests are sent correctly.
2. The API returns the expected HTTP status code.
3. Response data is correct.
4. Required fields are present.
5. Invalid requests are handled correctly.
6. Authentication behavior is correct where applicable.
7. Response time is within an acceptable range.
8. API behavior remains consistent across different test conditions.

---

# 3. HTTP Methods

The following HTTP methods will be studied and tested:

| Method | Purpose |
|---|---|
| GET | Retrieve data |
| POST | Create data |
| PUT | Replace/update data |
| PATCH | Partially update data |
| DELETE | Delete data |

---

# 4. HTTP Status Codes

Important status codes include:

| Code | Meaning |
|---:|---|
| 200 | OK |
| 201 | Created |
| 202 | Accepted |
| 204 | No Content |
| 400 | Bad Request |
| 401 | Unauthorized |
| 403 | Forbidden |
| 404 | Not Found |
| 405 | Method Not Allowed |
| 409 | Conflict |
| 422 | Unprocessable Content |
| 500 | Internal Server Error |

---

# 5. API Test Categories

## Functional API Testing

Verify that API endpoints perform their intended operations.

Examples:

- GET returns expected data.
- POST creates a resource.
- PUT updates a resource.
- DELETE removes a resource.

## Negative API Testing

Verify how the API handles invalid input.

Examples:

- Missing required field
- Invalid data type
- Invalid ID
- Missing authentication
- Invalid authentication
- Unsupported HTTP method

## Data Validation

Verify:

- Required fields
- Field values
- Data types
- Response structure
- Relationships between fields

## Performance Checks

Basic response-time observations will be recorded where appropriate.

---

# 6. Postman Skills

The project will demonstrate:

- Creating requests
- Organizing collections
- Environment variables
- Request headers
- Query parameters
- Path parameters
- JSON request bodies
- Tests and assertions
- Response validation
- Collection Runner
- Test result analysis

---

# 7. Planned API Test Structure

```text
03-API-Testing/
│
├── README.md
├── API-Test-Plan.md
├── API-Test-Cases.md
├── Postman-Collection.json
├── API-Test-Execution.md
└── API-Test-Summary.md
