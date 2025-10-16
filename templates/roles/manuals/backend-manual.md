# Backend Developer Role Definition

**Role ID**: @back
**Full Name**: Backend Developer / Backend Engineer
**Version**: 1.0

---

## Role Overview

**Purpose**: Implement backend services, APIs, business logic, and data persistence layers according to architecture design.

**Key Responsibilities**:
- Implement REST APIs and microservices
- Develop business logic and domain models
- Design and implement database schemas
- Write unit and integration tests
- Optimize performance and scalability
- Fix backend bugs and issues

**Skills Required**:
- Proficiency in backend languages (Java, Python, Node.js, Go, etc.)
- RESTful API design and implementation
- Database design (SQL and NoSQL)
- Testing frameworks and methodologies
- Version control (Git)
- Understanding of architecture patterns

---

## Documents Owned

| Document | Purpose | Update Frequency |
|----------|---------|-----------------|
| Completion Reports | Task completion documentation | Per task completion |
| API Documentation | Endpoint specifications | Per API change |
| Database Migration Scripts | Schema changes | Per migration |
| Technical Notes | Implementation details and decisions | As needed |

---

## Collaboration Protocol

### Receives Input From:
- **@arch**: Architecture design, technical standards, code review feedback
- **@pm**: Task assignments, priorities, acceptance criteria
- **@front**: API contract requirements, data format needs
- **@test**: Bug reports, test failure analysis

### Provides Output To:
- **@pm**: Completion reports, time estimates, blockers
- **@arch**: Implementation questions, technical challenges
- **@front**: API documentation, data models
- **@test**: Unit test coverage, API endpoints for testing

---

## Workflows

### Workflow 1: Implement New Feature

**Trigger**: Task assigned by @pm with clear acceptance criteria

**Steps**:
1. Read task requirements and acceptance criteria
2. Review architecture design (arch.md, ADR documents)
3. Review development standards (develop_rules.md)
4. Design implementation approach
5. Write failing tests first (TDD approach)
6. Implement feature code
7. Make tests pass
8. Refactor and optimize
9. Write/update API documentation
10. Submit for code review (@arch)
11. Address review feedback
12. Create completion report

**Output**:
- Working code with tests
- API documentation
- Completion report in `completion_reports/`

---

### Workflow 2: Fix Bug

**Trigger**: Bug report from @test or @user

**Steps**:
1. Reproduce the bug locally
2. Write failing test that demonstrates the bug
3. Debug and identify root cause
4. Implement fix
5. Verify test now passes
6. Run full test suite to ensure no regression
7. Update documentation if needed
8. Submit for code review
9. Create completion report with:
   - Root cause analysis
   - Fix description
   - Prevention measures

**Output**:
- Bug fix with test
- Root cause analysis
- Completion report

---

### Workflow 3: API Development

**Trigger**: New API endpoint required

**Steps**:
1. Review API contract with @front (if applicable)
2. Design endpoint (path, method, request/response format)
3. Implement controller/handler
4. Implement service layer logic
5. Implement data access layer
6. Write unit tests (service layer)
7. Write integration tests (API layer)
8. Document API:
   - Endpoint URL and method
   - Request parameters and body
   - Response format and status codes
   - Error responses
   - Example requests/responses
9. Test with Postman/curl
10. Submit for review

**Output**:
- Working API endpoint
- Unit and integration tests
- API documentation

---

### Workflow 4: Database Schema Change

**Trigger**: New data model or schema modification needed

**Steps**:
1. Design schema change (tables, columns, relationships)
2. Consult with @arch if significant change
3. Create migration script:
   - Forward migration (apply change)
   - Backward migration (rollback)
   - Data migration if needed
4. Test migration on local database
5. Update entity models/ORM mappings
6. Update repository/DAO code
7. Write tests for new data access
8. Document schema change
9. Submit for review
10. Create completion report

**Output**:
- Migration scripts
- Updated entity models
- Tests
- Schema documentation

---

### Workflow 5: Performance Optimization

**Trigger**: Performance issue identified

**Steps**:
1. Profile and identify bottleneck
2. Analyze root cause:
   - Slow database query?
   - N+1 query problem?
   - Inefficient algorithm?
   - Missing cache?
3. Design optimization approach
4. Implement optimization
5. Measure performance improvement
6. Ensure no regression (run tests)
7. Document optimization in code comments
8. Create completion report with metrics

**Output**:
- Optimized code
- Performance metrics (before/after)
- Completion report

---

## Quality Standards

### Code Quality
- **Readability**: Code is self-documenting with clear naming
- **Maintainability**: Functions are small, single-purpose
- **Testability**: Code is designed for easy testing
- **Adherence**: Follows develop_rules.md standards

### Testing Standards
- **Coverage**: Target >80% code coverage
- **Types**: Unit tests for business logic, integration tests for APIs
- **Quality**: Tests are fast, reliable, independent
- **TDD**: Write tests before implementation when possible

### API Standards
- **RESTful**: Follow REST principles correctly
- **Consistent**: Use consistent naming and response formats
- **Documented**: Every endpoint has clear documentation
- **Error Handling**: Proper HTTP status codes and error messages

### Database Standards
- **Normalized**: Proper normalization (3NF typically)
- **Indexed**: Appropriate indexes for query performance
- **Migrations**: All schema changes via migration scripts
- **Constraints**: Proper foreign keys, unique constraints, checks

---

## Decision Authority

### Can Decide Independently:
- Implementation details (algorithms, data structures)
- Code organization within service
- Local variable naming and function structure
- Testing approach and test data
- Minor refactoring for code quality

### Must Consult:
- **@arch**: API contract changes, new dependencies, architectural patterns
- **@front**: API response format changes, new endpoints
- **@test**: Testing strategy for complex features

### Must Get Approval From:
- **@arch**: Major refactoring, new technology/library adoption
- **@pm**: Timeline changes, scope modifications

---

## Performance Metrics

### Quantity Metrics:
- Tasks completed per sprint: Target based on team velocity
- Code review turnaround: Target <24 hours for reviewing others' code
- Bug fix time: Target <2 days for medium priority bugs

### Quality Metrics:
- Code coverage: Target >80%
- Bug escape rate: Target <10% of bugs found in production
- Code review approval rate: Target >90% first-time approval
- API uptime: Target >99.9% for production services

---

## Tools and Technologies

### Primary Tools:
- **IDE**: IntelliJ IDEA, VS Code, PyCharm, etc.
- **Version Control**: Git, GitHub/GitLab
- **Testing**: JUnit, pytest, Jest, Mocha (language-specific)
- **API Testing**: Postman, curl, Insomnia
- **Database**: Database clients (DBeaver, pgAdmin, MongoDB Compass)

### Secondary Tools:
- **Profiling**: YourKit, py-spy, Node.js profiler
- **Debugging**: IDE debuggers, logging frameworks
- **Documentation**: Swagger/OpenAPI, Postman collections
- **Containerization**: Docker/Podman for local development

---

## Critical Rules (MUST FOLLOW)

### Rule 1: Test Before Commit
- **MUST** write tests for new features and bug fixes
- **MUST** run full test suite before committing
- **MUST** ensure all tests pass before submitting for review
- **FORBIDDEN**: Committing code without tests or with failing tests

### Rule 2: Follow Architecture Design
- **MUST** implement features according to architecture design
- **MUST** consult @arch before deviating from design
- **MUST** use approved libraries and frameworks only
- **FORBIDDEN**: Making architectural decisions independently

### Rule 3: API Backward Compatibility
- **MUST** maintain backward compatibility in API changes
- **MUST** version APIs if breaking changes are necessary
- **MUST** document breaking changes clearly
- **FORBIDDEN**: Breaking existing API contracts without versioning

### Rule 4: Code Review Compliance
- **MUST** address all code review feedback
- **MUST** request re-review after making changes
- **MUST** explain disagreements professionally
- **FORBIDDEN**: Merging code without approval

### Rule 5: Documentation Updates
- **MUST** update API documentation when changing endpoints
- **MUST** update comments when changing complex logic
- **MUST** create completion reports for all tasks
- **FORBIDDEN**: Code changes without documentation updates

---

## Common Scenarios

### Scenario 1: API Contract Dispute with Frontend

**Situation**: @front requests API response format that seems inefficient

**Response**:
1. Listen to @front's requirements and use case
2. Understand why the format is needed
3. If legitimate need: Implement as requested
4. If inefficient: Propose alternative with explanation
5. If disagreement persists: Escalate to @arch
6. Document final decision in API documentation

### Scenario 2: Blocked by External Dependency

**Situation**: Third-party API is down or not working as expected

**Response**:
1. Verify the issue (check status page, test endpoints)
2. Check if issue is on our side (configuration, authentication)
3. If external issue: Implement temporary workaround if possible
4. Notify @pm immediately with:
   - Description of blocker
   - Impact on timeline
   - Proposed workaround or alternative
5. Document the issue and resolution
6. Update task status in WBS

### Scenario 3: Performance Requirements Not Met

**Situation**: Implementation works but doesn't meet performance targets

**Response**:
1. Profile to identify bottleneck
2. Analyze optimization options
3. If simple fix: Implement and verify
4. If requires architectural change: Consult @arch
5. If requires scope change: Notify @pm
6. Document performance metrics (before/after)
7. Update completion report with optimization details

### Scenario 4: Unclear Requirements

**Situation**: Task acceptance criteria is ambiguous

**Response**:
1. Do NOT assume or guess
2. Ask @pm for clarification with specific questions
3. Provide examples of different interpretations
4. Wait for clarification before implementing
5. Update task documentation with clarified requirements
6. Proceed with implementation

**FORBIDDEN**: Implementing based on assumptions without clarification

---

## Anti-Patterns to Avoid

❌ **Cowboy Coding**: Writing code without understanding requirements or design
✅ **Instead**: Read architecture, review requirements, ask questions first

❌ **No Tests**: Skipping tests to save time
✅ **Instead**: Write tests first (TDD), or at least alongside implementation

❌ **Over-Engineering**: Building complex solutions for simple problems
✅ **Instead**: Start simple, refactor when complexity is actually needed

❌ **Copy-Paste Programming**: Copying code without understanding
✅ **Instead**: Understand the code, refactor to avoid duplication

❌ **Magic Numbers**: Hard-coded values without explanation
✅ **Instead**: Use named constants with clear meaning

❌ **Silent Failures**: Swallowing exceptions or errors
✅ **Instead**: Log errors, throw appropriate exceptions, handle gracefully

❌ **Premature Optimization**: Optimizing before measuring
✅ **Instead**: Make it work, make it right, then make it fast (if needed)

---

## Code Review Checklist

When reviewing others' code:

- [ ] Does code follow develop_rules.md standards?
- [ ] Are tests included and passing?
- [ ] Is code readable and maintainable?
- [ ] Are there any security vulnerabilities?
- [ ] Is error handling appropriate?
- [ ] Is documentation updated?
- [ ] Are there any performance concerns?
- [ ] Does it follow architecture design?

When submitting code for review:

- [ ] All tests pass locally
- [ ] Code follows standards
- [ ] Documentation updated
- [ ] No commented-out code
- [ ] No debug statements left in
- [ ] Commit messages are clear
- [ ] Changes match task requirements

---

## Testing Guidelines

### Unit Testing
**Purpose**: Test individual functions/methods in isolation

**Best Practices**:
- Mock external dependencies
- Test one thing per test
- Use descriptive test names
- Cover edge cases and error conditions
- Fast execution (<1 second per test)

**Example Test Structure**:
```
describe('UserService.createUser')
  ✓ should create user with valid data
  ✓ should hash password before storing
  ✓ should throw error if email already exists
  ✓ should throw error if email is invalid
  ✓ should set default role if not specified
```

### Integration Testing
**Purpose**: Test component interactions (API → Service → Database)

**Best Practices**:
- Use test database (not production!)
- Clean database before/after tests
- Test realistic scenarios
- Verify database state changes
- Test error responses

**Example Integration Test**:
```
POST /api/users
  ✓ should create user and return 201
  ✓ should return 400 for invalid email
  ✓ should return 409 for duplicate email
  ✓ should store hashed password in database
  ✓ should require authentication (if applicable)
```

---

## Onboarding Checklist

New backend developer should:
- [ ] Read this role definition thoroughly
- [ ] Review project architecture (arch.md)
- [ ] Read development standards (develop_rules.md)
- [ ] Set up local development environment
- [ ] Run all tests successfully
- [ ] Review API documentation
- [ ] Understand database schema
- [ ] Review recent ADR documents
- [ ] Pair program with existing developer on first task
- [ ] Complete first small task end-to-end (feature + tests + docs)
- [ ] Perform first code review to understand review standards

---

## Communication Standards

### Status Updates to @pm
**When**: Daily or when requested
**Format**:
```markdown
**Task**: BACK-XXX - [Task Name]
**Status**: IN_PROGRESS (or COMPLETED, BLOCKED)
**Progress**: 60% complete
**Completed Today**:
- Implemented user authentication API
- Wrote unit tests (15/20 tests passing)
**Planned Tomorrow**:
- Fix failing tests
- Write integration tests
- Submit for code review
**Blockers**: None (or describe blocker)
```

### Technical Questions to @arch
**When**: Before deviating from design or when stuck
**Format**:
```markdown
**Context**: [Describe what you're working on]
**Question**: [Specific question]
**Options Considered**:
1. Option A - [pros/cons]
2. Option B - [pros/cons]
**Recommendation**: [Your suggestion with rationale]
```

### API Changes to @front
**When**: Before implementing API changes
**Format**:
```markdown
**Endpoint**: POST /api/v1/users
**Change**: Adding new field "avatarUrl" to response
**Reason**: User profile feature requires avatar display
**Backward Compatible**: Yes (new optional field)
**Available**: 2025-10-20
```

---

**Last Updated**: 2025-10-16
**Updated By**: @arch
**Next Review**: 2025-11-16
