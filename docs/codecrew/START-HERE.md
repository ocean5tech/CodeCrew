# 🚀 START HERE - Agent Initialization Guide

**Read this FIRST in every new session** (1 minute read)

Last Updated: 2025-10-16

---

## 📍 Step 1: Who Am I?

Identify your role from your system prompt or slash command:

| Role ID | Full Name | Your Focus |
|---------|-----------|------------|
| @pm | Project Manager | Planning, coordination, tracking |
| @arch | Architect | Design, standards, technical decisions |
| @back | Backend Developer | Services, APIs, business logic |
| @front | Frontend Developer | UI, UX, client-side logic |
| @test | Test Engineer | Quality, testing, bug tracking |
| @devops | DevOps Engineer | Infrastructure, deployment, monitoring |

---

## 📚 Step 2: Read Your Quick References (Required)

**Everyone reads these 3 files in order** (~90 seconds):

### 1️⃣ Project Context (MUST READ FIRST)
📄 **File**: `docs/codecrew/project-context.md`

**What it tells you**:
- What we're doing RIGHT NOW (current sprint, active phase)
- Recent completions and decisions (last 7 days)
- Known blockers and constraints
- Important gotchas to avoid

**Why read it**: Get up to speed on project status in 30 seconds

---

### 2️⃣ Critical Rules (MUST READ SECOND)
📄 **File**: `docs/codecrew/RULES-CRITICAL.md`

**What it tells you**:
- 6 rules you absolutely CANNOT violate
- Quick reference format (not detailed explanations)
- Project-specific constraints

**Why read it**: Prevent breaking the project with a single mistake

---

### 3️⃣ Your Role Quick Reference (MUST READ THIRD)
📄 **File**: `templates/roles/quick-ref/{your-role}-quick.md`

**Available quick refs**:
- `pm-quick.md` - Project Manager
- `arch-quick.md` - Architect
- `backend-quick.md` - Backend Developer
- `frontend-quick.md` - Frontend Developer
- `test-quick.md` - Test Engineer
- `devops-quick.md` - DevOps Engineer

**What it tells you**:
- Your core responsibilities
- Key workflows (simplified)
- Critical rules specific to your role
- Common commands and shortcuts

**Why read it**: Know what to do and how to do it

---

## 📋 Step 3: Check Your Active Tasks

📄 **File**: `docs/codecrew/WBS.md`

**How to use**:
1. Search for your role: `@{your-role}` (e.g., `@back`)
2. Find tasks with status: `🔄 IN_PROGRESS` or `📋 TODO`
3. Read acceptance criteria for your current task
4. Check dependencies and blockers

**Tip**: Focus only on tasks assigned to you, ignore the rest for now

---

## 🎯 When to Read Detailed Documentation

You've now read the essentials (~1500 tokens, ~90 seconds).

**Read detailed docs ONLY when you need them**:

| When You Need... | Read This... | Size |
|------------------|--------------|------|
| Code examples for your role | `templates/roles/manuals/{role}-manual.md` | ~500 lines |
| Detailed coding standards | `docs/codecrew/develop_rules.md` | ~800 lines |
| Architecture details | `docs/codecrew/arch.md` | ~300 lines |
| How to write an ADR | `templates/documents/ADR-template.md` | ~450 lines |
| WBS template structure | `templates/documents/WBS.md.template` | ~450 lines |

**Strategy**:
- ✅ Read quick-refs every session (fast, essential)
- ✅ Read manuals when learning new workflows (detailed, as-needed)
- ✅ Search manuals for specific questions (Ctrl+F)
- ❌ Don't read all manuals every time (waste of tokens!)

---

## 🔥 Emergency Quick Links

### Common Issues

| Problem | Solution |
|---------|----------|
| 🔥 "Which test command should I use?" | `RULES-CRITICAL.md` Rule 3: Use `npm run test:safe` |
| 🔥 "Port conflict error!" | `arch.md` → Search for "port allocation table" |
| 🔥 "Can't find my task" | `WBS.md` → Ctrl+F search for `@{your-role}` |
| 🔥 "Need to make technical decision" | Ask @arch first, then create ADR |
| 🔥 "Forgot the git workflow" | `develop_rules.md` → Search "Commit Message Format" |
| 🔥 "System crashed during testing" | `RULES-CRITICAL.md` Rule 3 → You used `npm test` didn't you? 😅 |

### Quick Command Reference

```bash
# Testing (Frontend)
npm run test:safe              # Safe testing (ALWAYS use this)
npm run test:safe-verbose      # Debugging test failures

# Testing (Backend)
mvn test                       # Run all tests
mvn test -Dtest=ClassName      # Run specific test

# Container operations
podman ps                      # List running containers
podman logs -f <service>       # View logs
./podman-start.sh             # Start all services
./podman-stop.sh              # Stop all services

# Git workflow
git status                     # Check status
git add .                      # Stage changes
git commit -m "feat: ..."     # Commit with conventional format
git push                       # Push to remote
```

---

## ⏱️ Time Budget

**Session Initialization**:
- Read START-HERE.md: 10 seconds (~40 tokens)
- Read project-context.md: 30 seconds (~600 tokens)
- Read RULES-CRITICAL.md: 20 seconds (~200 tokens)
- Read {role}-quick.md: 30 seconds (~480 tokens)
- Check WBS.md for your tasks: 10 seconds (~200 tokens)

**Total**: ~100 seconds, ~1520 tokens

**Compared to reading all detailed docs**:
- Time saved: 80% (5 minutes → 1.5 minutes)
- Tokens saved: 80% (7500 → 1500)

---

## 🎓 Learning Path

### First Time Using CodeCrew?

**Day 1**:
1. Read this file (START-HERE.md)
2. Read your quick reference completely
3. Read your detailed manual completely (one-time learning)

**Day 2+**:
1. Read START-HERE.md (refresh)
2. Read quick references only
3. Refer to manual when needed

### Experienced with CodeCrew?

1. Scan project-context.md for changes
2. Glance at RULES-CRITICAL.md (make sure nothing changed)
3. Jump straight to your quick-ref
4. Start working!

---

## 📊 Document Structure Overview

```
docs/codecrew/
├── START-HERE.md              ← You are here (entry point)
├── project-context.md         ← Current project status
├── RULES-CRITICAL.md          ← 6 critical rules
├── arch.md                    ← Architecture (read when needed)
├── develop_rules.md           ← Detailed standards (read when needed)
├── WBS.md                     ← Current tasks
└── ...

templates/
├── roles/
│   ├── quick-ref/             ← Daily use (100-150 lines each)
│   │   ├── pm-quick.md
│   │   ├── arch-quick.md
│   │   ├── backend-quick.md
│   │   ├── frontend-quick.md
│   │   ├── test-quick.md
│   │   └── devops-quick.md
│   │
│   └── manuals/               ← Reference when needed (500+ lines)
│       ├── pm.md
│       ├── architect.md
│       ├── backend.md
│       ├── frontend.md
│       ├── test.md
│       └── devops.md
│
└── documents/                 ← Templates (use when creating docs)
    ├── WBS.md.template
    ├── ADR-template.md
    ├── develop_rules.md.template
    └── arch.md.template
```

---

## ✅ Initialization Complete!

You should now know:
- ✅ What the project is doing right now
- ✅ The 6 critical rules you must follow
- ✅ Your role and responsibilities
- ✅ Your current tasks
- ✅ Where to find detailed information when needed

**Ready to work!** 🚀

---

## 🤝 Need Help?

- **Forgot something?** Re-read the relevant quick-ref
- **Need more details?** Check the corresponding manual
- **Stuck on a task?** Ask @pm or @arch
- **Found a bug in docs?** Report to @arch

**Remember**: Quick-refs are your friends. Read them every session. Manuals are your backup. Read them when you need deep knowledge.

---

**Last Updated**: 2025-10-16 by @arch
**Next Review**: Monthly (or when project structure changes)
