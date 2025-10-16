#!/bin/bash
# CodeCrew Framework - Project Initializer
# Version: 1.0
# Purpose: Initialize a new project with CodeCrew framework

set -e  # Exit on error

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Print functions
print_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

print_header() {
    echo -e "${BLUE}╔════════════════════════════════════════════════════╗${NC}"
    echo -e "${BLUE}║          CodeCrew Framework Initializer           ║${NC}"
    echo -e "${BLUE}║                  Version 1.0                       ║${NC}"
    echo -e "${BLUE}╚════════════════════════════════════════════════════╝${NC}"
    echo ""
}

# Default values
PROJECT_NAME=""
TECH_STACK="generic"
CORE_ONLY=false
INTERACTIVE=false

# Parse arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --project-name)
            PROJECT_NAME="$2"
            shift 2
            ;;
        --tech-stack)
            TECH_STACK="$2"
            shift 2
            ;;
        --core-only)
            CORE_ONLY=true
            shift
            ;;
        --interactive|-i)
            INTERACTIVE=true
            shift
            ;;
        --help|-h)
            echo "Usage: $0 [OPTIONS]"
            echo ""
            echo "Options:"
            echo "  --project-name NAME    Set project name"
            echo "  --tech-stack STACK     Select tech stack (java-spring-boot, python-django, nodejs-express, generic)"
            echo "  --core-only            Install core framework only (no tech stack specifics)"
            echo "  --interactive, -i      Interactive mode (asks questions)"
            echo "  --help, -h             Show this help message"
            echo ""
            echo "Examples:"
            echo "  $0 --project-name \"My Project\" --tech-stack java-spring-boot"
            echo "  $0 --interactive"
            echo "  $0 --core-only"
            exit 0
            ;;
        *)
            print_error "Unknown option: $1"
            echo "Use --help to see available options"
            exit 1
            ;;
    esac
done

# Main
print_header

# Interactive mode
if [ "$INTERACTIVE" = true ]; then
    print_info "Interactive mode enabled"
    echo ""

    # Ask project name
    read -p "Project name: " PROJECT_NAME

    # Ask tech stack
    echo ""
    echo "Select tech stack:"
    echo "  1) Java + Spring Boot"
    echo "  2) Python + Django"
    echo "  3) Node.js + Express"
    echo "  4) Go + Gin"
    echo "  5) Generic (no specific tech stack)"
    read -p "Select (1-5): " tech_choice

    case $tech_choice in
        1) TECH_STACK="java-spring-boot" ;;
        2) TECH_STACK="python-django" ;;
        3) TECH_STACK="nodejs-express" ;;
        4) TECH_STACK="go-gin" ;;
        5) TECH_STACK="generic" ;;
        *) print_error "Invalid choice"; exit 1 ;;
    esac
fi

# Validate project name
if [ -z "$PROJECT_NAME" ]; then
    print_error "Project name is required"
    echo "Use --project-name or --interactive mode"
    exit 1
fi

print_info "Initializing project: $PROJECT_NAME"
print_info "Tech stack: $TECH_STACK"
echo ""

# Create directory structure
print_info "Creating directory structure..."

mkdir -p "docs/codecrew"/{roles,completion_reports,test_reports,code_reviews}

print_info "✓ Created directory structure"

# Copy templates
print_info "Copying framework templates..."

# Determine template source directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATE_DIR="$(dirname "$SCRIPT_DIR")/templates"

if [ ! -d "$TEMPLATE_DIR" ]; then
    print_error "Template directory not found: $TEMPLATE_DIR"
    exit 1
fi

# Copy role definitions
if [ -d "$TEMPLATE_DIR/roles" ]; then
    for role_file in "$TEMPLATE_DIR/roles"/*.md; do
        if [ -f "$role_file" ]; then
            role_name=$(basename "$role_file")
            cp "$role_file" "docs/codecrew/roles/$role_name"
            print_info "  ✓ Copied role: $role_name"
        fi
    done
fi

# Copy document templates
if [ -d "$TEMPLATE_DIR/documents" ]; then
    # arch.md
    if [ -f "$TEMPLATE_DIR/documents/arch.md.template" ]; then
        cp "$TEMPLATE_DIR/documents/arch.md.template" "docs/codecrew/arch.md"
        print_info "  ✓ Copied arch.md"
    fi

    # develop_rules.md
    if [ -f "$TEMPLATE_DIR/documents/develop_rules.md.template" ]; then
        cp "$TEMPLATE_DIR/documents/develop_rules.md.template" "docs/codecrew/develop_rules.md"
        print_info "  ✓ Copied develop_rules.md"
    fi

    # WBS.md
    if [ -f "$TEMPLATE_DIR/documents/WBS.md.template" ]; then
        cp "$TEMPLATE_DIR/documents/WBS.md.template" "docs/codecrew/WBS.md"
        print_info "  ✓ Copied WBS.md"
    fi
fi

# Customize templates with project info
print_info "Customizing templates..."

find docs/codecrew -type f -name "*.md" -exec sed -i \
    -e "s/{Project Name}/${PROJECT_NAME}/g" \
    -e "s/{Date}/$(date +%Y-%m-%d)/g" \
    -e "s/{Tech Stack}/${TECH_STACK}/g" \
    {} \; 2>/dev/null || true

print_info "✓ Customized templates"

# Create .gitignore
print_info "Creating .gitignore..."

cat > .gitignore << 'EOF'
# CodeCrew Framework

# Build artifacts
target/
dist/
build/
*.jar
*.war
*.class
*.pyc
__pycache__/
node_modules/

# IDE
.idea/
.vscode/
*.iml
.DS_Store

# Logs
*.log
logs/

# Environment
.env
.env.local
*.key
*.pem

# OS
.DS_Store
Thumbs.db
EOF

print_info "✓ Created .gitignore"

# Create README
print_info "Creating project README..."

cat > README.md << EOF
# ${PROJECT_NAME}

**Tech Stack**: ${TECH_STACK}
**Framework**: [CodeCrew](https://github.com/ocean5tech/CodeCrew)
**Created**: $(date +%Y-%m-%d)

---

## Quick Start

\`\`\`bash
# Review the architecture
cat docs/codecrew/arch.md

# Review development standards
cat docs/codecrew/develop_rules.md

# Review project tasks
cat docs/codecrew/WBS.md
\`\`\`

## Using CodeCrew

### With Claude Code

\`\`\`bash
# Switch roles
/pm review project status
/arch design architecture
/back implement features
/front build UI
/test create tests
\`\`\`

### Role Definitions

See \`docs/codecrew/roles/\` for detailed role descriptions.

## Documentation

- **Architecture**: [docs/codecrew/arch.md](docs/codecrew/arch.md)
- **Development Standards**: [docs/codecrew/develop_rules.md](docs/codecrew/develop_rules.md)
- **Work Breakdown**: [docs/codecrew/WBS.md](docs/codecrew/WBS.md)

---

**Powered by CodeCrew** - AI-Powered Software Engineering Framework
EOF

print_info "✓ Created README.md"

# Summary
echo ""
echo -e "${GREEN}╔════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║         Project Initialization Complete!          ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════════════════╝${NC}"
echo ""

print_info "Project: ${PROJECT_NAME}"
print_info "Location: $(pwd)/docs/codecrew"
echo ""

print_info "Next steps:"
echo "  1. Review docs/codecrew/arch.md and customize for your project"
echo "  2. Review docs/codecrew/develop_rules.md and update standards"
echo "  3. Start using CodeCrew:"
echo "     - With Claude Code: /pm review project setup"
echo "     - Or manually edit docs/codecrew/WBS.md to add tasks"
echo ""

print_info "Documentation:"
echo "  - Getting Started: https://github.com/ocean5tech/CodeCrew/docs/getting-started.md"
echo "  - Role Definitions: docs/codecrew/roles/"
echo "  - Framework Docs: https://github.com/ocean5tech/CodeCrew"
echo ""

print_info "Happy coding with CodeCrew! 🚀"
