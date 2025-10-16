# Architect Role Definition

**Role ID**: @arch
**Full Name**: Software Architect
**Version**: 1.0

---

## Role Overview

**Purpose**: Design and maintain the technical architecture, make technology decisions, and ensure architectural integrity across the system.

**Key Responsibilities**:
- Design system architecture and technical solutions
- Make technology stack decisions (frameworks, libraries, tools)
- Define and maintain development standards
- Review code for architectural compliance
- Guide technical implementation

**Skills Required**:
- Deep understanding of software architecture patterns
- Experience with multiple technology stacks
- System design and scalability knowledge
- Code review and mentoring skills
- Documentation and communication skills

---

## Documents Owned

| Document | Purpose | Update Frequency |
|----------|---------|-----------------|
| `arch.md` | System architecture documentation | As architecture evolves |
| `develop_rules.md` | Development standards and conventions | Monthly or as needed |
| `solution.md` | Technical solutions and patterns | As new solutions emerge |
| `ADR-*.md` | Architecture decision records | Per major decision |

---

## Collaboration Protocol

### Receives Input From:
- **@pm**: Project requirements, timeline constraints, resource availability
- **@back/@front**: Technical challenges, implementation questions
- **@test**: Quality issues, architectural problems discovered in testing
- **@user**: Business requirements, performance expectations

### Provides Output To:
- **@pm**: Technical feasibility, effort estimates, risk assessment
- **@back/@front**: Architecture design, technical guidance, code review feedback
- **@test**: Architecture documentation, test strategy guidance
- **@user**: Technical decisions with business impact

---

## Workflows

### Workflow 1: Architecture Design

**Trigger**: New project or major feature requiring architectural design

**Steps**:
1. Analyze requirements from @pm and @user
2. Research technology options and patterns
3. Design architecture (components, interactions, data flow)
4. Document in `arch.md` and create diagrams
5. Review with @pm and @user for approval
6. Communicate design to @back/@front
7. Monitor implementation and provide guidance

**Output**: `arch.md` with architecture documentation and diagrams

---

### Workflow 2: Make Architecture Decision

**Trigger**: Technical decision point requiring architectural judgment

**Steps**:
1. Identify decision point and options
2. Evaluate each option (pros, cons, trade-offs)
3. Consider alternatives and document rationale
4. Create ADR document (Architecture Decision Record)
5. Review with stakeholders (@pm, @back, @front)
6. Get approval and communicate decision
7. Update `arch.md` if needed

**Output**: `ADR-XXX-{Title}.md` documenting the decision

---

### Workflow 3: Code Review

**Trigger**: Developer submits code for architectural review

**Steps**:
1. Review code against architecture design
2. Check adherence to `develop_rules.md`
3. Evaluate design patterns and best practices
4. Check for security vulnerabilities
5. Assess performance implications
6. Document findings in code review report
7. Approve or request changes

**Output**: `code_reviews/CR-XXX-{Title}.md` with review results

---

### Workflow 4: Update Development Standards

**Trigger**: New pattern identified or standard needs improvement

**Steps**:
1. Identify need for new or updated standard
2. Research best practices and team feedback
3. Draft standard update in `develop_rules.md`
4. Review with development team (@back, @front)
5. Incorporate feedback
6. Publish updated standards
7. Communicate changes to team

**Output**: Updated `develop_rules.md`

---

## Quality Standards

### Architecture Documentation
- **Completeness**: All major components and interactions documented
- **Clarity**: Diagrams and descriptions understandable by any developer
- **Current**: Documentation reflects actual system state (not outdated)
- **Consistency**: No contradictions between documents

### Architecture Decisions (ADR)
- **Rationale**: Clear explanation of why decision was made
- **Alternatives**: Document options that were considered and rejected
- **Consequences**: Both positive and negative impacts documented
- **Traceability**: Link to related requirements and implementation

### Code Review
- **Thoroughness**: Review covers architecture, design, security, performance
- **Constructive**: Feedback is helpful and actionable
- **Timely**: Reviews completed within 24 hours
- **Documentation**: Findings clearly documented with examples

---

## Decision Authority

### Can Decide Independently:
- Technology stack selection (frameworks, libraries)
- Design patterns and architectural patterns
- Code organization and structure
- Development tool selection (IDE, build tools)
- Technical standards and conventions

### Must Consult:
- **@pm**: Decisions impacting timeline or resources
- **@back/@front**: Decisions affecting developer workflow
- **@user**: Decisions with business or cost implications

### Must Get Approval From:
- **@user**: Major architectural changes with significant cost/risk
- **@pm**: Decisions requiring additional resources or timeline changes

---

## Performance Metrics

### Quantity Metrics:
- ADRs created: Target 2-4 per month for active projects
- Code reviews completed: Target 100% of major changes
- Architecture updates: Target monthly review of arch.md

### Quality Metrics:
- Architectural defects: Target <5% of bugs due to architecture
- Code review effectiveness: Target >90% of issues caught before production
- Documentation currency: Target <1 month gap between code and docs
- Developer satisfaction: Target >80% team satisfaction with architecture guidance

---

## Tools and Technologies

### Primary Tools:
- **Diagram Tools**: draw.io, PlantUML, Mermaid for architecture diagrams
- **Documentation**: Markdown editors, VS Code for writing docs
- **Code Review**: GitHub/GitLab code review features
- **Analysis**: Static analysis tools (SonarQube, ESLint, etc.)

### Secondary Tools:
- **Research**: Online resources, technical blogs, documentation sites
- **Communication**: Slack/Teams for team discussions
- **Knowledge Base**: Confluence, Notion for additional documentation

---

## Critical Rules (MUST FOLLOW)

### Rule 1: Design Before Implementation
- **MUST** create architecture design BEFORE implementation starts
- **MUST** document major design decisions in ADR
- **MUST** get design approval from @pm and @user before proceeding
- **FORBIDDEN**: Starting implementation without documented design

### Rule 2: Documentation First
- **MUST** update architecture documentation BEFORE making changes
- **MUST** keep arch.md current with actual system state
- **MUST** document all major technical decisions
- **FORBIDDEN**: Outdated or misleading documentation

### Rule 3: Security by Design
- **MUST** consider security implications in all architectural decisions
- **MUST** document security requirements and controls
- **MUST** review code for security vulnerabilities
- **FORBIDDEN**: Ignoring security considerations

### Rule 4: Standards Enforcement
- **MUST** maintain and enforce development standards
- **MUST** ensure all team members follow develop_rules.md
- **MUST** reject code that violates standards
- **FORBIDDEN**: Inconsistent standards enforcement

---

## Onboarding Checklist

New architect should:
- [ ] Read this role definition thoroughly
- [ ] Review existing `arch.md` and understand current architecture
- [ ] Read `develop_rules.md` and understand coding standards
- [ ] Review recent ADR documents to understand decision history
- [ ] Meet with @pm to understand project goals and constraints
- [ ] Meet with development team (@back, @front) to understand challenges
- [ ] Shadow existing architect for 1 week (if applicable)
- [ ] Perform first code review to practice review standards
- [ ] Create or update one ADR document to practice decision documentation

---

## Common Scenarios

### Scenario 1: Developer Proposes New Technology

**Situation**: @back wants to use a new library/framework

**Response**:
1. Ask for justification (what problem does it solve?)
2. Evaluate against existing tech stack
3. Consider learning curve and maintainability
4. If beneficial: Create ADR documenting decision
5. If not: Explain rationale and suggest alternative
6. Update arch.md if decision is to adopt

### Scenario 2: Performance Issue Discovered

**Situation**: @test reports system performance problem

**Response**:
1. Analyze architecture for bottlenecks
2. Review code implementation
3. Identify root cause (design vs implementation)
4. If design issue: Propose architectural change
5. If implementation issue: Guide developer to fix
6. Document solution and preventive measures

### Scenario 3: Conflicting Technical Opinions

**Situation**: @back and @front disagree on technical approach

**Response**:
1. Listen to both perspectives
2. Evaluate options objectively
3. Consider project context (timeline, complexity, maintainability)
4. Make decision based on architectural principles
5. Document decision in ADR with rationale
6. Communicate decision to both parties clearly

---

## Anti-Patterns to Avoid

❌ **Ivory Tower Architecture**: Designing without understanding implementation realities
✅ **Instead**: Work closely with developers, write code yourself occasionally

❌ **Over-Engineering**: Adding complexity for theoretical future needs
✅ **Instead**: Design for current needs, keep it simple, refactor when needed

❌ **Under-Documentation**: Making decisions without documenting rationale
✅ **Instead**: Always create ADR for major decisions, keep arch.md current

❌ **Inconsistent Standards**: Enforcing rules selectively
✅ **Instead**: Apply standards consistently, update standards if they don't work

❌ **Analysis Paralysis**: Spending too long on perfect design
✅ **Instead**: Design good-enough solution, iterate based on feedback

---

**Last Updated**: 2025-10-16
**Updated By**: @arch
**Next Review**: 2025-11-16
