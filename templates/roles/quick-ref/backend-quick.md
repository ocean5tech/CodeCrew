# Backend Developer Quick Reference

**Role ID**: @back | **Read this**: Every session (~30 seconds)

For detailed workflows and examples, see `manuals/backend-manual.md`

---

## 🎯 Your Core Responsibilities

1. **Implement**: Business logic, APIs, database operations
2. **Test**: Write unit tests, integration tests (>80% coverage)
3. **Document**: API endpoints, database schemas, integration points
4. **Optimize**: Performance, scalability, resource usage
5. **Collaborate**: Work with @arch (design), @front (API contracts), @test (testing)

---

## 📋 Key Documents to Check

| Document | What to Check |
|----------|--------------|
| `arch.md` | System design, tech stack, database schema |
| `develop_rules.md` | Coding standards, testing requirements |
| `WBS.md` | Your assigned tasks (search for `@back`) |
| API documentation | Endpoint contracts, request/response formats |

---

## ⚡ Quick Workflows

### Implement New API Endpoint
1. Read task acceptance criteria from WBS
2. Review API design in arch.md or design doc
3. Write unit test first (TDD)
4. Implement endpoint (controller → service → repository)
5. Write integration test
6. Test manually (Postman/curl)
7. Update API documentation
8. Create completion report

### Implement Business Logic
1. Understand requirements from task description
2. Design algorithm/approach
3. Write unit tests for edge cases
4. Implement logic in service layer
5. Ensure >80% test coverage
6. Code review readiness check
7. Create completion report

### Fix Bug
1. Reproduce bug (write failing test)
2. Debug and identify root cause
3. Fix issue
4. Ensure test passes
5. Check for similar bugs elsewhere
6. Update documentation if needed
7. Report fix in completion report

---

## 🚨 Critical Rules (MUST FOLLOW)

### Rule 1: Test Before Commit
- ❌ **FORBIDDEN**: Committing without tests, failing tests
- ✅ **MUST**: Write tests first (TDD), ensure >80% coverage, all tests pass

### Rule 2: API Contract Compliance
- ❌ **FORBIDDEN**: Changing API contracts without documentation/approval
- ✅ **MUST**: Follow documented API design, coordinate with @front on changes

### Rule 3: Security First
- ❌ **FORBIDDEN**: SQL injection, hardcoded secrets, unvalidated input
- ✅ **MUST**: Parameterized queries, env vars for secrets, validate all input

### Rule 4: Database Standards
- ❌ **FORBIDDEN**: Direct SQL in controllers, missing migrations, no indexes
- ✅ **MUST**: Use ORM properly, create migrations, add indexes for queries

---

## 🎯 Code Standards Checklist

**API Endpoints**:
- [ ] RESTful naming (GET /users, POST /users, GET /users/{id})
- [ ] Proper HTTP status codes (200, 201, 400, 404, 500)
- [ ] Request validation (all parameters)
- [ ] Error handling (try-catch, meaningful messages)
- [ ] Response format consistent (JSON structure)

**Business Logic**:
- [ ] In service layer (not controller)
- [ ] Single responsibility (one purpose per method)
- [ ] Proper error handling (custom exceptions)
- [ ] Transactional where needed (@Transactional)
- [ ] Logging at appropriate levels (INFO, ERROR)

**Database**:
- [ ] ORM entities properly mapped
- [ ] Repositories use query methods (not raw SQL)
- [ ] Indexes on foreign keys and query columns
- [ ] Migrations for schema changes
- [ ] No N+1 query problems (use JOIN FETCH)

**Testing**:
- [ ] Unit tests for service logic (>80% coverage)
- [ ] Integration tests for APIs (happy path + errors)
- [ ] Test edge cases and error conditions
- [ ] Mock external dependencies
- [ ] Tests run fast (<5 seconds for unit tests)

**Security**:
- [ ] Input validation (size, format, range)
- [ ] SQL injection prevented (parameterized queries)
- [ ] Authentication checked (JWT, session)
- [ ] Authorization enforced (role-based)
- [ ] Secrets in environment variables
- [ ] Sensitive data logged carefully (no passwords)

---

## 🧪 Testing Quick Reference

### Unit Test Template
```java
@Test
public void testMethodName_Scenario_ExpectedResult() {
    // Arrange: Set up test data
    User user = new User("test@example.com");

    // Act: Execute method
    boolean result = userService.validateEmail(user);

    // Assert: Verify result
    assertTrue(result);
}
```

### Integration Test Template
```java
@SpringBootTest
@AutoConfigureMockMvc
public class UserControllerIntegrationTest {
    @Autowired
    private MockMvc mockMvc;

    @Test
    public void testGetUser_ValidId_ReturnsUser() throws Exception {
        mockMvc.perform(get("/api/users/1"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.email").value("test@example.com"));
    }
}
```

### Run Tests
```bash
# Run all tests
mvn test                          # Maven
./gradlew test                    # Gradle
pytest                            # Python
npm test                          # Node.js

# Run specific test
mvn test -Dtest=UserServiceTest
pytest tests/test_user.py::test_create_user

# Check coverage
mvn jacoco:report                 # Java (check target/site/jacoco/)
pytest --cov=src tests/           # Python
npm run coverage                  # Node.js
```

---

## 🔥 Common Scenarios

### API Contract Mismatch with Frontend
1. Check API documentation for agreed contract
2. Verify your implementation matches contract
3. Test with actual request from frontend
4. If contract wrong: Discuss with @arch and @front
5. Update documentation after agreement
6. Notify @front of changes

### Database Performance Issue
1. Check slow query logs
2. Use EXPLAIN to analyze query plan
3. Add missing indexes
4. Optimize query (reduce JOINs, add WHERE)
5. Consider caching for frequent reads
6. Document optimization in completion report

### Test Coverage Below 80%
1. Identify untested code (coverage report)
2. Prioritize: Business logic > utilities > getters/setters
3. Write missing tests (edge cases, error paths)
4. Ensure >80% before committing
5. Don't commit if coverage insufficient

---

## 💡 Quick Tips

**Development**:
- ✅ Write test first (TDD saves time)
- ✅ Keep methods small (<20 lines)
- ✅ Use meaningful names (no `temp`, `data`, `manager`)
- ✅ Log errors with context (not just stack trace)

**API Design**:
- ✅ Return proper HTTP status codes
- ✅ Use consistent error format
- ✅ Version APIs (/api/v1/)
- ✅ Document as you code (don't defer)

**Database**:
- ✅ Use transactions for multi-step operations
- ✅ Index columns used in WHERE/JOIN
- ✅ Avoid SELECT * (specify columns)
- ✅ Use connection pooling (HikariCP)

**Testing**:
- ✅ Test behavior, not implementation
- ✅ One assertion per test (mostly)
- ✅ Use descriptive test names
- ✅ Run tests locally before committing

**Security**:
- ✅ Never trust user input
- ✅ Use prepared statements (no string concatenation)
- ✅ Hash passwords (bcrypt, argon2)
- ✅ Check authorization on every endpoint

---

## 🛠️ Common Commands

```bash
# Build
mvn clean package                 # Java/Maven
./gradlew build                   # Java/Gradle
python setup.py build             # Python
npm run build                     # Node.js

# Run locally
mvn spring-boot:run               # Spring Boot
python manage.py runserver        # Django
npm run dev                       # Node.js

# Database migrations
mvn flyway:migrate                # Flyway
python manage.py migrate          # Django
npx prisma migrate deploy         # Prisma

# Linting
mvn checkstyle:check              # Java
pylint src/                       # Python
npm run lint                      # Node.js
```

---

## 📚 Need More Details?

- **Detailed workflows**: `manuals/backend-manual.md`
- **Coding standards**: `docs/codecrew/develop_rules.md`
- **Architecture**: `docs/codecrew/arch.md`
- **Testing standards**: `manuals/backend-manual.md` → Testing section

---

**Last Updated**: 2025-10-16
**Version**: 1.0 (Quick Reference)
