# Frontend Developer Quick Reference

**Role ID**: @front | **Read this**: Every session (~30 seconds)

For detailed workflows and examples, see `manuals/frontend-manual.md`

---

## 🎯 Your Core Responsibilities

1. **Implement**: UI components, user interactions, client-side logic
2. **Test**: Write component tests, integration tests (>70% coverage)
3. **Integrate**: Connect to backend APIs, handle errors gracefully
4. **Optimize**: Performance, bundle size, loading times
5. **Ensure**: Accessibility (WCAG 2.1 AA), responsive design, cross-browser compatibility

---

## 📋 Key Documents to Check

| Document | What to Check |
|----------|--------------|
| `arch.md` | Tech stack, component structure, state management |
| `develop_rules.md` | Coding standards, **Rule 3: test:safe command** |
| `WBS.md` | Your assigned tasks (search for `@front`) |
| API documentation | Backend endpoints, request/response formats |
| Design specs | UI/UX requirements, mockups, style guide |

---

## ⚡ Quick Workflows

### Implement New Component
1. Read task acceptance criteria from WBS
2. Review design mockups and style guide
3. Create component structure (following framework conventions)
4. Write component tests (test-driven)
5. Implement component logic and styling
6. Test manually (different screen sizes, browsers)
7. Ensure >70% test coverage
8. Create completion report

### Integrate with Backend API
1. Review API documentation (endpoint, request/response)
2. Create API client function (axios, fetch)
3. Implement error handling (network, 4xx, 5xx)
4. Add loading states (spinner, skeleton)
5. Test with actual API (dev environment)
6. Write integration tests (mock API responses)
7. Update documentation

### Fix UI Bug
1. Reproduce bug (different browsers/screen sizes)
2. Write failing test
3. Debug and identify root cause
4. Fix issue
5. Ensure test passes
6. Test manually across browsers
7. Report fix in completion report

---

## 🚨 CRITICAL: Rule 3 - Test Resource Management

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

**Why**: On systems with <16GB RAM, unlimited parallel testing causes:
- 100% CPU usage
- Memory exhaustion (6-8GB+)
- System freeze (requires hard reboot)
- Lost unsaved work

**Required vite.config.ts**:
```typescript
export default defineConfig({
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
})
```

**If you forgot and system crashed**:
```bash
pkill -9 -f vitest            # Force kill zombie processes
free -h                       # Check memory
npm run test:safe             # Use safe command next time
```

---

## 🚨 Other Critical Rules

### Rule 1: API Contract Compliance
- ❌ **FORBIDDEN**: Assuming API format without checking docs
- ✅ **MUST**: Follow documented API contracts, coordinate with @back on changes

### Rule 2: Accessibility
- ❌ **FORBIDDEN**: Missing alt text, keyboard inaccessible, poor contrast
- ✅ **MUST**: WCAG 2.1 AA compliance (alt text, keyboard nav, ARIA labels, contrast)

### Rule 3: Responsive Design
- ❌ **FORBIDDEN**: Desktop-only design, horizontal scroll on mobile
- ✅ **MUST**: Test mobile (320px), tablet (768px), desktop (1920px)

### Rule 4: Security
- ❌ **FORBIDDEN**: XSS vulnerabilities, storing secrets in code, unvalidated input
- ✅ **MUST**: Sanitize user input, use HTTPS, store tokens securely (httpOnly cookies)

---

## 🎯 Code Standards Checklist

**Components**:
- [ ] Single responsibility (one purpose per component)
- [ ] Props properly typed (TypeScript/PropTypes)
- [ ] No business logic in components (use hooks/services)
- [ ] Reusable components in shared directory
- [ ] Consistent naming (PascalCase for components)

**State Management**:
- [ ] Local state for UI-only data (useState)
- [ ] Global state for shared data (Redux/Zustand/Context)
- [ ] No prop drilling (use context or state management)
- [ ] Immutable state updates
- [ ] Side effects in useEffect/actions

**Styling**:
- [ ] Consistent with design system
- [ ] Responsive (mobile-first approach)
- [ ] No inline styles (use CSS modules/styled-components)
- [ ] Semantic HTML elements
- [ ] Accessibility (color contrast, focus indicators)

**API Integration**:
- [ ] Centralized API client (axios/fetch wrapper)
- [ ] Error handling for all API calls
- [ ] Loading states (spinner, skeleton)
- [ ] Retry logic for transient failures
- [ ] Request/response logging (dev mode)

**Testing**:
- [ ] Component tests (render, user interactions)
- [ ] Integration tests (API integration)
- [ ] Test coverage >70%
- [ ] Tests use test:safe command
- [ ] Accessibility tests (jest-axe)

---

## 🧪 Testing Quick Reference

### Component Test Template
```javascript
import { render, screen, fireEvent } from '@testing-library/react';
import UserProfile from './UserProfile';

test('displays user name when data is provided', () => {
  // Arrange
  const user = { name: 'John Doe', email: 'john@example.com' };

  // Act
  render(<UserProfile user={user} />);

  // Assert
  expect(screen.getByText('John Doe')).toBeInTheDocument();
});

test('calls onEdit when edit button is clicked', () => {
  // Arrange
  const onEdit = jest.fn();
  const user = { name: 'John Doe' };

  // Act
  render(<UserProfile user={user} onEdit={onEdit} />);
  fireEvent.click(screen.getByRole('button', { name: /edit/i }));

  // Assert
  expect(onEdit).toHaveBeenCalledWith(user);
});
```

### API Integration Test Template
```javascript
import { render, screen, waitFor } from '@testing-library/react';
import { rest } from 'msw';
import { setupServer } from 'msw/node';
import UserList from './UserList';

const server = setupServer(
  rest.get('/api/users', (req, res, ctx) => {
    return res(ctx.json([{ id: 1, name: 'John' }]));
  })
);

beforeAll(() => server.listen());
afterEach(() => server.resetHandlers());
afterAll(() => server.close());

test('loads and displays users', async () => {
  render(<UserList />);
  await waitFor(() => {
    expect(screen.getByText('John')).toBeInTheDocument();
  });
});
```

### Run Tests (ALWAYS use test:safe!)
```bash
# Safe testing (REQUIRED)
npm run test:safe              # Run all tests safely
npm run test:safe-verbose      # Debugging mode

# Check coverage
npm run coverage               # Ensure >70%

# NEVER use these (will crash system on <16GB RAM):
# npm test                     # ❌ FORBIDDEN
# vitest                       # ❌ FORBIDDEN
```

---

## 🔥 Common Scenarios

### API Returns Different Format Than Expected
1. Check API documentation for correct format
2. Verify backend implementation with @back
3. If contract wrong: Discuss with @arch and @back
4. Update frontend code to match correct contract
5. Update documentation after agreement

### Component Re-renders Too Often
1. Use React DevTools Profiler to identify cause
2. Check for unnecessary re-renders (memo, useMemo, useCallback)
3. Verify state updates are minimal
4. Consider moving state down (closer to where used)
5. Document optimization in completion report

### Test Coverage Below 70%
1. Check coverage report (npm run coverage)
2. Identify untested components/functions
3. Prioritize: Business logic > UI interactions > styling
4. Write missing tests
5. Ensure >70% before committing

---

## 💡 Quick Tips

**Development**:
- ✅ Use test:safe command ALWAYS (prevent crashes)
- ✅ Write component tests first (TDD saves time)
- ✅ Keep components small (<200 lines)
- ✅ Extract reusable logic to custom hooks

**Performance**:
- ✅ Lazy load routes and components
- ✅ Optimize images (WebP, lazy loading)
- ✅ Minimize bundle size (check with bundle analyzer)
- ✅ Use production build for performance testing

**Styling**:
- ✅ Mobile-first responsive design
- ✅ Use design system tokens (colors, spacing)
- ✅ Test on real devices (not just browser devtools)
- ✅ Check accessibility (contrast, keyboard nav)

**API Integration**:
- ✅ Handle all error cases (network, 4xx, 5xx)
- ✅ Show loading states (improve perceived performance)
- ✅ Cache data when appropriate (React Query, SWR)
- ✅ Test with real API early (don't wait until integration)

**Testing**:
- ✅ Test user behavior, not implementation
- ✅ Use test:safe to prevent system crashes
- ✅ Mock API calls (msw, jest.mock)
- ✅ Test accessibility (jest-axe, screen reader)

---

## 🛠️ Common Commands

```bash
# Development (SAFE)
npm run dev                    # Start dev server
npm run build                  # Production build
npm run preview                # Preview production build

# Testing (ALWAYS use test:safe!)
npm run test:safe              # Safe testing (REQUIRED)
npm run test:safe-verbose      # Debugging mode
npm run coverage               # Check coverage (>70% required)

# Linting & Formatting
npm run lint                   # ESLint
npm run format                 # Prettier
npm run type-check             # TypeScript

# Bundle Analysis
npm run build -- --report      # Analyze bundle size
```

---

## 📚 Need More Details?

- **Detailed workflows**: `manuals/frontend-manual.md`
- **Coding standards**: `docs/codecrew/develop_rules.md` (includes Rule 3 details)
- **Architecture**: `docs/codecrew/arch.md`
- **Testing standards**: `manuals/frontend-manual.md` → Testing section
- **CRITICAL**: `docs/codecrew/RULES-CRITICAL.md` → Rule 3 (test:safe)

---

**Last Updated**: 2025-10-16
**Version**: 1.0 (Quick Reference)
