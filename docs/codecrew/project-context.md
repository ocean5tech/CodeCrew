# Project Context Snapshot

**Template for your actual project - Replace {placeholders} with real data**

Last Updated: {Date} by @pm
Current Sprint: {Sprint Number}
Current Phase: {Phase Name and Number}

---

## 🎯 Quick Status (Read This FIRST Every Session)

### What We're Doing NOW

**Current Focus**:
- {Current major feature or module being developed}
- {Current milestone or deadline}
- {Current priority tasks}

**Example**:
```
- Frontend Phase 3: Building credit module UI
- Backend Phase 3: Credit API ready, testing in progress
- Next milestone: Credit module demo (Oct 20, 2025)
```

---

### Active Tasks (from WBS.md)

**IN PROGRESS**:
- {TASK-ID}: {Task description} ({Assignee}, {Progress}% done)
- {TASK-ID}: {Task description} ({Assignee}, {Progress}% done)

**TODO (Next Up)**:
- {TASK-ID}: {Task description} ({Assignee}, Priority: {HIGH/MEDIUM/LOW})
- {TASK-ID}: {Task description} ({Assignee}, Priority: {HIGH/MEDIUM/LOW})

**Example**:
```
IN PROGRESS:
- FRONT-015: Credit limit form (IN_PROGRESS, @front, 60% done)
- TEST-008: Credit module integration tests (IN_PROGRESS, @test, 30% done)

TODO (Next Up):
- CR-FRONT-002: Code review credit components (TODO, @arch, Priority: HIGH)
- BACK-013: Payment processing API (TODO, @back, Priority: MEDIUM)
```

---

### Recent Completions (Last 7 Days)

- ✅ {TASK-ID}: {Task description} (completed {Date})
- ✅ {TASK-ID}: {Task description} (completed {Date})
- ✅ {TASK-ID}: {Task description} (completed {Date})

**Example**:
```
- ✅ FRONT-014: Credit dashboard UI (completed Oct 15)
- ✅ BACK-012: Credit limit API (completed Oct 14)
- ✅ CR-BACK-003: Code review auth module (completed Oct 13)
```

---

### Known Blockers

**Current Blockers**:
- {Description of blocker} (affects {TASK-ID}, blocked since {Date})

**Resolved Recently**:
- ✅ {Blocker description} (resolved {Date})

**Example**:
```
Current Blockers:
- None currently

Resolved Recently:
- ✅ Database connection pool configuration (resolved Oct 12)
- ✅ Frontend test environment setup (resolved Oct 10)
```

---

### Recent Decisions (Last 7 Days)

Important decisions that affect current work:

- **{Date}**: [{ADR-ID}](./ADR-{ID}-{Title}.md) - {Decision summary}
- **{Date}**: [{PM-DECISION-ID}](...) - {Decision summary}

**Example**:
```
- **Oct 14**: [ADR-015](./ADR-015-Form-Library.md) - Use Formik for complex forms
- **Oct 13**: [PM-DECISION-003](./PM-DECISION-003-Defer-Notifications.md) - Defer notification module to Phase 4 due to timeline
- **Oct 11**: [ADR-014](./ADR-014-State-Management.md) - Use Zustand instead of Redux for simpler state management
```

---

## 📊 Long-Term Context

### Project Overview

**Project Name**: {Project Name}

**Project Goal**:
{1-2 sentence description of what the system does and why it exists}

**Example**:
```
Enterprise credit control system for managing customer credit limits,
risk assessment, and payment tracking across multiple business units.
```

**Key Features**:
1. {Feature 1}
2. {Feature 2}
3. {Feature 3}
4. {Feature 4}

**Example**:
```
1. Customer credit limit management
2. Real-time risk assessment
3. Payment processing and tracking
4. Reporting and analytics
5. Multi-service microservices architecture
```

---

### Tech Stack

**Backend**:
- Language: {Java 17 / Python 3.11 / Node.js 18 / etc.}
- Framework: {Spring Boot 3.2 / Django 4.2 / Express / etc.}
- Database: {PostgreSQL 13 / MySQL 8 / MongoDB 6 / etc.}
- Cache: {Redis 7 / Memcached / etc.}
- API Style: {RESTful / GraphQL / gRPC}

**Frontend**:
- Framework: {React 18 / Vue 3 / Angular 16 / etc.}
- Language: {TypeScript 5 / JavaScript}
- Build Tool: {Vite 4 / Webpack 5 / etc.}
- State Management: {Redux / Zustand / Context API / etc.}
- UI Library: {Material-UI / Ant Design / Tailwind CSS / etc.}

**Infrastructure**:
- Container: {Podman 4.9 / Docker 24 / etc.}
- Orchestration: {Kubernetes / Docker Compose / none}
- CI/CD: {GitHub Actions / GitLab CI / Jenkins / etc.}
- Cloud: {AWS / Azure / GCP / On-premise}
- Monitoring: {Prometheus / Datadog / New Relic / etc.}

**Example**:
```
Backend:
- Java 17 + Spring Boot 3.2
- PostgreSQL 13 (remote at 35.77.54.203)
- Redis 7 Alpine
- RESTful APIs

Frontend:
- React 18 + TypeScript 5
- Vite 4
- Zustand (state management)
- Material-UI

Infrastructure:
- Podman 4.9.3 (rootless containers)
- No orchestration (direct container management)
- GitHub Actions (planned)
- On-premise development
```

---

### Team

**Roles and Assignments**:
- @arch: {Name or TBD} - System architect
- @pm: {Name or TBD} - Project manager
- @back: {Name or TBD} - Backend developer(s)
- @front: {Name or TBD} - Frontend developer(s)
- @test: {Name or TBD} - QA engineer
- @devops: {Name or TBD} - DevOps engineer

**Team Size**: {Number} people

**Working Hours**: {Timezone and hours}

---

### Timeline

**Project Start**: {Date}

**Current Progress**: Phase {X} of {Y} ({Percentage}% complete)

**Major Milestones**:
- ✅ Phase 1: {Milestone name} (completed {Date})
- ✅ Phase 2: {Milestone name} (completed {Date})
- 🔄 Phase 3: {Milestone name} (current, target {Date})
- 📋 Phase 4: {Milestone name} (planned, target {Date})
- 📋 Phase 5: {Milestone name} (planned, target {Date})

**Target Completion**: {Date}

**Example**:
```
Project Start: June 2025
Current Progress: Phase 3 of 5 (60% complete)

Major Milestones:
- ✅ Phase 1: Infrastructure setup (completed July 2025)
- ✅ Phase 2: Backend services (completed Sept 2025)
- 🔄 Phase 3: Frontend + Integration (current, target Nov 2025)
- 📋 Phase 4: Testing + Polish (planned, target Dec 2025)
- 📋 Phase 5: Deployment (planned, target Jan 2026)

Target Completion: January 2026
```

---

## ⚠️ Important Constraints

### System Constraints

**Development Environment**:
- OS: {Linux / macOS / Windows / WSL2}
- RAM: {Amount} ({Constraint note if < 16GB})
- CPU: {Cores and model}
- Disk: {Available space}

**Network**:
- Database: {Local / Remote at IP:PORT}
- Internet: {Required / Optional / Offline}

**Example**:
```
Development Environment:
- OS: WSL2 Ubuntu 22.04
- RAM: 7.6GB (LOW MEMORY - use test:safe!)
- CPU: 4 cores Intel i5
- Disk: 50GB available

Network:
- Database: Remote PostgreSQL at 35.77.54.203:5432
- Redis: Local at localhost:6380
- Internet: Required for package installation
```

---

### Resource Allocations

**Ports in Use** (Must check arch.md before using new ports):
```
8080  - API Gateway (Nginx)
8091  - Customer Service
8082  - Credit Service
8083  - Risk Service
8084  - Payment Service
8085  - Report Service
8086  - Notification Service
5432  - PostgreSQL (remote)
6380  - Redis (local)
```

**Volumes**:
```
maven-repo       - Maven dependencies cache
postgres-data    - Database data (if local)
redis-data       - Redis persistence
```

**Networks**:
```
creditcontrol-network  - Inter-service communication
```

---

### Technology Constraints

**MUST Use**:
- {Technology}: {Reason}

**MUST NOT Use**:
- {Technology}: {Reason}

**Example**:
```
MUST Use:
- Podman: Project standard, not Docker
- test:safe command: Prevent system crashes on low-memory system
- PostgreSQL: Existing production database

MUST NOT Use:
- Docker: Use Podman instead (rootless containers)
- npm test: Use npm run test:safe (prevents crashes)
- MongoDB: Project uses PostgreSQL
```

---

## 🐛 Common Gotchas (Learn from Mistakes)

**Things that went wrong before - DON'T repeat these**:

### 1. {Gotcha Name}
**What happened**: {Brief description}
**How to avoid**: {Prevention}
**If it happens**: {Recovery steps}

**Examples**:

### 1. Using `npm test` Instead of `npm run test:safe`
**What happened**: System crashed, 100% CPU, had to hard reboot, lost unsaved work
**How to avoid**: ALWAYS use `npm run test:safe` for frontend testing
**If it happens**: `pkill -9 -f vitest`, check `free -h`, use test:safe next time

### 2. Forgetting to Update arch.md After Module Changes
**What happened**: Developer completed module, @pm updated WBS, but arch.md not updated. Next restart failed due to outdated configuration.
**How to avoid**: @pm checks with @arch after code review: "Did you update arch.md, API docs, and scripts?"
**If it happens**: Review completion report, identify changes, update docs retroactively

### 3. Using Undocumented Port
**What happened**: Developer used port 9000 without documentation, conflicted with another service
**How to avoid**: Check arch.md port allocation table BEFORE using any port, request approval if not listed
**If it happens**: Stop service, document port request, get approval, update arch.md, restart

### 4. Committing .env File
**What happened**: Secrets leaked to Git repository
**How to avoid**: Add .env to .gitignore BEFORE creating it, check `git status` before commit
**If it happens**: Remove from Git history (`git filter-branch`), rotate secrets immediately, add to .gitignore

### 5. Merging Without Code Review
**What happened**: Bug introduced that broke integration, could have been caught in review
**How to avoid**: ALWAYS request @arch review, wait for approval
**If it happens**: Create review task retroactively, fix issues found, don't repeat

---

## 📚 Key Documents Quick Links

### Must Read Regularly
- [WBS](./WBS.md) - Current tasks and status (check daily)
- [RULES-CRITICAL](./RULES-CRITICAL.md) - 6 critical rules (read every session)

### Read When Needed
- [Architecture](./arch.md) - System design and tech stack
- [Development Rules](./develop_rules.md) - Coding standards and workflows
- [Role Definitions](../../templates/roles/) - Detailed role responsibilities

### Recent Important Documents
- [ADR-{Latest}](./ADR-{ID}-{Title}.md) - Latest architecture decision
- [PM-STATUS-REPORT-{Latest}](./PM-STATUS-REPORT-{Date}.md) - Latest status report

---

## 🔄 Update Frequency

**This file should be updated**:
- ✅ Daily: Active tasks, recent completions, blockers
- ✅ Weekly: Recent decisions, gotchas
- ✅ Sprint boundary: Progress, milestones
- ✅ As needed: Constraints, team changes

**Who updates**:
- @pm: Primary owner, updates task status and decisions
- @arch: Updates tech stack, constraints, gotchas
- Any role: Can suggest updates

**Last Updated**: {Date} by {Role}
**Next Review**: {Date}

---

## 📝 Usage Instructions

### For Project Managers (@pm)
1. Update "Quick Status" section daily
2. Move completed tasks to "Recent Completions"
3. Add new decisions to "Recent Decisions"
4. Update blockers as they occur/resolve
5. Review "Common Gotchas" weekly, add new lessons learned

### For All Team Members
1. Read "Quick Status" at start of every session
2. Check if your current task is listed
3. Note recent decisions that affect your work
4. Learn from "Common Gotchas" to avoid repeating mistakes
5. Suggest updates if you notice outdated information

---

**Remember**: This document is your project's "memory". Keep it current and consult it often!
