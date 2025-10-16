# Getting Started with CodeCrew

**Time to Complete**: 15 minutes
**Level**: Beginner
**Prerequisites**: Git, basic command line knowledge

---

## What You'll Learn

- ✅ How to initialize a CodeCrew project
- ✅ Understanding the role system
- ✅ Creating your first task in WBS
- ✅ Using CodeCrew with Claude Code
- ✅ Documenting architecture decisions

---

## Step 1: Clone the Framework (2 minutes)

```bash
# Clone CodeCrew framework
git clone https://github.com/ocean5tech/CodeCrew.git

# Navigate to the framework
cd CodeCrew

# Check available scripts
ls scripts/
```

**You should see**:
- `init-project.sh` - Project initialization script
- `create-role.sh` - Create custom roles
- `create-task.sh` - Create new tasks
- `generate-report.sh` - Generate project reports

---

## Step 2: Initialize Your Project (5 minutes)

### Option A: Interactive Mode (Recommended for first-time users)

```bash
./scripts/init-project.sh --interactive
```

**The script will ask**:
- Project name: `My Awesome Project`
- Tech stack: Select from the list (or choose "Generic")

### Option B: Command Line Mode

```bash
./scripts/init-project.sh \
  --project-name "My Awesome Project" \
  --tech-stack java-spring-boot
```

### Option C: Core Framework Only

```bash
./scripts/init-project.sh \
  --project-name "My Project" \
  --core-only
```

**What gets created**:
```
your-project/
├── docs/codecrew/
│   ├── roles/              # Role definitions
│   ├── arch.md             # Architecture documentation
│   ├── develop_rules.md    # Development standards
│   ├── WBS.md              # Work breakdown structure
│   ├── completion_reports/ # Task completion reports
│   ├── test_reports/       # Test reports
│   └── code_reviews/       # Code review reports
├── README.md               # Project README
└── .gitignore              # Git ignore file
```

---

## Step 3: Understand the Role System (3 minutes)

CodeCrew defines 6 standard roles:

### 📐 @arch (Architect)
**Responsibilities**: Design architecture, make technical decisions, maintain standards

**Documents**: `arch.md`, `develop_rules.md`, ADR-* files

**When to use**:
```bash
# With Claude Code
/arch design database schema
/arch review architecture decisions
```

### 📊 @pm (Project Manager)
**Responsibilities**: Plan project, manage tasks, track progress, make project decisions

**Documents**: `WBS.md`, `PM-DECISION-*` files, status reports

**When to use**:
```bash
# With Claude Code
/pm create project plan
/pm review project status
/pm update WBS
```

### 💻 @back (Backend Developer)
**Responsibilities**: Implement backend services, APIs, business logic

**Documents**: Completion reports, code

**When to use**:
```bash
# With Claude Code
/back implement user authentication API
/back fix database connection issue
```

### 🎨 @front (Frontend Developer)
**Responsibilities**: Implement UI/UX, frontend logic, API integration

**Documents**: Completion reports, code

**When to use**:
```bash
# With Claude Code
/front build login page
/front fix CSS styling issue
```

### 🧪 @test (Test Engineer)
**Responsibilities**: Plan testing, write tests, validate quality, report bugs

**Documents**: Test reports, test plans

**When to use**:
```bash
# With Claude Code
/test create integration tests
/test validate user authentication flow
```

### 🔧 @devops (DevOps Engineer)
**Responsibilities**: CI/CD, deployment, infrastructure, monitoring

**Documents**: Deployment guides, infrastructure docs

**When to use**:
```bash
# With Claude Code
/devops setup CI/CD pipeline
/devops deploy to production
```

---

## Step 4: Create Your First Task (5 minutes)

### Manual Method

1. Open `docs/codecrew/WBS.md`
2. Add a new task under appropriate phase:

```markdown
### BACK-001: Implement User Authentication API
**Priority**: 🔴 CRITICAL
**Status**: 📋 TODO
**Assignee**: @back
**Estimated Time**: 4 hours
**Dependencies**: None

**Description**:
Create REST API endpoints for user authentication (login, logout, token refresh).

**Acceptance Criteria**:
- [ ] POST /api/auth/login endpoint implemented
- [ ] POST /api/auth/logout endpoint implemented
- [ ] POST /api/auth/refresh endpoint implemented
- [ ] JWT token generation working
- [ ] Password hashing with bcrypt
- [ ] Unit tests with >80% coverage

**Deliverables**:
- AuthController.java
- AuthService.java
- Unit tests
- API documentation
```

### Using Script (if available)

```bash
./scripts/create-task.sh \
  --id "BACK-001" \
  --title "Implement User Authentication API" \
  --assignee "@back" \
  --priority "CRITICAL"
```

---

## Step 5: Use CodeCrew with Claude Code (Advanced)

### Setting Up Roles

1. CodeCrew roles are designed to work with Claude Code's role system
2. You can switch roles using `/role` command:

```bash
# Switch to architect role
/arch

# Switch to backend developer role
/back

# Switch to project manager role
/pm
```

### Example Workflow

```bash
# As Project Manager: Create project plan
/pm create a project plan for user authentication feature

# As Architect: Design the solution
/arch design authentication architecture using JWT tokens

# As Backend Developer: Implement the feature
/back implement the authentication API based on architecture design

# As Test Engineer: Create tests
/test create integration tests for authentication API

# As Project Manager: Review completion
/pm verify all tasks are completed and documented
```

---

## Step 6: Document an Architecture Decision (Optional)

When making important technical decisions, create an ADR (Architecture Decision Record):

```bash
# Create file: docs/codecrew/ADR-001-Authentication-Strategy.md
```

```markdown
# ADR-001: Authentication Strategy

**Status**: ✅ ACCEPTED
**Date**: 2025-10-16
**Decision Maker**: @arch

## Context

Need to implement user authentication for the application. Options include:
- Session-based authentication
- JWT token-based authentication
- OAuth2

## Decision

Use JWT token-based authentication.

## Rationale

**Pros**:
- Stateless (no server-side session storage)
- Scalable (works well with microservices)
- Standard (widely supported libraries)

**Cons**:
- Token cannot be revoked easily (use short expiration)
- Larger payload than session ID

## Alternatives Considered

- **Session-based**: Rejected due to scalability concerns
- **OAuth2**: Too complex for current requirements

## Implementation

- Use `jsonwebtoken` library
- Access token expiration: 15 minutes
- Refresh token expiration: 7 days
- Store refresh tokens in database for revocation

## Consequences

- Need to implement token refresh logic
- Need to handle token expiration gracefully in frontend
- Will add token validation middleware to all protected routes
```

---

## Step 7: Complete a Task and Create Report

When you finish a task, create a completion report:

```bash
# Create file: docs/codecrew/completion_reports/BACK-001-Completion-Report.md
```

```markdown
# Task Completion Report: BACK-001

**Task**: Implement User Authentication API
**Assignee**: @back
**Status**: ✅ COMPLETED
**Completed**: 2025-10-16
**Time Spent**: 4.5 hours

## Deliverables

- [x] POST /api/auth/login endpoint implemented
- [x] POST /api/auth/logout endpoint implemented
- [x] POST /api/auth/refresh endpoint implemented
- [x] JWT token generation working
- [x] Password hashing with bcrypt
- [x] Unit tests with 85% coverage

## Files Changed

- `src/controllers/AuthController.java` (new)
- `src/services/AuthService.java` (new)
- `src/utils/JwtUtils.java` (new)
- `test/controllers/AuthControllerTest.java` (new)

## Test Results

- Unit tests: 15/15 passed
- Integration tests: 3/3 passed
- Coverage: 85% (above 80% target)

## Code Review

- Reviewed by: @arch
- Status: ✅ Approved
- Comments: Well-structured code, good error handling

## Notes

- Token expiration set to 15 minutes as per ADR-001
- Refresh token logic implemented and tested
- API documentation updated in Swagger

---

**Next Task**: FRONT-001 - Build login page UI
```

---

## Common Tasks

### View Project Status

```bash
# With Claude Code
/pm show project status

# Or manually
cat docs/codecrew/WBS.md | grep -E "(TODO|IN_PROGRESS|COMPLETED)"
```

### Review Architecture

```bash
# Read architecture documentation
cat docs/codecrew/arch.md

# With Claude Code
/arch explain current architecture
```

### Update Development Standards

```bash
# Edit standards
vim docs/codecrew/develop_rules.md

# With Claude Code
/arch add new coding standard for error handling
```

---

## Best Practices

### ✅ DO:
- Update WBS regularly (at least daily)
- Create ADRs for all major technical decisions
- Write completion reports when finishing tasks
- Keep architecture documentation current
- Follow the role system consistently

### ❌ DON'T:
- Mix role responsibilities (e.g., @back making architecture decisions)
- Skip documentation ("will document later" never happens)
- Create tasks without acceptance criteria
- Make technical decisions without documenting rationale
- Ignore the WBS and work ad-hoc

---

## Troubleshooting

### Issue: "Can't find templates"

**Solution**: Make sure you're in the correct directory:
```bash
cd path/to/your/project
ls docs/codecrew/  # Should show all template files
```

### Issue: "Scripts don't work"

**Solution**: Make scripts executable:
```bash
chmod +x scripts/*.sh
```

### Issue: "Claude Code doesn't recognize roles"

**Solution**: CodeCrew roles work as context setters. Use them like this:
```bash
# Set context by mentioning the role
"As @arch, design the database schema"
"Acting as @pm, create a project timeline"
```

---

## Next Steps

Now that you've completed the getting started guide:

1. **Read Role Definitions**: Explore `docs/codecrew/roles/` to understand each role in depth

2. **Explore Examples**: Check out `examples/` directory for complete project examples

3. **Customize**: Adapt the framework to your specific needs
   - Modify `develop_rules.md` for your coding standards
   - Update `arch.md` with your architecture
   - Add custom roles if needed

4. **Learn Advanced Features**:
   - [Decision Management](decision-management.md)
   - [Testing Strategy](testing-strategy.md)
   - [Customization Guide](customization.md)

5. **Join the Community**:
   - ⭐ Star the repo: [GitHub](https://github.com/ocean5tech/CodeCrew)
   - 💬 Ask questions: [Discussions](https://github.com/ocean5tech/CodeCrew/discussions)
   - 🐛 Report issues: [Issues](https://github.com/ocean5tech/CodeCrew/issues)

---

## Need Help?

- 📚 **Documentation**: [Full docs](../README.md)
- 💬 **Discussions**: [GitHub Discussions](https://github.com/ocean5tech/CodeCrew/discussions)
- 🐛 **Bug Reports**: [GitHub Issues](https://github.com/ocean5tech/CodeCrew/issues)
- 📧 **Email**: codecrew@ocean5.tech

---

**Congratulations!** You're now ready to use CodeCrew for your projects. 🎉

Happy coding! 🚀
