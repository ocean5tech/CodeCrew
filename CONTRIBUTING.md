# Contributing to CodeCrew

Thank you for your interest in contributing to CodeCrew! This document provides guidelines and instructions for contributing to the project.

---

## Table of Contents

1. [Code of Conduct](#code-of-conduct)
2. [How Can I Contribute?](#how-can-i-contribute)
3. [Development Setup](#development-setup)
4. [Contribution Workflow](#contribution-workflow)
5. [Style Guidelines](#style-guidelines)
6. [Commit Message Guidelines](#commit-message-guidelines)
7. [Pull Request Process](#pull-request-process)
8. [Community](#community)

---

## Code of Conduct

### Our Pledge

We are committed to providing a welcoming and inspiring community for all. We pledge to make participation in our project a harassment-free experience for everyone, regardless of:

- Age, body size, disability, ethnicity
- Gender identity and expression
- Level of experience, education, socio-economic status
- Nationality, personal appearance, race, religion
- Sexual identity and orientation

### Our Standards

**Positive Behavior**:
- Using welcoming and inclusive language
- Being respectful of differing viewpoints
- Gracefully accepting constructive criticism
- Focusing on what is best for the community
- Showing empathy towards other community members

**Unacceptable Behavior**:
- Trolling, insulting/derogatory comments, personal or political attacks
- Public or private harassment
- Publishing others' private information without permission
- Other conduct which could reasonably be considered inappropriate

### Enforcement

Instances of abusive, harassing, or otherwise unacceptable behavior may be reported to the project team. All complaints will be reviewed and investigated promptly and fairly.

---

## How Can I Contribute?

### 🐛 Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates.

**How to Report a Bug**:

1. **Use the GitHub issue tracker**
2. **Provide a clear title and description**
3. **Include steps to reproduce**:
   - What did you do?
   - What did you expect to happen?
   - What actually happened?
4. **Include environment details**:
   - Operating system
   - CodeCrew version
   - AI tool being used (Claude Code, GitHub Copilot, etc.)
5. **Attach screenshots or logs** if applicable

**Example Bug Report**:

```markdown
**Title**: init-project.sh fails on macOS with permission error

**Description**:
When running the init-project.sh script on macOS, it fails with "Permission denied" error.

**Steps to Reproduce**:
1. Clone repository
2. Run `./scripts/init-project.sh --interactive`
3. Error occurs

**Expected Behavior**:
Script should initialize project successfully

**Actual Behavior**:
Error: "Permission denied: /docs/codecrew"

**Environment**:
- OS: macOS 14.0
- Shell: zsh 5.9
- CodeCrew: v1.0

**Screenshots**:
[Attach screenshot]
```

---

### 💡 Suggesting Enhancements

We welcome suggestions for new features or improvements!

**How to Suggest an Enhancement**:

1. **Check if it's already suggested** in existing issues
2. **Create a GitHub issue** with label `enhancement`
3. **Provide a clear use case**:
   - What problem does it solve?
   - Who would benefit?
   - How would it work?
4. **Describe the proposed solution**
5. **Describe alternatives considered**

---

### 📝 Contributing Documentation

Documentation improvements are always welcome!

**Areas to Contribute**:
- Fixing typos or grammatical errors
- Adding examples
- Clarifying confusing sections
- Translating to other languages
- Adding video tutorials or guides

**Process**:
1. Fork the repository
2. Make changes in your fork
3. Submit a pull request

---

### 🔧 Contributing Code

We welcome code contributions! Here are areas where you can help:

**Current Priorities**:
- Role templates for additional roles (BA, UX, Security, etc.)
- Additional document templates
- Tech stack adapters (Python/Django, Go/Gin, etc.)
- AI tool adapters (GitHub Copilot, Cursor)
- Testing framework examples
- Localization (Chinese, Spanish, French, etc.)

---

## Development Setup

### Prerequisites

- Git
- Text editor or IDE (VS Code, IntelliJ IDEA, etc.)
- Basic knowledge of Markdown

### Setup Steps

1. **Fork the repository**:
   ```bash
   # Navigate to https://github.com/ocean5tech/CodeCrew
   # Click "Fork" button
   ```

2. **Clone your fork**:
   ```bash
   git clone https://github.com/YOUR_USERNAME/CodeCrew.git
   cd CodeCrew
   ```

3. **Add upstream remote**:
   ```bash
   git remote add upstream https://github.com/ocean5tech/CodeCrew.git
   ```

4. **Create a branch**:
   ```bash
   git checkout -b feature/your-feature-name
   ```

5. **Make your changes**

6. **Test your changes**:
   - If adding templates: Test with init-project.sh
   - If updating docs: Verify all links work
   - If adding code: Ensure it runs without errors

---

## Contribution Workflow

### 1. Find an Issue or Create One

- Check [GitHub Issues](https://github.com/ocean5tech/CodeCrew/issues)
- Comment on an issue to claim it
- Or create a new issue for your proposed change

### 2. Create a Branch

```bash
# Update your fork
git fetch upstream
git checkout main
git merge upstream/main

# Create feature branch
git checkout -b feature/my-feature
```

**Branch Naming Convention**:
- `feature/feature-name` - New features
- `bugfix/bug-description` - Bug fixes
- `docs/what-you-changed` - Documentation
- `refactor/what-you-refactored` - Code refactoring

### 3. Make Your Changes

- Follow the [Style Guidelines](#style-guidelines)
- Keep changes focused and atomic
- Test your changes thoroughly

### 4. Commit Your Changes

```bash
git add .
git commit -m "feat: add new role template for business analyst"
```

See [Commit Message Guidelines](#commit-message-guidelines)

### 5. Push to Your Fork

```bash
git push origin feature/my-feature
```

### 6. Create a Pull Request

1. Go to your fork on GitHub
2. Click "Compare & pull request"
3. Fill out the PR template
4. Link related issues
5. Submit the pull request

---

## Style Guidelines

### Markdown Files

- Use ATX-style headers (`#` not underlines)
- Use fenced code blocks with language specifiers
- Use reference-style links for readability
- Line length: Aim for <120 characters (not strict)

**Example**:

```markdown
# Good Header

## Subsection

This is a paragraph with a [reference link][1].

```javascript
// Code block with language
function example() {
  return "hello";
}
```

[1]: https://example.com
```

### Document Templates

- Use `{Placeholder}` format for customizable values
- Include clear section headers
- Provide examples for each section
- Add comments explaining complex sections

### Role Templates

When creating new role templates, follow the structure of existing ones:

- Role Overview
- Documents Owned
- Collaboration Protocol
- Workflows (minimum 3-5)
- Quality Standards
- Decision Authority
- Performance Metrics
- Tools and Technologies
- Critical Rules (MUST FOLLOW)
- Common Scenarios
- Anti-Patterns to Avoid
- Onboarding Checklist

---

## Commit Message Guidelines

We follow the [Conventional Commits](https://www.conventionalcommits.org/) specification.

### Format

```
<type>(<scope>): <short summary>

<optional body>

<optional footer>
```

### Types

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation only changes
- `style`: Formatting, missing semicolons, etc.
- `refactor`: Code change that neither fixes a bug nor adds a feature
- `test`: Adding or updating tests
- `chore`: Changes to build process, dependencies, etc.

### Scope

Optional, indicates what is affected:
- `roles`: Role templates
- `docs`: Document templates
- `scripts`: Shell scripts
- `examples`: Example projects

### Examples

```bash
# Good commit messages
feat(roles): add business analyst role template
fix(scripts): correct path resolution in init-project.sh
docs: update getting started guide with video tutorial
refactor(templates): reorganize template directory structure

# Bad commit messages
fixed stuff
update
WIP
asdfasdf
```

### Body and Footer

**Body**: Provide context and motivation for the change

**Footer**: Reference issues and pull requests

**Example**:

```
feat(roles): add QA automation engineer role

Added comprehensive role definition for QA automation engineer
including workflows for test automation framework setup,
CI/CD integration, and test maintenance.

Closes #42
```

---

## Pull Request Process

### Before Submitting

- [ ] Code follows style guidelines
- [ ] Self-review completed
- [ ] Documentation updated (if applicable)
- [ ] Tests pass (if applicable)
- [ ] Commit messages follow guidelines
- [ ] Branch is up to date with main

### PR Description Template

```markdown
## Description

[Describe what this PR does and why]

## Type of Change

- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Refactoring
- [ ] Other (please describe)

## Related Issues

Closes #123
Related to #456

## Testing

[Describe how you tested this]

## Screenshots

[If applicable, add screenshots]

## Checklist

- [ ] Code follows style guidelines
- [ ] Self-review completed
- [ ] Documentation updated
- [ ] No breaking changes (or documented)
```

### Review Process

1. **Automated Checks**: CI/CD runs automatically
2. **Maintainer Review**: A maintainer will review your PR
3. **Feedback**: Address any requested changes
4. **Approval**: Maintainer approves and merges

**Review Response Time**: We aim to review PRs within 3-5 business days.

### After Merge

- Your PR will be merged into `main`
- Branch will be deleted automatically
- Changes will be included in next release

---

## Community

### Communication Channels

- **GitHub Issues**: Bug reports and feature requests
- **GitHub Discussions**: Questions, ideas, and general discussion
- **Email**: codecrew@ocean5.tech for private inquiries

### Getting Help

**Questions?**
- Check [Documentation](./docs/getting-started.md)
- Search existing [GitHub Issues](https://github.com/ocean5tech/CodeCrew/issues)
- Ask in [GitHub Discussions](https://github.com/ocean5tech/CodeCrew/discussions)

**Stuck?**
- Provide as much context as possible
- Share relevant code or configuration
- Describe what you've already tried

### Recognition

Contributors will be recognized in:
- README.md contributors section
- Release notes
- Special thanks in documentation

---

## Development Roadmap

See [GitHub Projects](https://github.com/ocean5tech/CodeCrew/projects) for our roadmap and progress.

**Upcoming Features** (help wanted!):
- [ ] Additional role templates (BA, UX Designer, Security Engineer)
- [ ] Tech stack adapters (Python/Django, Go/Gin, Ruby/Rails)
- [ ] AI tool adapters (GitHub Copilot integration, Cursor integration)
- [ ] Multi-language support (Chinese, Spanish, French)
- [ ] Video tutorials and guides
- [ ] Example projects for different tech stacks
- [ ] CLI tool for project initialization

---

## License

By contributing to CodeCrew, you agree that your contributions will be licensed under the MIT License.

---

## Thank You! 🎉

Thank you for contributing to CodeCrew! Your contributions help make AI-assisted software development better for everyone.

**Questions?** Feel free to reach out:
- Open an issue
- Start a discussion
- Email us at codecrew@ocean5.tech

---

**Last Updated**: 2025-10-16
