# Decision Matrix: Database Selection

---

## SQL vs NoSQL vs NewSQL

| Use Case | SQL | NoSQL | NewSQL |
|----------|-----|-------|--------|
| **Structured Data** | ⭐⭐⭐ | ⭐ | ⭐⭐⭐ |
| **Flexible Schema** | ⭐ | ⭐⭐⭐ | ⭐⭐ |
| **ACID Transactions** | ⭐⭐⭐ | ⭐ | ⭐⭐⭐ |
| **Horizontal Scaling** | ⭐ | ⭐⭐⭐ | ⭐⭐⭐ |
| **Complex Queries** | ⭐⭐⭐ | ⭐ | ⭐⭐⭐ |
| **Learning Curve** | ⭐⭐ | ⭐⭐ | ⭐ |

---

## SQL Databases

| Database | PostgreSQL | MySQL | SQLite |
|----------|------------|-------|--------|
| **ACID Compliance** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ |
| **Performance** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐ |
| **Features** | ⭐⭐⭐ | ⭐⭐ | ⭐⭐ |
| **JSON Support** | ⭐⭐⭐ | ⭐⭐ | ⭐⭐ |
| **Scalability** | ⭐⭐⭐ | ⭐⭐⭐ | ⭐ |
| **Ease of Setup** | ⭐⭐ | ⭐⭐ | ⭐⭐⭐ |
| **TOTAL** | 17/18 | 15/18 | 13/18 |

**Recommendation:** PostgreSQL (most features, best for production)

---

## NoSQL Databases

| Database | MongoDB | Redis | DynamoDB |
|----------|---------|-------|----------|
| **Document Storage** | ⭐⭐⭐ | ❌ | ⭐⭐⭐ |
| **Key-Value Store** | ⭐ | ⭐⭐⭐ | ⭐⭐⭐ |
| **Performance** | ⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐ |
| **Scalability** | ⭐⭐⭐ | ⭐⭐ | ⭐⭐⭐ |
| **Query Flexibility** | ⭐⭐⭐ | ⭐ | ⭐⭐ |
| **Ease of Setup** | ⭐⭐ | ⭐⭐⭐ | ⭐ |

**Recommendation:**
- **Document store:** MongoDB
- **Cache/Sessions:** Redis
- **AWS-only:** DynamoDB

---

## Project-Type Recommendations

### E-Commerce / Financial
**PostgreSQL** (ACID transactions critical)

### Content Management System
**PostgreSQL** or **MongoDB** (flexible schema)

### Real-time Chat/Gaming
**Redis** + **PostgreSQL** (cache + persistence)

### Analytics / Reporting
**PostgreSQL** (complex queries) or **ClickHouse** (big data)

### Desktop App (Local Storage)
**SQLite** (embedded, no server)

### Mobile App (Local Storage)
**SQLite** (iOS/Android built-in) or **Realm**

---

**Last Updated:** 2026-01-31
