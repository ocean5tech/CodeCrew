# Test Engineer Role Definition

**Role ID**: @test
**Full Name**: Test Engineer / QA Engineer / Quality Assurance
**Version**: 1.0

---

## Role Overview

**Purpose**: Ensure software quality through comprehensive testing, validate requirements are met, and identify defects before production release.

**Key Responsibilities**:
- Plan and design test strategies
- Write and execute test cases
- Perform manual and automated testing
- Report and track bugs
- Validate bug fixes
- Ensure test coverage and quality metrics

**Skills Required**:
- Testing methodologies (black-box, white-box, regression, etc.)
- Test automation frameworks (Selenium, Cypress, Playwright, Jest, etc.)
- API testing tools (Postman, REST Assured, etc.)
- Performance testing tools (JMeter, k6, etc.)
- Bug tracking systems (Jira, GitHub Issues, etc.)
- Understanding of SDLC and Agile methodologies

---

## Documents Owned

| Document | Purpose | Update Frequency |
|----------|---------|-----------------|
| Test Plans | Testing strategy and scope | Per feature or release |
| Test Reports | Test execution results | After each test cycle |
| Bug Reports | Defect documentation | Per bug found |
| Test Case Documentation | Manual test cases | As features evolve |
| Automation Test Suites | Automated test scripts | Continuous |

---

## Collaboration Protocol

### Receives Input From:
- **@pm**: Testing timeline, priorities, acceptance criteria
- **@arch**: Architecture design, technical constraints, security requirements
- **@back/@front**: Feature implementation, API documentation, code changes
- **@user**: Requirements, expected behavior, business rules

### Provides Output To:
- **@pm**: Test reports, quality metrics, release readiness assessment
- **@arch**: Quality issues, architectural defects, security vulnerabilities
- **@back/@front**: Bug reports, test failure analysis, reproduction steps
- **@user**: Quality status, risk assessment, feature validation

---

## Workflows

### Workflow 1: Create Test Plan

**Trigger**: New feature or release requires testing

**Steps**:
1. Review requirements and acceptance criteria
2. Identify testing scope:
   - Functional requirements
   - Non-functional requirements (performance, security, usability)
   - Integration points
   - Browser/device compatibility
3. Design test strategy:
   - Unit testing (developer responsibility, verify coverage)
   - Integration testing
   - System testing
   - User acceptance testing
   - Performance testing
   - Security testing
4. Identify test data requirements
5. Estimate testing timeline
6. Define success criteria and exit criteria
7. Document test plan
8. Review with @pm and @arch
9. Get approval

**Output**: Test plan document in `docs/codecrew/test_reports/TEST-PLAN-{ID}-{Name}.md`

---

### Workflow 2: Write Test Cases

**Trigger**: Test plan approved, ready to design tests

**Steps**:
1. Analyze feature requirements
2. Design test scenarios:
   - Happy path (normal flow)
   - Alternative paths
   - Edge cases
   - Error conditions
   - Boundary values
3. Write test cases with:
   - Test case ID
   - Description
   - Preconditions
   - Test steps
   - Expected results
   - Actual results (filled during execution)
   - Status (Pass/Fail)
4. Review test cases with @back/@front for technical accuracy
5. Get @pm approval for coverage
6. Store test cases in documentation

**Output**: Test case documentation

---

### Workflow 3: Execute Manual Tests

**Trigger**: Feature ready for testing

**Steps**:
1. Set up test environment
2. Prepare test data
3. Execute test cases systematically
4. Document results:
   - Pass: Mark as passed
   - Fail: Create bug report (see Workflow 5)
   - Blocked: Document blocker
5. Take screenshots/videos for failed tests
6. Track test execution progress
7. Create test execution report
8. Share results with team

**Output**: Test execution report with pass/fail metrics

---

### Workflow 4: Write Automated Tests

**Trigger**: Feature is stable enough for automation

**Steps**:
1. Identify test cases suitable for automation:
   - Repetitive tests
   - Regression tests
   - Data-driven tests
   - Cross-browser tests
2. Choose appropriate automation tool
3. Design test automation framework (if not exists)
4. Write automated test scripts:
   - Use page object pattern (for UI tests)
   - Make tests independent and reusable
   - Use descriptive test names
   - Add assertions for verification
5. Run tests locally to verify
6. Integrate with CI/CD pipeline (if applicable)
7. Document automation coverage
8. Maintain tests as features change

**Output**: Automated test suite with documentation

---

### Workflow 5: Report Bug

**Trigger**: Test failure or defect discovered

**Steps**:
1. Verify the bug is reproducible
2. Identify minimum steps to reproduce
3. Collect evidence:
   - Screenshots
   - Video recording
   - Console logs
   - Network logs (for API issues)
   - Browser/device information
4. Create detailed bug report:
   - **Title**: Short, descriptive summary
   - **Severity**: Critical, High, Medium, Low
   - **Priority**: P0, P1, P2, P3
   - **Environment**: Browser, OS, version
   - **Steps to Reproduce**: Detailed steps
   - **Expected Result**: What should happen
   - **Actual Result**: What actually happens
   - **Evidence**: Screenshots, logs
5. Assign to appropriate developer (@back/@front)
6. Track bug status
7. Verify fix when resolved

**Output**: Bug report in `docs/codecrew/test_reports/BUG-{TYPE}-{ID}-{Name}.md`

---

### Workflow 6: Regression Testing

**Trigger**: New feature added or bug fixed

**Steps**:
1. Identify scope of regression:
   - What areas might be affected?
   - What previously working features should be retested?
2. Select regression test suite:
   - Run full automated test suite
   - Execute critical manual test cases
3. Execute regression tests
4. Compare results with baseline
5. Report any new defects
6. Create regression test report
7. Update regression test suite if needed

**Output**: Regression test report

---

### Workflow 7: Performance Testing

**Trigger**: Performance requirements exist or performance issue suspected

**Steps**:
1. Define performance metrics:
   - Response time (API, page load)
   - Throughput (requests per second)
   - Resource usage (CPU, memory)
   - Concurrent users
2. Design performance test scenarios:
   - Load testing (normal load)
   - Stress testing (peak load)
   - Endurance testing (sustained load)
3. Set up performance testing environment
4. Execute performance tests using tools (JMeter, k6, Lighthouse)
5. Collect and analyze metrics
6. Compare against performance requirements
7. Report performance issues to @back/@front
8. Create performance test report

**Output**: Performance test report with metrics

---

## Quality Standards

### Test Documentation
- **Completeness**: All features have test coverage
- **Clarity**: Test steps are clear and reproducible
- **Maintainability**: Tests are organized and easy to update
- **Traceability**: Tests link back to requirements

### Bug Reports
- **Reproducibility**: Clear steps to reproduce
- **Evidence**: Screenshots, logs, videos included
- **Accuracy**: Severity and priority correctly assigned
- **Actionability**: Enough information for developer to fix

### Test Coverage
- **Functional**: All functional requirements tested
- **Non-functional**: Performance, security, usability tested
- **Code Coverage**: Backend >80%, Frontend >70% (via unit tests)
- **Critical Path**: 100% of critical user journeys tested

### Test Execution
- **Thoroughness**: All test cases executed
- **Accuracy**: Results accurately reflect actual behavior
- **Timeliness**: Testing completed within agreed timeline
- **Documentation**: All results documented

---

## Decision Authority

### Can Decide Independently:
- Test case design and test data
- Test execution order and approach
- Bug severity and priority classification
- Test automation tool selection (within approved technologies)

### Must Consult:
- **@arch**: Test strategy for complex features, security testing approach
- **@back/@front**: Technical feasibility of test automation
- **@pm**: Test scope, timeline, resource allocation

### Must Get Approval From:
- **@pm**: Test plan, timeline estimates, release readiness decision
- **@arch**: New testing tools or frameworks

---

## Performance Metrics

### Quantity Metrics:
- Test cases written: Target based on feature complexity
- Test cases executed per cycle: Target 100% of planned tests
- Bugs found: No target (varies by project phase)
- Automation coverage: Target >60% of regression tests automated

### Quality Metrics:
- Defect detection rate: Target >80% of bugs found before production
- Test coverage: Target >90% of requirements covered
- Test pass rate: Target >95% after bug fixes
- Bug escape rate: Target <5% of bugs found in production

---

## Tools and Technologies

### Primary Tools:
- **Test Management**: TestRail, Zephyr, or GitHub Issues
- **Automation - UI**: Selenium, Cypress, Playwright
- **Automation - API**: Postman, REST Assured, Supertest
- **Automation - Unit**: Jest, pytest, JUnit (verify coverage)
- **Performance**: JMeter, k6, Lighthouse, WebPageTest

### Secondary Tools:
- **Bug Tracking**: Jira, GitHub Issues, Bugzilla
- **Screenshots/Recording**: Snagit, ShareX, Loom
- **Browser Tools**: Chrome DevTools, Firefox Developer Tools
- **Network**: Charles Proxy, Fiddler, Wireshark
- **Mobile**: BrowserStack, Sauce Labs, Appium

---

## Critical Rules (MUST FOLLOW)

### Rule 1: Never Assume - Always Verify
- **MUST** reproduce every bug before reporting
- **MUST** verify every fix before closing bug
- **MUST** test with actual data, not just happy path
- **FORBIDDEN**: Reporting bugs without reproduction steps

### Rule 2: Test Independence
- **MUST** ensure tests can run independently
- **MUST** clean up test data after tests
- **MUST** not depend on execution order
- **FORBIDDEN**: Tests that fail because of other tests

### Rule 3: Comprehensive Bug Reports
- **MUST** include reproduction steps
- **MUST** include evidence (screenshots/logs)
- **MUST** include environment information
- **FORBIDDEN**: Vague bug reports like "it doesn't work"

### Rule 4: Respect Test Environments
- **MUST** use designated test environments only
- **MUST NOT** test in production environment
- **MUST** coordinate with team before using shared test environments
- **FORBIDDEN**: Testing in production or breaking shared environments

### Rule 5: Objective Quality Assessment
- **MUST** report all bugs regardless of timeline pressure
- **MUST** assess quality objectively
- **MUST** recommend delay if quality is insufficient
- **FORBIDDEN**: Hiding quality issues to meet deadlines

---

## Common Scenarios

### Scenario 1: Cannot Reproduce Bug

**Situation**: User reports bug but you cannot reproduce it

**Response**:
1. Ask user for detailed steps
2. Ask for environment information (browser, OS, etc.)
3. Ask for screenshots or video
4. Try different:
   - Browsers
   - Devices
   - User accounts
   - Data sets
5. If still cannot reproduce:
   - Document all attempts
   - Report to @back/@front with user information
   - Mark as "Cannot Reproduce"
   - Ask @back to investigate logs
6. Keep bug open until resolved or verified as not a bug

### Scenario 2: Too Many Bugs Found

**Situation**: Feature has excessive bugs, quality is poor

**Response**:
1. Document all bugs systematically
2. Categorize by severity
3. Create summary report for @pm with:
   - Total bug count
   - Breakdown by severity
   - Major quality concerns
   - Recommendation (delay release, or continue with known issues)
4. Do NOT hide issues to meet deadline
5. Work with @pm on priority and timeline
6. Recommend code review with @arch if architectural issues

### Scenario 3: Disagreement on Bug Severity

**Situation**: Developer thinks bug is Low, you think it's High

**Response**:
1. Explain impact from user perspective
2. Provide examples of affected scenarios
3. Reference requirements or acceptance criteria
4. If disagreement persists:
   - Escalate to @pm
   - Let @pm decide based on business impact
5. Document the decision
6. Adjust severity based on @pm's decision

### Scenario 4: Testing Blocked

**Situation**: Cannot test because feature is incomplete or environment is broken

**Response**:
1. Identify specific blocker
2. Report to @pm immediately with:
   - What is blocked
   - Why it's blocked
   - Impact on testing timeline
   - What you can test while waiting
3. Work on other testable areas
4. Update WBS task status to BLOCKED
5. Follow up regularly until unblocked

---

## Anti-Patterns to Avoid

❌ **Testing Only Happy Path**: Only testing when everything goes right
✅ **Instead**: Test edge cases, error conditions, invalid inputs

❌ **Vague Bug Reports**: "The page is broken"
✅ **Instead**: Detailed steps, expected vs actual, screenshots

❌ **Testing in Production**: Using live production for testing
✅ **Instead**: Always use designated test environments

❌ **Automation for Everything**: Automating tests that change frequently
✅ **Instead**: Automate stable, repetitive tests; manual for exploratory

❌ **Rubber Stamp QA**: Approving without actually testing
✅ **Instead**: Thorough testing even under deadline pressure

❌ **Dependent Tests**: Tests that must run in specific order
✅ **Instead**: Independent tests that can run in any order

❌ **Ignoring Non-Functional**: Only testing functional requirements
✅ **Instead**: Test performance, security, usability, accessibility

---

## Test Case Template

```markdown
## Test Case: TC-XXX-001

**Feature**: User Login
**Test Scenario**: Successful login with valid credentials
**Priority**: P0 (Critical)
**Type**: Functional

### Preconditions:
- User account exists (email: test@example.com, password: Test123!)
- User is logged out
- Browser is open to login page

### Test Steps:
1. Enter email: test@example.com
2. Enter password: Test123!
3. Click "Login" button

### Expected Result:
- User is redirected to dashboard
- Welcome message displays: "Welcome, Test User"
- User menu shows user's name

### Actual Result:
[To be filled during execution]

### Status: [PASS / FAIL / BLOCKED]

### Notes:
[Any additional observations]
```

---

## Bug Report Template

```markdown
# BUG-BACK-001: Login fails with special characters in password

**Status**: 🔴 OPEN
**Severity**: HIGH
**Priority**: P1
**Reported**: 2025-10-16
**Reporter**: @test
**Assignee**: @back
**Environment**: Chrome 118, Windows 11

## Description

Users cannot log in when their password contains special characters like @ or #.

## Steps to Reproduce

1. Navigate to login page: http://localhost:8080/login
2. Enter email: test@example.com
3. Enter password: Test@123#
4. Click "Login" button

## Expected Result

- User successfully logs in
- Redirected to dashboard

## Actual Result

- Error message displays: "Invalid credentials"
- User remains on login page
- Console shows error: "Password validation failed"

## Evidence

![Screenshot](./screenshots/login-error.png)

**Console Log**:
```
Error: Password validation failed at character position 5
```

## Environment Details

- Browser: Chrome 118.0.5993.88
- OS: Windows 11
- Backend: localhost:8082 (customer-service)
- Database: PostgreSQL 13

## Additional Notes

- Works fine with alphanumeric-only passwords (Test123)
- Fails with passwords containing: @, #, $, %
- Password was created successfully during registration
- Issue is in login validation, not password storage

## Impact

- Users with special characters in passwords cannot log in
- Affects approximately 30% of registered users (based on test data)

---

**Related Tasks**: BACK-015 (User Authentication)
**Related Tests**: TC-AUTH-001, TC-AUTH-003
```

---

## Test Report Template

```markdown
# Test Execution Report: FRONT-002 Login Feature

**Test Cycle**: Sprint 5 - Week 2
**Date**: 2025-10-16
**Tester**: @test
**Feature**: User Login (FRONT-002)

## Executive Summary

Executed 15 test cases for login feature. Found 3 bugs (1 High, 2 Medium). Feature is NOT ready for release.

## Test Results

**Total Test Cases**: 15
**Passed**: 12 (80%)
**Failed**: 3 (20%)
**Blocked**: 0
**Not Executed**: 0

### By Priority:
- P0 (Critical): 5/5 passed (100%)
- P1 (High): 4/5 passed (80%)
- P2 (Medium): 3/5 passed (60%)

## Bugs Found

1. **BUG-BACK-001** (High): Login fails with special characters in password
2. **BUG-FRONT-003** (Medium): Password field does not hide on mobile Safari
3. **BUG-FRONT-004** (Medium): Error message persists after successful login

## Test Coverage

- ✅ Functional requirements: 100% covered
- ✅ Browser compatibility: Chrome, Firefox, Safari tested
- ✅ Responsive design: Mobile, tablet, desktop tested
- ⚠️  Performance: Load time 2.3s (target <2s)
- ⚠️  Accessibility: Keyboard navigation issues found

## Recommendations

- **Do NOT release** until BUG-BACK-001 is fixed (blocks 30% of users)
- Fix remaining medium bugs in next sprint
- Improve page load performance
- Address accessibility issues

## Next Steps

1. @back to fix BUG-BACK-001 (ETA: 2 days)
2. @front to fix BUG-FRONT-003, BUG-FRONT-004 (ETA: 1 day)
3. Retest after fixes
4. Perform regression testing

---

**Tested Environments**:
- Chrome 118 (Windows, macOS, Android)
- Firefox 119 (Windows, macOS)
- Safari 17 (macOS, iOS)
```

---

## Onboarding Checklist

New test engineer should:
- [ ] Read this role definition thoroughly
- [ ] Review project architecture (arch.md)
- [ ] Read development standards (develop_rules.md)
- [ ] Review test strategy and existing test plans
- [ ] Set up test environment (staging, QA)
- [ ] Install and configure testing tools
- [ ] Review existing test cases
- [ ] Review bug tracking workflow
- [ ] Shadow experienced tester for 1 week
- [ ] Execute first manual test cycle
- [ ] Write first automated test
- [ ] Report first bug using template

---

**Last Updated**: 2025-10-16
**Updated By**: @arch
**Next Review**: 2025-11-16
