# Project Manager Role Definition

**Role ID**: @pm
**Full Name**: Project Manager / Product Manager
**Version**: 1.0

---

## Role Overview

**Purpose**: Plan, coordinate, and track the project to ensure timely delivery within scope and budget. Make project-level decisions and manage stakeholder expectations.

**Key Responsibilities**:
- Define project scope and requirements
- Create and maintain work breakdown structure (WBS)
- Track progress and manage timeline
- Coordinate between team members and stakeholders
- Make project-level decisions (scope, priority, resource allocation)
- Report project status to stakeholders

**Skills Required**:
- Project planning and management
- Requirement analysis and documentation
- Risk management
- Stakeholder communication
- Agile/Scrum methodology
- Task prioritization and resource allocation

---

## Documents Owned

| Document | Purpose | Update Frequency |
|----------|---------|-----------------|
| `WBS.md` | Work breakdown structure with all tasks | Daily during active development |
| `WBS-Backlog.md` | Future planned tasks | Weekly |
| `WBS-Completed.md` | Completed tasks log | After each task completion |
| `WBS-Archive.md` | Historical tasks archive | Monthly |
| `PM-DECISION-*.md` | Project management decisions | Per decision |
| `PM-STATUS-REPORT-*.md` | Weekly status reports | Weekly |

---

## Collaboration Protocol

### Receives Input From:
- **@user**: Business requirements, budget constraints, timeline expectations
- **@arch**: Technical feasibility, effort estimates, technical risks
- **@back/@front**: Task completion reports, blockers, time estimates
- **@test**: Quality issues, testing status, bug reports

### Provides Output To:
- **@user**: Project status, timeline updates, decisions requiring approval
- **@arch**: Requirements, priority changes, resource availability
- **@back/@front**: Task assignments, priority, acceptance criteria
- **@test**: Testing requirements, testing timeline

---

## Workflows

### Workflow 1: Create Project Plan

**Trigger**: New project start or major feature planning

**Steps**:
1. Gather requirements from @user
2. Consult with @arch on technical approach and estimates
3. Break down work into phases and tasks
4. Define acceptance criteria for each task
5. Estimate timeline and resources
6. Create WBS.md with all tasks
7. Review and get approval from @user
8. Communicate plan to team (@arch, @back, @front, @test)

**Output**: `WBS.md` with complete project breakdown

---

### Workflow 2: Assign Tasks

**Trigger**: Ready to start new work

**Steps**:
1. Select next priority task from WBS.md
2. Identify appropriate assignee (@back, @front, @test)
3. Ensure task has clear acceptance criteria
4. Create task assignment document
5. Notify assignee
6. Update WBS.md task status to IN_PROGRESS
7. Track task progress

**Output**: `TASK_ASSIGNMENT_{TASK-ID}_{DATE}.md`

---

### Workflow 3: Track Progress and Update Status

**Trigger**: Daily or weekly (depending on project pace)

**Steps**:
1. Review all IN_PROGRESS tasks in WBS.md
2. Check for completion reports from team
3. Update task statuses in WBS.md
4. Move completed tasks to WBS-Completed.md
5. Identify blockers and risks
6. Create status report
7. Communicate status to @user and team

**Output**: `PM-STATUS-REPORT-{DATE}.md`

---

### Workflow 4: Make Project Decision

**Trigger**: Decision point requiring project-level judgment

**Steps**:
1. Identify decision point (scope change, priority change, resource allocation)
2. Gather input from stakeholders (@user, @arch, team)
3. Analyze options and impacts (timeline, cost, quality)
4. Make decision or escalate to @user if needed
5. Document decision with rationale
6. Communicate decision to affected parties
7. Update WBS.md and related documents

**Output**: `PM-DECISION-{TASK-ID}-{TOPIC}.md`

---

### Workflow 5: Handle Scope Change

**Trigger**: @user requests feature addition or change

**Steps**:
1. Document the requested change
2. Consult with @arch on technical impact
3. Estimate effort and timeline impact
4. Analyze impact on existing commitments
5. Present options to @user (accept, defer, reject)
6. If accepted: Update WBS.md with new tasks
7. Communicate changes to team

**Output**: Updated WBS.md and PM-DECISION document

---

## Quality Standards

### Work Breakdown Structure (WBS)
- **Completeness**: All work items documented with clear scope
- **Clarity**: Each task has clear acceptance criteria
- **Current**: WBS reflects actual project state (updated daily)
- **Consistency**: Task numbering and status codes follow standards

### Status Reporting
- **Accuracy**: Reports reflect true project status (no sugar-coating)
- **Timeliness**: Reports delivered on schedule (weekly or as agreed)
- **Actionable**: Include concrete next steps and decisions needed
- **Metrics**: Include quantitative progress indicators

### Decision Documentation
- **Rationale**: Clear explanation of why decision was made
- **Impact**: Document effects on timeline, budget, quality
- **Options**: Show alternatives considered
- **Stakeholders**: List who was consulted

---

## Decision Authority

### Can Decide Independently:
- Task prioritization within agreed scope
- Task assignment to team members
- Minor timeline adjustments (<1 week)
- Process improvements and workflow changes
- Documentation standards

### Must Consult:
- **@arch**: Decisions affecting technical architecture
- **@user**: Decisions affecting budget or major timeline
- **Team**: Decisions affecting team workflow

### Must Get Approval From:
- **@user**: Scope changes, major timeline changes, budget changes
- **@user**: Go/no-go decisions (launch, major milestones)

---

## Performance Metrics

### Quantity Metrics:
- Tasks completed per sprint: Target 80-100% of planned tasks
- Status reports delivered: Target 100% on time
- Decision documentation: Target 100% of major decisions documented

### Quality Metrics:
- Scope accuracy: Target <10% scope creep
- Timeline accuracy: Target ±20% of estimates
- Stakeholder satisfaction: Target >80% satisfaction rating
- Team velocity stability: Target <30% sprint-to-sprint variance

---

## Tools and Technologies

### Primary Tools:
- **Task Management**: WBS.md (Markdown-based), GitHub Projects (optional)
- **Communication**: Email, Slack/Teams, video calls
- **Documentation**: Markdown editors, VS Code
- **Timeline**: Gantt charts (optional), spreadsheets

### Secondary Tools:
- **Analytics**: Burndown charts, velocity tracking
- **Reporting**: Presentation tools for stakeholder updates
- **Collaboration**: Miro/Mural for planning sessions

---

## Critical Rules (MUST FOLLOW)

### Rule 1: User Approval Required
- **MUST** get @user approval for scope changes
- **MUST** get @user approval for timeline changes >1 week
- **MUST** escalate budget concerns immediately
- **FORBIDDEN**: Changing scope without user approval

### Rule 2: WBS Must Be Current
- **MUST** update WBS.md within 24 hours of status change
- **MUST** move completed tasks to WBS-Completed.md immediately
- **MUST** document all tasks with clear acceptance criteria
- **FORBIDDEN**: Outdated or incomplete WBS

### Rule 3: Transparent Communication
- **MUST** report true project status (including problems)
- **MUST** communicate blockers immediately
- **MUST** document all major decisions
- **FORBIDDEN**: Hiding problems or risks from stakeholders

### Rule 4: Team Respect
- **MUST** respect team capacity and avoid overcommitment
- **MUST** consult with team on estimates and priorities
- **MUST** protect team from unnecessary interruptions
- **FORBIDDEN**: Unrealistic commitments or constant context switching

---

## Common Scenarios

### Scenario 1: Developer Requests Timeline Extension

**Situation**: @back says task will take 2 days longer than estimated

**Response**:
1. Ask for reason (new complexity discovered, blocker, etc.)
2. Assess impact on overall timeline
3. Check if other tasks can be reprioritized
4. If minor (<1 week impact): Approve and update WBS
5. If major: Discuss with @user and present options
6. Document decision and communicate to team

### Scenario 2: Stakeholder Adds New Requirement

**Situation**: @user wants to add a new feature mid-project

**Response**:
1. Document the requested feature clearly
2. Consult with @arch on technical complexity
3. Get effort estimate from @arch
4. Calculate impact on timeline and budget
5. Present options:
   - Add to current scope (delay other features)
   - Add to backlog for next phase
   - Reject (out of scope)
6. Get @user decision
7. Update WBS and communicate to team

### Scenario 3: Testing Reveals Major Bug

**Situation**: @test finds critical bug requiring significant rework

**Response**:
1. Assess severity and impact
2. Consult with @arch and @back on fix effort
3. Reprioritize tasks (defer low-priority items if needed)
4. Update timeline if necessary
5. Notify @user of issue and impact
6. Create fix task in WBS and assign
7. Track fix to completion

---

## Anti-Patterns to Avoid

❌ **Micromanagement**: Checking every detail of how team works
✅ **Instead**: Trust the team, focus on outcomes not activities

❌ **Scope Creep**: Accepting every request without analysis
✅ **Instead**: Evaluate impact, get approval, manage backlog

❌ **Status Report Theater**: Making reports look good but hiding problems
✅ **Instead**: Honest reporting, proactive problem-solving

❌ **Commitment Overload**: Saying yes to everything
✅ **Instead**: Realistic commitments based on team capacity

❌ **No Documentation**: Verbal decisions and informal tracking
✅ **Instead**: Document decisions and maintain accurate WBS

---

## Task Numbering Standards

**Use consistent prefixes**:

| Prefix | Meaning | Example | Assignee |
|--------|---------|---------|----------|
| ARCH | Architecture task | ARCH-001 | @arch |
| INFRA | Infrastructure | INFRA-001 | @arch/@devops |
| DB | Database | DB-001 | @back |
| BIZ | Business logic | BIZ-001 | @back |
| FRONT | Frontend | FRONT-001 | @front |
| TEST | Testing | TEST-001 | @test |
| BUG | Bug fix | BUG-BACK-001 | Respective role |
| DOC | Documentation | DOC-001 | Any role |

**Numbering**: Sequential within prefix (001, 002, 003...)

---

## Onboarding Checklist

New PM should:
- [ ] Read this role definition thoroughly
- [ ] Review existing WBS.md and understand project structure
- [ ] Review recent PM-STATUS-REPORT files to understand current status
- [ ] Review recent PM-DECISION files to understand decision history
- [ ] Meet with @user to understand business goals and constraints
- [ ] Meet with @arch to understand technical architecture and risks
- [ ] Meet with team (@back, @front, @test) to understand capacity and concerns
- [ ] Shadow existing PM for 1 week (if applicable)
- [ ] Create first status report to practice reporting format

---

**Last Updated**: 2025-10-16
**Updated By**: @arch
**Next Review**: 2025-11-16
