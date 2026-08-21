# SQL / Database Test Cases

## 1. Project Information

| Field | Details |
|---|---|
| Project | QA Engineer Internship Portfolio |
| Testing Area | Database Testing |
| Database | Practice Database |
| SQL | SQL |
| Tester | Selvan L |
| Status | In Progress |

---

# 2. Purpose

This document defines database validation scenarios that can be executed using SQL queries.

The objective is to verify:

- Data accuracy
- Data completeness
- Data integrity
- Relationships between tables
- Duplicate records
- NULL values
- Business rules
- Record counts
- Calculated values

---

# 3. User Data Test Cases

## TC-SQL-001 — Verify User Records Exist

**Objective:** Verify that expected user records exist.

**Query:**

```sql
SELECT *
FROM users;
