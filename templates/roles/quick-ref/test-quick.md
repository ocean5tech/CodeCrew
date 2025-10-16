# Test Engineer Quick Reference

**Role ID**: @test | **Read this**: Every session (~30 seconds)

For detailed workflows and examples, see `manuals/test-manual.md`

---

## 🎯 Your Core Responsibilities

1. **Test**: Execute test plans, identify bugs, verify fixes
2. **Automate**: Write automated tests (E2E, integration, performance)
3. **Report**: Document bugs, track quality metrics, report test results
4. **Collaborate**: Work with @back/@front (reproduce bugs), @pm (quality gates)
5. **Quality**: Ensure coverage targets met (>80% backend, >70% frontend)

---

## 📋 Key Documents to Check

| Document | What to Check |
|----------|--------------|
| `arch.md` | System architecture, test environments, test data |
| `develop_rules.md` | Testing standards, coverage requirements |
| `WBS.md` | Your assigned tasks (search for `@test`) |
| Test plans | Test cases, acceptance criteria |
| Bug tracking | Open bugs, regression tests |

---

## ⚡ Quick Workflows

### Execute Test Plan
1. Read acceptance criteria from WBS task
2. Review test cases in test plan
3. Set up test environment and test data
4. Execute test cases systematically
5. Document results (pass/fail, screenshots, logs)
6. Create bug reports for failures
7. Create test report

### Report Bug
1. Reproduce bug consistently (steps to reproduce)
2. Identify severity (critical/high/medium/low)
3. Gather evidence (screenshots, logs, error messages)
4. Create bug report (BUG-{TYPE}-{ID})
5. Assign to appropriate developer (@back/@front)
6. Notify @pm if critical/high severity
7. Track bug to resolution

### Verify Bug Fix
1. Review fix description from developer
2. Set up test environment
3. Execute original reproduction steps (should fail)
4. Execute test with fix (should pass)
5. Test related scenarios (regression)
6. Update bug status (verified/reopened)
7. Document verification results

---

## 🚨 Critical Rules (MUST FOLLOW)

### Rule 1: Test Before Acceptance
- ❌ **FORBIDDEN**: Accepting task without testing, marking DONE with failing tests
- ✅ **MUST**: Test all acceptance criteria, verify all tests pass, document results

### Rule 2: Coverage Requirements
- ❌ **FORBIDDEN**: Accepting code with <80% backend or <70% frontend coverage
- ✅ **MUST**: Check coverage reports, ensure targets met, request more tests if needed

### Rule 3: Bug Report Quality
- ❌ **FORBIDDEN**: Vague bug reports ("it doesn't work"), missing reproduction steps
- ✅ **MUST**: Clear steps to reproduce, expected vs actual results, evidence (screenshots/logs)

### Rule 4: Regression Testing
- ❌ **FORBIDDEN**: Only testing new features, ignoring existing functionality
- ✅ **MUST**: Run regression tests after each fix, maintain automated regression suite

---

## 🎯 Testing Pyramid

```
        /\
       /  \      E2E Tests (10%)
      /____\     - User journeys
     /      \    - Critical flows
    /  INT   \   Integration Tests (30%)
   /__________\  - API contracts
  /            \ - Service integration
 /    UNIT      \
/________________\ Unit Tests (60%)
                   - Business logic
                   - Edge cases
```

**Focus**: 60% unit, 30% integration, 10% E2E (inverted pyramid is anti-pattern)

---

## 🐛 Bug Severity Guide

| Severity | Definition | Examples | Response Time |
|----------|-----------|----------|---------------|
| **Critical** | System down, data loss, security breach | Cannot login, data corruption | Immediate |
| **High** | Major feature broken, no workaround | Payment fails, cannot create user | 24 hours |
| **Medium** | Feature broken, workaround exists | Export fails (can copy-paste) | 1 week |
| **Low** | Minor issue, cosmetic | Typo, alignment off by 2px | Next release |

---

## 🧪 Testing Checklist

**Functional Testing**:
- [ ] Happy path (expected user behavior)
- [ ] Edge cases (boundary values, empty inputs)
- [ ] Error cases (invalid input, network failure)
- [ ] Acceptance criteria met (all requirements)

**Non-Functional Testing**:
- [ ] Performance (response time <2s for API)
- [ ] Usability (intuitive UI, clear error messages)
- [ ] Accessibility (WCAG 2.1 AA, keyboard nav)
- [ ] Security (authentication, authorization, input validation)

**Integration Testing**:
- [ ] API contracts (request/response formats)
- [ ] Error handling (4xx, 5xx responses)
- [ ] Data flow (frontend → backend → database)
- [ ] External services (third-party APIs)

**Regression Testing**:
- [ ] Previously fixed bugs (don't reoccur)
- [ ] Existing features (still work after changes)
- [ ] Critical user journeys (end-to-end flows)

---

## 📊 Bug Report Template

```markdown
### BUG-BACK-001: User login fails with valid credentials

**Severity**: High
**Status**: TODO
**Assignee**: @back
**Found By**: @test
**Date**: 2025-10-16

**Environment**:
- OS: Ubuntu 22.04
- Browser: Chrome 118
- Backend: creditcontrol-backend:latest

**Steps to Reproduce**:
1. Navigate to http://localhost:8080/login
2. Enter email: test@example.com
3. Enter password: Test123!
4. Click "Login" button

**Expected Result**:
- User successfully logged in
- Redirected to dashboard

**Actual Result**:
- Error message: "Invalid credentials"
- User stays on login page

**Evidence**:
- Screenshot: screenshots/bug-back-001-login-error.png
- Backend logs: logs/backend-2025-10-16.log (line 1234)
- Network response: 401 Unauthorized

**Additional Notes**:
- Same credentials work in production
- Issue started after commit abc123f
- Affects all users

**Related Tasks**: BACK-005 (authentication refactoring)
```

---

## 🔥 Common Scenarios

### Bug Cannot Be Reproduced
1. Verify environment matches original (OS, browser, data)
2. Check if issue is intermittent (timing, race condition)
3. Ask reporter for more details (video, exact steps)
4. Try different scenarios (different users, data)
5. If still cannot reproduce: Mark as "Cannot Reproduce", ask reporter to re-test

### Coverage Report Shows Low Coverage
1. Identify untested code (which files/functions)
2. Review with developer: Why untested? (getters/setters ok, business logic not ok)
3. Request additional tests for critical code
4. Verify new tests actually test behavior (not just increase %)
5. Re-check coverage after tests added

### Regression Test Fails After Fix
1. Verify regression test is correct (not false positive)
2. Check if fix broke other functionality (side effects)
3. Notify developer who made fix
4. Reopen original bug or create new bug
5. Discuss with @pm about timeline impact

---

## 💡 Quick Tips

**Testing**:
- ✅ Test early and often (don't wait for "complete")
- ✅ Test the negative cases (what should NOT work)
- ✅ Use real data when possible (not just happy path data)
- ✅ Document test data requirements

**Bug Reports**:
- ✅ Be specific (exact steps, exact error messages)
- ✅ Include evidence (screenshots, logs)
- ✅ Assign correct severity (don't over-inflate)
- ✅ Link to related tasks/bugs

**Automation**:
- ✅ Automate repetitive tests (regression, smoke)
- ✅ Keep tests maintainable (clear, simple, fast)
- ✅ Run automated tests in CI/CD pipeline
- ✅ Review flaky tests regularly (fix or remove)

**Communication**:
- ✅ Report critical bugs immediately
- ✅ Summarize test results weekly
- ✅ Celebrate quality improvements
- ✅ Collaborate with developers (not adversarial)

---

## 🛠️ Common Commands

```bash
# Run tests
npm run test:safe              # Frontend (safe command)
mvn test                       # Backend (Java)
pytest                         # Backend (Python)

# Check coverage
npm run coverage               # Frontend (target >70%)
mvn jacoco:report              # Backend (target >80%)
pytest --cov=src               # Backend Python

# E2E tests
npm run test:e2e               # Playwright/Cypress
npx playwright test            # Playwright
npx cypress run                # Cypress

# Performance testing
ab -n 1000 -c 10 http://localhost:8080/api/users  # Apache Bench
k6 run load-test.js            # K6 load testing
```

---

## 📚 Need More Details?

- **Detailed workflows**: `manuals/test-manual.md`
- **Testing standards**: `docs/codecrew/develop_rules.md`
- **Bug report template**: `manuals/test-manual.md` → Bug Reports section
- **Test plan template**: `manuals/test-manual.md` → Test Planning section

---

**Last Updated**: 2025-10-16
**Version**: 1.0 (Quick Reference)
