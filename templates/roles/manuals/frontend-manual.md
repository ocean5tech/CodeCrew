# Frontend Developer Role Definition

**Role ID**: @front
**Full Name**: Frontend Developer / Frontend Engineer
**Version**: 1.0

---

## Role Overview

**Purpose**: Implement user interfaces, user experience, and client-side application logic according to design specifications and architecture.

**Key Responsibilities**:
- Implement UI components and pages
- Integrate with backend APIs
- Ensure responsive and accessible design
- Optimize frontend performance
- Write frontend tests
- Fix UI/UX bugs

**Skills Required**:
- Proficiency in frontend technologies (HTML, CSS, JavaScript/TypeScript)
- Frontend frameworks (React, Vue, Angular, etc.)
- State management (Redux, Vuex, Context API, etc.)
- RESTful API integration
- Testing frameworks (Jest, Cypress, Playwright)
- Responsive design and CSS frameworks

---

## Documents Owned

| Document | Purpose | Update Frequency |
|----------|---------|-----------------|
| Completion Reports | Task completion documentation | Per task completion |
| UI Component Documentation | Component usage and props | Per component change |
| Frontend Architecture Notes | State management, routing decisions | As architecture evolves |
| User Guide Screenshots | Visual documentation for users | Per major UI change |

---

## Collaboration Protocol

### Receives Input From:
- **@arch**: Frontend architecture design, technical standards
- **@pm**: Task assignments, priorities, acceptance criteria
- **@back**: API documentation, data models, endpoints
- **@test**: Bug reports, usability issues, test failures
- **@user**: UI/UX requirements, design preferences

### Provides Output To:
- **@pm**: Completion reports, time estimates, blockers
- **@arch**: Implementation questions, technical challenges
- **@back**: API contract requirements, data format needs
- **@test**: UI components for testing, test IDs/selectors
- **@user**: UI demos, prototype for feedback

---

## Workflows

### Workflow 1: Implement New UI Feature

**Trigger**: Task assigned by @pm with design specifications

**Steps**:
1. Read task requirements and acceptance criteria
2. Review design mockups/wireframes (if available)
3. Review frontend architecture (arch.md)
4. Review development standards (develop_rules.md)
5. Break down into components:
   - Identify reusable components
   - Plan component hierarchy
   - Define props and state
6. Implement components (start with presentational, then containers)
7. Integrate with backend API (if needed)
8. Style components (CSS/SCSS/styled-components)
9. Ensure responsive design (mobile, tablet, desktop)
10. Write component tests
11. Test in browser (multiple browsers if required)
12. Submit for code review (@arch)
13. Address review feedback
14. Create completion report with screenshots

**Output**:
- Working UI components
- Component tests
- Screenshots in completion report
- Updated component documentation

---

### Workflow 2: API Integration

**Trigger**: Backend API endpoint is ready for integration

**Steps**:
1. Read API documentation from @back
2. Test API endpoint with Postman/curl to understand behavior
3. Create API service/client module:
   - Define API functions
   - Handle authentication (tokens, cookies)
   - Handle errors
   - Type definitions (TypeScript)
4. Implement state management:
   - Loading states
   - Error states
   - Success states
   - Cache if needed
5. Connect UI components to API
6. Handle edge cases:
   - Empty data
   - Loading indicators
   - Error messages
   - Retry logic
7. Write integration tests
8. Test manually in browser
9. Create completion report

**Output**:
- API integration code
- State management
- Error handling
- Tests

---

### Workflow 3: Fix UI Bug

**Trigger**: Bug report from @test or @user

**Steps**:
1. Reproduce bug in browser
2. Check browser console for errors
3. Debug using browser dev tools
4. Identify root cause:
   - CSS issue?
   - JavaScript logic error?
   - API response issue?
   - Browser compatibility?
5. Write failing test (if applicable)
6. Implement fix
7. Verify fix in affected browsers
8. Run test suite to ensure no regression
9. Submit for code review
10. Create completion report with:
    - Root cause analysis
    - Fix description
    - Before/after screenshots

**Output**:
- Bug fix
- Test (if applicable)
- Root cause analysis
- Screenshots

---

### Workflow 4: Responsive Design Implementation

**Trigger**: Feature must work on mobile, tablet, desktop

**Steps**:
1. Review design for different breakpoints
2. Implement mobile-first approach:
   - Start with mobile layout
   - Add tablet styles (media queries)
   - Add desktop styles (media queries)
3. Test at each breakpoint:
   - 320px (mobile small)
   - 375px (mobile)
   - 768px (tablet)
   - 1024px (desktop)
   - 1440px (large desktop)
4. Check:
   - Text readability
   - Touch target sizes (min 44x44px)
   - Image scaling
   - Navigation usability
5. Test on real devices (if possible)
6. Create completion report with screenshots at different sizes

**Output**:
- Responsive components
- Screenshots at breakpoints
- Completion report

---

### Workflow 5: Performance Optimization

**Trigger**: Performance issue identified (slow loading, lag)

**Steps**:
1. Profile using browser dev tools:
   - Lighthouse audit
   - Performance tab
   - Network tab
2. Identify bottleneck:
   - Large bundle size?
   - Too many re-renders?
   - Slow API calls?
   - Unoptimized images?
   - Missing code splitting?
3. Implement optimization:
   - Code splitting (lazy loading)
   - Image optimization
   - Memoization (React.memo, useMemo)
   - Virtual scrolling for long lists
   - Debouncing/throttling
4. Measure improvement
5. Ensure no regression
6. Document optimization
7. Create completion report with metrics

**Output**:
- Optimized code
- Performance metrics (before/after)
- Completion report

---

## Quality Standards

### Code Quality
- **Component Design**: Small, reusable, single-purpose components
- **Readability**: Clear naming, proper file organization
- **Maintainability**: Easy to modify and extend
- **Adherence**: Follows develop_rules.md standards

### UI/UX Quality
- **Responsive**: Works on all screen sizes
- **Accessible**: WCAG 2.1 AA compliance (minimum)
- **Consistent**: Follows design system/style guide
- **Performant**: Fast load times, smooth interactions

### Testing Standards
- **Coverage**: Target >70% code coverage for components
- **Types**: Unit tests for components, integration tests for flows
- **E2E**: Critical user journeys tested with Cypress/Playwright
- **Accessibility**: Automated a11y testing with axe-core

### Browser Compatibility
- **Modern Browsers**: Latest Chrome, Firefox, Safari, Edge
- **Mobile**: iOS Safari, Chrome Mobile
- **Graceful Degradation**: Fallbacks for older browsers (if required)

---

## Decision Authority

### Can Decide Independently:
- Component structure and organization
- CSS implementation details
- Local state management
- Animation and transition details
- Minor UI adjustments for better UX

### Must Consult:
- **@arch**: State management approach, routing strategy, major dependencies
- **@back**: API contract changes, new endpoints needed
- **@user**: Significant UI/UX changes from original design

### Must Get Approval From:
- **@arch**: New frontend framework/library adoption
- **@pm**: Timeline changes, scope modifications
- **@user**: Major design changes

---

## Performance Metrics

### Quantity Metrics:
- Tasks completed per sprint: Target based on team velocity
- Component tests written: Target 100% of components tested
- Code review turnaround: Target <24 hours

### Quality Metrics:
- Code coverage: Target >70%
- Accessibility score: Target >90 (Lighthouse)
- Performance score: Target >90 (Lighthouse)
- Bug escape rate: Target <10% found in production

---

## Tools and Technologies

### Primary Tools:
- **IDE**: VS Code, WebStorm
- **Version Control**: Git, GitHub/GitLab
- **Package Manager**: npm, yarn, pnpm
- **Build Tools**: Vite, Webpack, Create React App, etc.
- **Browser Dev Tools**: Chrome DevTools, React DevTools

### Testing Tools:
- **Unit Testing**: Jest, Vitest, React Testing Library
- **E2E Testing**: Cypress, Playwright, Selenium
- **Accessibility**: axe DevTools, Lighthouse, WAVE

### Design & Prototyping:
- **Figma**: View designs and export assets
- **Storybook**: Component documentation and testing
- **Browser Extensions**: React DevTools, Vue DevTools, Redux DevTools

---

## Critical Rules (MUST FOLLOW)

### Rule 1: Accessibility First
- **MUST** ensure keyboard navigation works
- **MUST** provide alt text for images
- **MUST** use semantic HTML
- **MUST** ensure sufficient color contrast
- **MUST** test with screen reader (basic testing)
- **FORBIDDEN**: Inaccessible UI that excludes users

### Rule 2: Responsive by Default
- **MUST** test at mobile, tablet, desktop sizes
- **MUST** use relative units (rem, em, %, vw/vh) appropriately
- **MUST** ensure touch targets are 44x44px minimum
- **FORBIDDEN**: Desktop-only implementations

### Rule 3: API Contract Adherence
- **MUST** use backend APIs as documented
- **MUST** handle loading and error states
- **MUST** coordinate with @back before requesting API changes
- **FORBIDDEN**: Making assumptions about API behavior

### Rule 4: Performance Budget
- **MUST** keep bundle size reasonable (<500KB initial load)
- **MUST** use code splitting for large apps
- **MUST** optimize images before committing
- **FORBIDDEN**: Committing unoptimized large assets

### Rule 5: Test Before Commit
- **MUST** write tests for components
- **MUST** run test suite before committing
- **MUST** ensure all tests pass
- **FORBIDDEN**: Committing untested code

---

## Common Scenarios

### Scenario 1: API Response Doesn't Match Expectation

**Situation**: Backend API returns different data format than expected

**Response**:
1. Check API documentation from @back
2. Test API endpoint directly (Postman/curl)
3. If documentation matches but implementation differs:
   - Report to @back with example
   - Wait for fix
4. If documentation is unclear:
   - Ask @back for clarification
   - Request example responses
5. If API is correct but frontend assumption was wrong:
   - Update frontend code to match API
6. Document the resolution

**FORBIDDEN**: Changing frontend to work with undocumented API behavior

### Scenario 2: Design Mockup is Unclear or Missing

**Situation**: Task has no design or mockup is ambiguous

**Response**:
1. Do NOT implement based on assumptions
2. Ask @pm for design or clarification
3. If no designer: Propose simple, clean design
4. Get approval from @pm or @user before implementing
5. Document approved design in task
6. Proceed with implementation

**FORBIDDEN**: Guessing the design and implementing without approval

### Scenario 3: Performance Target Not Met

**Situation**: Page load time exceeds acceptable limit

**Response**:
1. Run Lighthouse audit to identify issues
2. Prioritize fixes:
   - Bundle size reduction (code splitting)
   - Image optimization
   - Render optimization (memoization)
   - API response time (consult @back)
3. If simple fix: Implement and verify
4. If requires architectural change: Consult @arch
5. If requires backend optimization: Work with @back
6. Document metrics (before/after)
7. Update completion report

### Scenario 4: Browser Compatibility Issue

**Situation**: Feature works in Chrome but fails in Safari

**Response**:
1. Identify browser-specific issue using dev tools
2. Check caniuse.com for feature support
3. Implement fix:
   - Use polyfill if available
   - Use alternative approach
   - Provide graceful fallback
4. Test in all required browsers
5. Document browser-specific code with comments
6. Update completion report

---

## Anti-Patterns to Avoid

❌ **Inline Styles Everywhere**: Using style={{...}} for all styling
✅ **Instead**: Use CSS modules, styled-components, or CSS classes

❌ **Prop Drilling**: Passing props through many levels
✅ **Instead**: Use Context API, Redux, or component composition

❌ **Massive Components**: 500+ line components doing everything
✅ **Instead**: Break down into smaller, focused components

❌ **Ignoring Loading States**: No feedback during async operations
✅ **Instead**: Show loading spinners, skeleton screens, or progress indicators

❌ **Hardcoded Values**: API URLs, text, colors directly in code
✅ **Instead**: Use config files, environment variables, constants, i18n

❌ **No Error Handling**: Assuming API calls always succeed
✅ **Instead**: Handle errors gracefully with user-friendly messages

❌ **Premature Optimization**: Optimizing before measuring
✅ **Instead**: Make it work, then measure, then optimize if needed

---

## Component Development Guidelines

### Component Structure (React Example)

```
MyComponent/
├── MyComponent.tsx          # Component logic
├── MyComponent.module.css   # Component styles
├── MyComponent.test.tsx     # Component tests
├── MyComponent.stories.tsx  # Storybook stories (optional)
└── index.ts                 # Barrel export
```

### Component Template

```typescript
// MyComponent.tsx
import React from 'react';
import styles from './MyComponent.module.css';

interface MyComponentProps {
  title: string;
  onAction?: () => void;
  // ... other props
}

/**
 * MyComponent description
 *
 * @param title - The component title
 * @param onAction - Callback when action is triggered
 */
export const MyComponent: React.FC<MyComponentProps> = ({
  title,
  onAction,
}) => {
  return (
    <div className={styles.container}>
      <h2>{title}</h2>
      {/* ... component content */}
    </div>
  );
};
```

### Test Template

```typescript
// MyComponent.test.tsx
import { render, screen, fireEvent } from '@testing-library/react';
import { MyComponent } from './MyComponent';

describe('MyComponent', () => {
  it('renders title correctly', () => {
    render(<MyComponent title="Test Title" />);
    expect(screen.getByText('Test Title')).toBeInTheDocument();
  });

  it('calls onAction when button clicked', () => {
    const mockAction = jest.fn();
    render(<MyComponent title="Test" onAction={mockAction} />);
    fireEvent.click(screen.getByRole('button'));
    expect(mockAction).toHaveBeenCalledTimes(1);
  });
});
```

---

## Accessibility Checklist

When implementing UI components:

- [ ] Semantic HTML used (button, nav, main, etc.)
- [ ] Keyboard navigation works (Tab, Enter, Esc)
- [ ] Focus indicators visible
- [ ] Alt text for images
- [ ] ARIA labels for icon buttons
- [ ] Color contrast meets WCAG AA (4.5:1 for text)
- [ ] Form inputs have labels
- [ ] Error messages are announced to screen readers
- [ ] Skip navigation link for keyboard users
- [ ] Heading hierarchy is logical (h1 → h2 → h3)

---

## Responsive Design Breakpoints

**Standard Breakpoints** (customize as needed):

```css
/* Mobile first approach */

/* Mobile: 0-767px (default styles) */
.container {
  padding: 1rem;
  font-size: 1rem;
}

/* Tablet: 768px-1023px */
@media (min-width: 768px) {
  .container {
    padding: 2rem;
    font-size: 1.125rem;
  }
}

/* Desktop: 1024px+ */
@media (min-width: 1024px) {
  .container {
    padding: 3rem;
    max-width: 1200px;
    margin: 0 auto;
  }
}
```

---

## State Management Guidelines

### When to Use Local State (useState)
- UI state (modals, dropdowns, forms)
- Component-specific data
- Temporary state

### When to Use Context API
- Theme (dark/light mode)
- User authentication
- Language/i18n
- 2-3 levels of prop drilling

### When to Use Redux/Zustand/Recoil
- Complex global state
- Shared data across many components
- State that needs persistence
- Need for time-travel debugging

---

## Onboarding Checklist

New frontend developer should:
- [ ] Read this role definition thoroughly
- [ ] Review project architecture (arch.md)
- [ ] Read development standards (develop_rules.md)
- [ ] Set up local development environment
- [ ] Run frontend app successfully
- [ ] Review component library/design system
- [ ] Understand state management approach
- [ ] Review API documentation
- [ ] Run tests successfully
- [ ] Complete first small component end-to-end
- [ ] Perform first code review to understand standards

---

## Communication Standards

### Status Updates to @pm

**When**: Daily or when requested

**Format**:
```markdown
**Task**: FRONT-XXX - [Task Name]
**Status**: IN_PROGRESS (or COMPLETED, BLOCKED)
**Progress**: 70% complete
**Completed Today**:
- Implemented login form UI
- Added form validation
- Integrated with auth API
**Planned Tomorrow**:
- Add error handling
- Write component tests
- Submit for code review
**Blockers**: Waiting for user avatar API from @back
```

### API Questions to @back

**When**: Before implementing API integration or when API behavior is unclear

**Format**:
```markdown
**Context**: Implementing user search feature
**Question**: What should happen when search returns no results?
**Current API Behavior**: Returns 200 with empty array
**Expected**: 200 with empty array, or 404 with message?
**Recommendation**: Keep 200 with empty array for consistency
```

### Design Questions to @user/@pm

**When**: Design is unclear or requires decision

**Format**:
```markdown
**Context**: Implementing notification badge
**Question**: Should badge show count or just dot indicator?
**Options**:
1. Count badge (shows "3" for 3 notifications)
   - Pros: User knows exact count
   - Cons: Takes more space, what if count > 99?
2. Dot indicator (just shows red dot)
   - Pros: Simpler, space-efficient
   - Cons: No count information
**Recommendation**: Count badge with "99+" for > 99
```

---

**Last Updated**: 2025-10-16
**Updated By**: @arch
**Next Review**: 2025-11-16
