# CodeCrew

**AI-Powered Software Engineering Management Framework**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub stars](https://img.shields.io/github/stars/ocean5tech/CodeCrew.svg?style=social)](https://github.com/ocean5tech/CodeCrew/stargazers)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

---

## 🎯 What is CodeCrew?

CodeCrew is a comprehensive framework for managing AI-assisted software development projects. It bridges the gap between AI coding tools (like Claude Code, GitHub Copilot, Cursor) and traditional software engineering practices.

**The Problem**: AI tools are great at writing code, but they don't manage projects, maintain documentation, or enforce quality standards.

**The Solution**: CodeCrew provides a complete system of roles, documents, workflows, and standards that work seamlessly with AI assistants.

---

## ⚡ Quick Start

### 1. Initialize Your Project

```bash
# Clone the framework
git clone https://github.com/ocean5tech/CodeCrew.git
cd CodeCrew

# Run initialization script
./scripts/init-project.sh --project-name "My Project" --tech-stack java-spring-boot

# Follow the prompts
```

### 2. Start Using AI Agents

```bash
# With Claude Code (recommended)
/pm review project setup
/arch design system architecture
/back implement API endpoint
/front build UI component
/test create test cases
```

### 3. That's It!

Your project now has:
- ✅ Complete role definitions (architect, pm, backend, frontend, test)
- ✅ Documentation templates (ADR, WBS, test reports, code reviews)
- ✅ Collaboration protocols (task assignment, decision making)
- ✅ Quality standards (code review, testing, acceptance criteria)

---

## 🌟 Key Features

### 1. **Complete Role System**
- **6 Standard Roles**: architect, pm, backend, frontend, test, devops
- Clear responsibilities and decision authorities
- Seamless collaboration protocols

### 2. **Document-Driven Development**
- **7 Document Types**: Architecture, WBS, ADR, Test Reports, Code Reviews, Status Reports, Completion Reports
- Standardized naming conventions
- Knowledge accumulation and transfer

### 3. **4-Layer WBS Management**
- **WBS.md**: Active work breakdown structure
- **WBS-Backlog.md**: Planned future tasks
- **WBS-Completed.md**: Finished tasks log
- **WBS-Archive.md**: Historical records

### 4. **Decision Management**
- **ADR (Architecture Decision Records)**: Technical decisions with rationale
- **PM-DECISION**: Project management decisions
- Complete decision traceability

### 5. **Quality Assurance**
- 4-layer testing pyramid (unit → integration → E2E → UAT)
- Standardized code review process
- Test reports and coverage tracking

### 6. **Language & AI Agnostic**
- **Languages**: Java, Python, Node.js, Go, Ruby, C#, PHP, Rust, and more
- **AI Tools**: Claude Code, GitHub Copilot, Cursor, Tabnine, or custom agents
- **Project Types**: Web apps, microservices, mobile apps, AI/ML projects

---

## 📚 What Makes CodeCrew Unique?

| Feature | Traditional PM Tools | AI Coding Tools | **CodeCrew** |
|---------|---------------------|-----------------|--------------|
| **AI Integration** | ❌ Not AI-aware | ✅ Built for AI | ✅ **Built for AI** |
| **Role Definitions** | ⚠️ Generic | ❌ None | ✅ **AI-specific roles** |
| **Documentation** | ⚠️ Basic tasks | ❌ None | ✅ **7 doc types** |
| **Decision Tracking** | ❌ None | ❌ None | ✅ **ADR + PM-DECISION** |
| **Code Quality** | ❌ None | ⚠️ Suggestions | ✅ **Review process** |
| **Knowledge Base** | ❌ None | ❌ None | ✅ **Accumulated docs** |
| **Cross-language** | ✅ Yes | ✅ Yes | ✅ **Yes** |
| **Open Source** | ⚠️ Some | ✅ Yes | ✅ **MIT License** |

**CodeCrew is the only framework that combines**:
- ✅ Technical depth (AI agent collaboration)
- ✅ Project management (full lifecycle)
- ✅ Documentation system (knowledge management)

---

## 🏗️ Framework Architecture

```
CodeCrew Framework
├── Layer 1: Core Framework (Universal)
│   ├── Role definitions (architect, pm, backend, frontend, test)
│   ├── Document structure (ADR, WBS, reports)
│   ├── Collaboration protocols
│   └── Quality standards
│
├── Layer 2: Tech Stack Adapters (Optional)
│   ├── Java/Spring Boot standards
│   ├── Python/Django standards
│   ├── Node.js/Express standards
│   └── Custom tech stack support
│
└── Layer 3: AI Tool Adapters (Optional)
    ├── Claude Code integration
    ├── GitHub Copilot integration
    ├── Cursor integration
    └── Custom AI agent support
```

**Pluggable Design**: Use only what you need, customize what you want.

---

## 📦 What's Included

### Templates
```
templates/
├── roles/                    # Role definition templates
│   ├── architect.md          # Architect role
│   ├── pm.md                 # Project Manager role
│   ├── backend.md            # Backend Developer role
│   ├── frontend.md           # Frontend Developer role
│   ├── test.md               # Test Engineer role
│   └── custom-role.md        # Custom role template
│
├── documents/                # Document templates
│   ├── arch.md.template      # Architecture documentation
│   ├── develop_rules.md.template  # Development standards
│   ├── WBS.md.template       # Work breakdown structure
│   ├── ADR-template.md       # Architecture decision record
│   ├── completion-report.md  # Task completion report
│   ├── test-report.md        # Test report
│   └── code-review.md        # Code review report
│
└── workflows/                # Workflow templates
    ├── task-assignment.md    # Task assignment workflow
    ├── code-review.md        # Code review workflow
    ├── decision-making.md    # Decision making workflow
    └── release.md            # Release workflow
```

### Standards
```
standards/
├── naming-conventions.md     # File and task naming rules
├── document-structure.md     # Document organization rules
├── task-numbering.md         # Task ID conventions
├── status-codes.md           # Task status definitions
└── communication-protocol.md # Inter-role communication rules
```

### Scripts
```
scripts/
├── init-project.sh           # Initialize new project
├── create-role.sh            # Create custom role
├── create-task.sh            # Create new task
└── generate-report.sh        # Generate project report
```

### Examples
```
examples/
├── credit-control-system/    # Full example (Java + React)
├── simple-todo-app/          # Simple example (Node.js + Vue)
└── microservices-demo/       # Microservices example (Go)
```

---

## 🚀 Usage Scenarios

### Scenario 1: Individual Developer

**Challenge**: Using Claude Code to build a project quickly, but lacking structure and documentation.

**Solution**:
```bash
./scripts/init-project.sh --core-only
# Provides: arch.md, develop_rules.md, WBS.md, role definitions
# Start coding with AI while maintaining professional standards
```

### Scenario 2: Small Team (2-5 people)

**Challenge**: Multiple people using AI tools, but roles are unclear and documentation is scattered.

**Solution**:
```bash
./scripts/init-project.sh --tech-stack python-django
# Provides: Complete role system, collaboration protocols, document templates
# Team members switch roles (@arch, @back, @front, @test)
# All communication and decisions are documented
```

### Scenario 3: Enterprise Team (10+ people)

**Challenge**: Need rigorous project management, decision tracking, and knowledge management for AI-assisted development.

**Solution**:
```bash
./scripts/init-project.sh --enterprise
# Provides: Full framework with all layers
# ADR for technical decisions, PM-DECISION for project decisions
# Complete audit trail, knowledge base, quality gates
```

---

## 📖 Documentation

- **[Getting Started](docs/getting-started.md)** - 15-minute quickstart guide
- **[Core Concepts](docs/core-concepts.md)** - Understanding the framework
- **[Role Definitions](docs/role-definitions.md)** - Detailed role descriptions
- **[Document Templates](docs/document-templates.md)** - How to use each template
- **[Customization Guide](docs/customization.md)** - Adapt to your needs
- **[Best Practices](docs/best-practices.md)** - Proven patterns and anti-patterns
- **[FAQ](docs/faq.md)** - Common questions

---

## 🎓 Examples

### Example 1: Create a New Task

```bash
# Using the framework
./scripts/create-task.sh \
  --id "BACK-001" \
  --title "Implement user authentication API" \
  --assignee "@back" \
  --priority "HIGH"

# Creates:
# - Task in WBS.md
# - Task assignment document
# - Links to architect's design
```

### Example 2: Make an Architecture Decision

```bash
# Architect creates ADR
# docs/claudecode/ADR-001-Database-Choice.md

Status: ACCEPTED
Decision: Use PostgreSQL for relational data
Rationale: ACID compliance, JSON support, mature ecosystem
Alternatives Considered: MySQL (less JSON support), MongoDB (no ACID)
```

### Example 3: Complete a Task

```bash
# Developer creates completion report
# docs/claudecode/completion_reports/BACK-001-Completion-Report.md

Task: BACK-001
Status: COMPLETED
Deliverables:
  - POST /api/auth/login endpoint
  - JWT token generation
  - Password hashing with bcrypt
Tests: 15/15 passed
Code Review: Approved by @arch
```

---

## 🌍 Multi-Language Support

CodeCrew supports any programming language:

### Supported Tech Stacks

| Backend | Frontend | Database | Build Tool |
|---------|----------|----------|------------|
| Java/Spring Boot | React | PostgreSQL | Maven |
| Python/Django | Vue | MySQL | pip |
| Node.js/Express | Angular | MongoDB | npm |
| Go/Gin | Svelte | Redis | go build |
| Ruby/Rails | Next.js | SQLite | bundler |
| C#/ASP.NET | Nuxt | MS SQL | dotnet |
| PHP/Laravel | - | Oracle | composer |
| Rust/Actix | - | - | cargo |

**Custom Stack**: Easily adapt the framework to any technology.

---

## 🤖 AI Tool Integration

### Claude Code (Recommended)

```bash
# Switch roles with slash commands
/pm create project WBS
/arch design database schema
/back implement user service
/front build login page
/test create integration tests
```

### GitHub Copilot

```python
# Use comments to set context
# Role: @back
# Task: BACK-001 - Implement authentication
# Following: docs/claudecode/develop_rules.md

def authenticate_user(username, password):
    # Copilot provides implementation following your standards
```

### Cursor / Custom AI

```javascript
// Configure in .cursorrules or similar
// Import role definitions and standards
// AI follows your documented practices
```

---

## 🤝 Contributing

We welcome contributions! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

**Ways to Contribute**:
- 🐛 Report bugs or issues
- 💡 Suggest new features or improvements
- 📝 Improve documentation
- 🌐 Add translations (Chinese, Japanese, etc.)
- 🔧 Add new tech stack templates
- 📚 Share example projects

---

## 📊 Project Status

**Current Version**: 1.0.0-beta
**Status**: Production-ready for early adopters
**Tested On**:
- ✅ Credit Control System (Java + React) - 95% completion
- ✅ Simple Todo App (Node.js + Vue) - 100% completion
- 🔄 Microservices Demo (Go) - In progress

**Roadmap**:
- [x] Core framework and templates
- [x] Java/Spring Boot tech stack
- [ ] Python/Django tech stack
- [ ] Node.js/Express tech stack
- [ ] CLI tool (`codecrew-cli`)
- [ ] VS Code extension
- [ ] Chinese localization (中文本地化)

---

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.

**Free to use for**:
- ✅ Personal projects
- ✅ Commercial projects
- ✅ Open source projects
- ✅ Educational purposes

---

## 🙏 Acknowledgments

**Inspired By**:
- DORA State of AI-Assisted Software Development
- Ruby on Rails conventions
- The Twelve-Factor App methodology
- Agile and Scrum best practices

**Built With**:
- ❤️ Real-world experience from production projects
- 🤖 AI collaboration with Claude Code
- 📚 Software engineering best practices
- 🌍 Open source community feedback

---

## 📞 Contact & Support

- **GitHub Issues**: [Report bugs or request features](https://github.com/ocean5tech/CodeCrew/issues)
- **Discussions**: [Ask questions or share ideas](https://github.com/ocean5tech/CodeCrew/discussions)
- **Email**: codecrew@ocean5.tech
- **Twitter**: [@ocean5tech](https://twitter.com/ocean5tech)

---

## ⭐ Star History

If you find CodeCrew useful, please star the repository!

[![Star History Chart](https://api.star-history.com/svg?repos=ocean5tech/CodeCrew&type=Date)](https://star-history.com/#ocean5tech/CodeCrew&Date)

---

**Made with ❤️ by developers, for developers working with AI.**

---

## Quick Links

- 📚 [Full Documentation](docs/)
- 🚀 [Quick Start Guide](docs/getting-started.md)
- 💡 [Examples](examples/)
- 🤝 [Contributing](CONTRIBUTING.md)
- 📜 [License](LICENSE)
- 🐛 [Issues](https://github.com/ocean5tech/CodeCrew/issues)
- 💬 [Discussions](https://github.com/ocean5tech/CodeCrew/discussions)
