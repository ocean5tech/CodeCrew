# CodeCrew Examples

This directory contains example projects demonstrating how to use the CodeCrew framework effectively.

---

## Available Examples

### 1. Credit Control System (Real-World Example)

**Project**: Enterprise Credit Management Platform
**Tech Stack**: Java + Spring Boot + React + PostgreSQL + Redis
**Complexity**: High (Microservices Architecture)
**Status**: In Development (95% Complete)

**Repository**: [creditControlSys_New](https://github.com/ocean5tech/creditControlSys_New)

**Description**:
A complete microservices-based credit control system built using the CodeCrew framework. This is a real production-quality project that demonstrates all aspects of the framework in action.

**What You'll Learn**:
- How to structure a large microservices project with CodeCrew
- Real-world WBS management across multiple phases
- Architecture Decision Records (ADRs) for major technical decisions
- Development standards enforcement
- Multi-service integration testing
- DevOps practices with containerization

**Key Features Implemented Using CodeCrew**:
- ✅ Complete role-based development (@arch, @pm, @back, @front, @test)
- ✅ Comprehensive WBS with 100+ tasks tracked
- ✅ 15+ Architecture Decision Records documenting key decisions
- ✅ Development standards with critical rules enforcement
- ✅ 4-layer testing strategy (unit, integration, E2E, UAT)
- ✅ Complete documentation (architecture, API, deployment)
- ✅ CI/CD pipeline with automated testing

**Documentation Highlights**:
- [Architecture Documentation](https://github.com/ocean5tech/creditControlSys_New/blob/main/docs/claudecode/arch.md)
- [Work Breakdown Structure](https://github.com/ocean5tech/creditControlSys_New/blob/main/docs/claudecode/WBS.md)
- [Development Rules](https://github.com/ocean5tech/creditControlSys_New/blob/main/docs/claudecode/develop_rules.md)
- [ADR Examples](https://github.com/ocean5tech/creditControlSys_New/tree/main/docs/claudecode)

**Project Metrics**:
- Team: 5 roles (Architect, PM, 2 Backend, 1 Frontend)
- Duration: 4 months (with AI assistance)
- Microservices: 6 services
- API Endpoints: 50+
- Test Coverage: Backend 85%, Frontend 75%
- Documentation: 30,000+ lines

**Browse the Code**:
[View on GitHub](https://github.com/ocean5tech/creditControlSys_New)

---

## Coming Soon

### 2. Simple Todo App (Beginner Example)

**Project**: Basic Todo Application
**Tech Stack**: React + Node.js + MongoDB
**Complexity**: Low (Monolithic)
**Status**: Planned

**What You'll Learn**:
- Getting started with CodeCrew
- Basic WBS for small projects
- Simple architecture documentation
- Testing basics

---

### 3. E-commerce Platform (Intermediate Example)

**Project**: Online Store
**Tech Stack**: Python + Django + React + PostgreSQL
**Complexity**: Medium (Modular Monolith)
**Status**: Planned

**What You'll Learn**:
- Scaling CodeCrew for medium-sized projects
- API-first development approach
- Payment integration
- Performance optimization

---

### 4. AI/ML Platform (Advanced Example)

**Project**: Machine Learning Model Deployment Platform
**Tech Stack**: Python + FastAPI + React + Kubernetes
**Complexity**: High (Microservices + ML)
**Status**: Planned

**What You'll Learn**:
- CodeCrew in AI/ML projects
- Model deployment workflows
- Scalability and performance
- ML-specific documentation

---

## How to Use These Examples

### 1. Study the Documentation

Each example project includes complete CodeCrew documentation:
- `docs/codecrew/arch.md` - Architecture documentation
- `docs/codecrew/WBS.md` - Work breakdown structure
- `docs/codecrew/develop_rules.md` - Development standards
- `docs/codecrew/ADR-*.md` - Architecture decisions
- `docs/codecrew/completion_reports/` - Task completion reports
- `docs/codecrew/test_reports/` - Testing reports

### 2. Clone and Explore

```bash
# Clone the example
git clone https://github.com/ocean5tech/creditControlSys_New.git

# Navigate to CodeCrew documentation
cd creditControlSys_New/docs/codecrew

# Read the architecture
cat arch.md

# Browse the WBS
cat WBS.md

# Check development rules
cat develop_rules.md
```

### 3. Adapt for Your Project

1. **Copy the structure**: Use `init-project.sh` to create your project with same structure
2. **Customize templates**: Adapt the templates to your tech stack and requirements
3. **Follow the workflows**: Use the role workflows demonstrated in examples
4. **Learn from decisions**: Read ADRs to understand decision-making process

---

## Example Comparison

| Feature | Todo App | E-commerce | Credit Control | ML Platform |
|---------|----------|------------|----------------|-------------|
| **Complexity** | Low | Medium | High | Very High |
| **Architecture** | Monolithic | Modular Monolith | Microservices | Microservices + ML |
| **Services** | 1 | 3-4 | 6 | 8+ |
| **Team Size** | 1-2 | 3-5 | 5-8 | 8-12 |
| **Duration** | 1-2 weeks | 2-3 months | 3-6 months | 6-12 months |
| **ADRs** | 2-3 | 10-15 | 15-20 | 25+ |
| **WBS Tasks** | 20-30 | 100-150 | 200-300 | 300+ |

---

## Contributing Examples

Want to contribute your own example project? We'd love to include it!

**Requirements**:
- Complete CodeCrew documentation
- Working code (at least 80% complete)
- Clear README with setup instructions
- Demonstrates unique aspect or tech stack

**Process**:
1. Create your project using CodeCrew framework
2. Ensure complete documentation
3. Submit a PR to add link to this page
4. (Optional) Host example in ocean5tech/CodeCrew-Examples repository

See [CONTRIBUTING.md](../CONTRIBUTING.md) for details.

---

## Learning Path

**Recommended order for learning**:

1. **Start Here**: Credit Control System
   - Read the architecture documentation
   - Study the WBS structure
   - Review ADR examples
   - Understand the development rules

2. **Try Simple**: Todo App (when available)
   - Build from scratch following CodeCrew
   - Practice role-based development
   - Create your first ADRs

3. **Go Deeper**: E-commerce Platform (when available)
   - Learn API-first development
   - Practice testing strategies
   - Implement CI/CD

4. **Advanced**: ML Platform (when available)
   - Complex microservices
   - ML-specific workflows
   - Advanced deployment strategies

---

## Resources

### Documentation Templates

All templates used in examples are available in [templates/](../templates/):
- Role definitions
- Document templates
- Scripts for automation

### Video Tutorials

Coming soon: Video walkthroughs of example projects

### Community Examples

See what the community has built:
- [Add your project here via PR!]

---

## Questions?

- **Documentation**: [Getting Started Guide](../docs/getting-started.md)
- **Discussions**: [GitHub Discussions](https://github.com/ocean5tech/CodeCrew/discussions)
- **Issues**: [GitHub Issues](https://github.com/ocean5tech/CodeCrew/issues)

---

**Last Updated**: 2025-10-16
