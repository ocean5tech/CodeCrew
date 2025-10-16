# 🚨 CRITICAL RULES - Must Follow

**These 6 rules are MANDATORY. Violation will break the project.**

Read this in every session (20 seconds). For detailed explanations, see `develop_rules.md`.

Last Updated: 2025-10-16

---

## Rule 1: Documentation First

**Purpose**: Prevent unauthorized changes and ensure all work is planned.

### ❌ FORBIDDEN
- Starting development before documenting the plan
- Making changes without updating documentation
- Using resources not documented in design docs

### ✅ MUST DO
1. Document the plan in design docs (arch.md, ADR, etc.)
2. Get approval from @pm or @user
3. Execute according to documentation
4. Update docs if implementation differs

### Quick Check
```
Before coding: "Is this documented and approved?"
After coding: "Did I update the docs?"
```

**Detailed explanation**: `develop_rules.md` Rule 1

---

## Rule 2: No Unauthorized Resource Usage

**Purpose**: Prevent conflicts, security issues, and unexpected costs.

### ❌ FORBIDDEN
- Using network ports without approval and documentation
- Installing software/packages without approval
- Using undocumented cloud resources
- Changing database schemas without documentation

### ✅ MUST DO
1. Document resource requirements (ports, packages, etc.)
2. Check availability (e.g., `lsof -i :8081`)
3. Request approval from @arch and @pm
4. Wait for confirmation
5. Use resource ONLY as documented

### Quick Check
```
Before using port/package: "Is it in arch.md?"
If NO: Stop, document, request approval, wait
If YES: Proceed
```

**Resources requiring approval**:
- Network ports (8080-8086, 5432, 6379, etc.)
- External APIs or services
- Third-party libraries or frameworks
- Software installations on host
- Database schemas and tables
- Container volumes and networks

**Detailed explanation**: `develop_rules.md` Rule 2

---

## Rule 3: Frontend Test Resource Management

**Purpose**: Prevent system crashes and CPU overload on low-memory systems.

### ❌ FORBIDDEN - Will Crash System!
```bash
npm test               # Uses all CPU cores, exhausts 6-8GB memory
vitest                 # Same problem - system freeze, CPU 100%
```

### ✅ MUST DO - Safe Testing
```bash
npm run test:safe              # Safe: 2 workers, timeouts set
npm run test:safe-verbose      # When debugging failures
```

### Required Configuration

**vite.config.ts or jest.config.js**:
```typescript
{
  test: {
    pool: 'threads',
    poolOptions: {
      threads: {
        maxThreads: 2,        // CRITICAL: Limit to 2 workers
        minThreads: 1,
      }
    },
    testTimeout: 30000,       // 30s timeout
  }
}
```

**package.json**:
```json
{
  "scripts": {
    "test:safe": "vitest --run --reporter=dot"
  }
}
```

### Quick Check
```
Before testing: "Am I using test:safe?"
If system has <16GB RAM: ALWAYS use test:safe
If system has ≥16GB RAM: Can use npm test, but test:safe recommended
```

### If You Forgot and System Crashed
```bash
# Force kill zombie processes
pkill -9 -f vitest

# Check memory before retrying
free -h

# Use safe command
npm run test:safe
```

**Consequences of violation**: System crash, lost work, hard reboot required

**Detailed explanation**: `develop_rules.md` Rule 3

---

## Rule 4: Test Before Commit

**Purpose**: Ensure code quality and prevent broken builds.

### ❌ FORBIDDEN
```bash
git commit -m "feat: new feature (tests TODO)"
git commit -m "fix: bug (will add tests later)"
# Committing with failing tests
```

### ✅ MUST DO
```bash
# 1. Write test first (TDD)
npm run test:safe -- MyComponent.test.js

# 2. Implement feature
# ... code ...

# 3. Run ALL tests (frontend: use test:safe!)
npm run test:safe

# 4. Check coverage
npm run coverage

# 5. Commit ONLY if all pass
git commit -m "feat: add user authentication"
```

### Quick Check
```
Before commit: "Did all tests pass?"
Before commit: "Is coverage ≥70% (frontend) or ≥80% (backend)?"
```

### Minimum Coverage Targets
- Backend: >80% code coverage
- Frontend: >70% code coverage
- Critical paths: 100% coverage

**Detailed explanation**: `develop_rules.md` Rule 4

---

## Rule 5: Code Review Required

**Purpose**: Maintain code quality and catch issues early.

### ❌ FORBIDDEN
- Pushing directly to main branch
- Merging own PR without review
- Ignoring review feedback
- Skipping code review "to save time"

### ✅ MUST DO
1. Create pull request with clear description
2. Link to WBS task (e.g., "Closes BACK-001")
3. Request review from @arch or designated reviewer
4. Address ALL review comments
5. Request re-review if changes made
6. Merge ONLY after approval

### Quick Check
```
Before merge: "Did @arch approve this PR?"
If NO: Wait for review
If YES: Proceed with merge
```

### For Project Managers (@pm)
- **MUST** schedule code review task (CR-XXX) after each module completion
- **MUST** verify @arch updated docs (arch.md, scripts) after review
- See `templates/roles/quick-ref/pm-quick.md` for details

**Detailed explanation**: `develop_rules.md` Rule 5

---

## Rule 6: Security First

**Purpose**: Protect user data and prevent security breaches.

### ❌ FORBIDDEN - Security Violations
```javascript
// 1. Hardcoded secrets
const apiKey = "sk_live_abc123xyz789";

// 2. SQL injection vulnerability
db.query(`SELECT * FROM users WHERE email = '${email}'`);

// 3. No input validation
const user = await createUser(req.body);

// 4. Committing secrets
git add .env
git commit -m "add config"
```

### ✅ MUST DO
```javascript
// 1. Use environment variables
const apiKey = process.env.API_KEY;

// 2. Parameterized queries
db.query('SELECT * FROM users WHERE email = ?', [email]);

// 3. Input validation
const schema = Joi.object({
  email: Joi.string().email().required(),
  password: Joi.string().min(8).required()
});

// 4. .gitignore secrets
echo ".env" >> .gitignore
```

### Quick Security Checklist
- [ ] No secrets in code or config files
- [ ] User input is validated and sanitized
- [ ] SQL injection prevented (parameterized queries)
- [ ] XSS prevention (output encoding)
- [ ] HTTPS used for all external communication
- [ ] Passwords hashed (bcrypt, argon2)

### Quick Check
```
Before commit: "Did I check for secrets?"
Before commit: "Is user input validated?"
```

**Detailed explanation**: `develop_rules.md` Rule 6

---

## 🎯 Quick Rule Summary

| Rule | One-Liner | Violates If... |
|------|-----------|----------------|
| 1. Documentation First | Document → Approve → Code → Update | You code before documenting |
| 2. No Unauthorized Resources | No ports/packages without approval | You use port not in arch.md |
| 3. Test Resource Management | Frontend: ALWAYS use `test:safe` | You use `npm test` and crash system |
| 4. Test Before Commit | All tests pass before commit | You commit with failing tests |
| 5. Code Review Required | No merge without @arch approval | You merge own PR |
| 6. Security First | No secrets in Git | You commit .env file |

---

## 🚨 If You Violated a Rule

### Immediate Actions

**Rule 1 or 2 violated (unauthorized change)**:
1. Stop development immediately
2. Document what you did and why
3. Request approval from @pm/@arch
4. Update design docs
5. Get confirmation before proceeding

**Rule 3 violated (system crashed)**:
1. `pkill -9 -f vitest` (kill zombie processes)
2. `free -h` (check memory)
3. Next time use `npm run test:safe`
4. Update vite.config.ts if not configured

**Rule 4 violated (committed without tests)**:
1. Write tests immediately
2. Ensure all pass
3. Amend commit: `git commit --amend`
4. Force push (if needed): `git push --force`

**Rule 5 violated (merged without review)**:
1. Notify @arch immediately
2. Create review task retroactively
3. Fix issues found in review
4. Don't repeat

**Rule 6 violated (committed secret)**:
1. **CRITICAL**: Remove secret from Git history
2. Rotate the secret immediately
3. Add to .gitignore
4. Re-commit without secret
5. Notify @arch about security incident

---

## 📚 Where to Find More Details

- **All rules explained**: `docs/codecrew/develop_rules.md`
- **Project constraints**: `docs/codecrew/project-context.md`
- **Your role specifics**: `templates/roles/quick-ref/{your-role}-quick.md`
- **Architecture decisions**: `docs/codecrew/arch.md` and `ADR-*.md` files

---

## 💡 Remember

> These rules exist because we learned them the hard way.
>
> Following them saves you from:
> - System crashes (Rule 3)
> - Deployment failures (Rule 1, 2)
> - Security breaches (Rule 6)
> - Broken builds (Rule 4)
> - Technical debt (Rule 5)

**When in doubt, ask @pm or @arch. Better safe than sorry!**

---

**Last Updated**: 2025-10-16 by @arch
**Version**: 1.0
**Next Review**: When rules are updated or new critical rules emerge
