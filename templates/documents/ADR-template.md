# ADR-XXX: [Decision Title]

**Status**: 🟡 PROPOSED / ✅ ACCEPTED / ❌ REJECTED / ⚠️ DEPRECATED / 🔄 SUPERSEDED
**Date**: YYYY-MM-DD
**Decision Maker**: @arch
**Stakeholders**: @pm, @back, @front, @test, @devops
**Supersedes**: [ADR-XXX if this replaces another decision]
**Superseded By**: [ADR-XXX if this decision is replaced]

---

## Context

**Background**:
[Describe the situation and context requiring a decision]

**Problem Statement**:
[Clearly state the problem or question that needs to be resolved]

**Forces at Play**:
- [Business constraint or requirement]
- [Technical constraint or limitation]
- [Team capability or resource constraint]
- [Time or budget constraint]

**Requirements**:
- [Functional requirement 1]
- [Functional requirement 2]
- [Non-functional requirement 1 (performance, scalability, etc.)]
- [Non-functional requirement 2]

---

## Decision

**Selected Option**: [Option Name]

**Summary**:
[One paragraph summary of the decision]

**Rationale**:
[Detailed explanation of why this option was selected]

1. **Reason 1**: [Explanation]
2. **Reason 2**: [Explanation]
3. **Reason 3**: [Explanation]

---

## Options Considered

### Option 1: [Option Name]

**Description**:
[Detailed description of this option]

**Pros**:
- ✅ [Advantage 1]
- ✅ [Advantage 2]
- ✅ [Advantage 3]

**Cons**:
- ❌ [Disadvantage 1]
- ❌ [Disadvantage 2]
- ❌ [Disadvantage 3]

**Estimated Cost**: [Time/Money if applicable]
**Estimated Complexity**: Low / Medium / High

---

### Option 2: [Option Name]

**Description**:
[Detailed description of this option]

**Pros**:
- ✅ [Advantage 1]
- ✅ [Advantage 2]
- ✅ [Advantage 3]

**Cons**:
- ❌ [Disadvantage 1]
- ❌ [Disadvantage 2]
- ❌ [Disadvantage 3]

**Estimated Cost**: [Time/Money if applicable]
**Estimated Complexity**: Low / Medium / High

---

### Option 3: [Option Name]

**Description**:
[Detailed description of this option]

**Pros**:
- ✅ [Advantage 1]
- ✅ [Advantage 2]

**Cons**:
- ❌ [Disadvantage 1]
- ❌ [Disadvantage 2]

**Estimated Cost**: [Time/Money if applicable]
**Estimated Complexity**: Low / Medium / High

---

## Comparison Matrix

| Criteria | Weight | Option 1 | Option 2 | Option 3 |
|----------|--------|----------|----------|----------|
| Performance | High | 8/10 | 6/10 | 9/10 |
| Scalability | High | 7/10 | 9/10 | 6/10 |
| Cost | Medium | 9/10 | 5/10 | 7/10 |
| Complexity | Medium | 6/10 | 8/10 | 4/10 |
| Maintainability | High | 8/10 | 7/10 | 6/10 |
| Team Familiarity | Medium | 9/10 | 5/10 | 7/10 |
| **Total Score** | | **XX** | **XX** | **XX** |

**Note**: Scores are out of 10. Higher is better.

---

## Consequences

### Positive Consequences

**Benefits**:
- ✅ [Benefit 1]
- ✅ [Benefit 2]
- ✅ [Benefit 3]

**Opportunities**:
- 🎯 [Future opportunity enabled by this decision]
- 🎯 [Another opportunity]

### Negative Consequences

**Trade-offs**:
- ⚠️ [What we're giving up or compromising]
- ⚠️ [Another trade-off]

**Risks**:
- ⚠️ [Risk 1 and mitigation strategy]
- ⚠️ [Risk 2 and mitigation strategy]

**Technical Debt**:
- 📝 [Technical debt introduced, if any]
- 📝 [Plan to address it in the future]

---

## Implementation

**Timeline**: [Estimated time to implement]

**Phases**:
1. **Phase 1**: [Description and timeline]
2. **Phase 2**: [Description and timeline]
3. **Phase 3**: [Description and timeline]

**Dependencies**:
- [Task or component this depends on]
- [Another dependency]

**Impacted Components**:
- [Component 1]: [How it's impacted]
- [Component 2]: [How it's impacted]
- [Component 3]: [How it's impacted]

**Migration Path** (if replacing existing solution):
1. [Step 1]
2. [Step 2]
3. [Step 3]

**Rollback Plan**:
[How to revert this decision if needed]

---

## Validation

**Success Criteria**:
- [ ] [Measurable criterion 1]
- [ ] [Measurable criterion 2]
- [ ] [Measurable criterion 3]

**How to Validate**:
- [Method 1]: [Description]
- [Method 2]: [Description]

**Review Date**: [When to review this decision - typically 3-6 months]

---

## References

**Research**:
- [Article/Blog 1](URL)
- [Documentation 2](URL)
- [Case Study 3](URL)

**Related Documents**:
- [arch.md](../arch.md) - System Architecture
- [ADR-XXX](./ADR-XXX-Related-Decision.md) - Related decision
- [WBS Task](../WBS.md#BACK-XXX) - Implementation task

**Team Discussion**:
- [Link to Slack thread](URL)
- [Link to GitHub issue](URL)

---

## Discussion Notes

**Stakeholder Input**:

**@pm**:
- [Project Manager's perspective and concerns]

**@back**:
- [Backend developer's technical input]

**@front**:
- [Frontend developer's perspective]

**@test**:
- [QA engineer's testing concerns]

**@devops**:
- [DevOps engineer's operational concerns]

**@user**:
- [Business stakeholder's requirements]

---

## Revision History

| Date | Change | Author |
|------|--------|--------|
| YYYY-MM-DD | Initial draft | @arch |
| YYYY-MM-DD | Revised based on feedback | @arch |
| YYYY-MM-DD | Status changed to ACCEPTED | @arch |

---

## Example: Real ADR

Below is an example of how to fill out this template:

# ADR-001: Database Selection for User Service

**Status**: ✅ ACCEPTED
**Date**: 2025-10-16
**Decision Maker**: @arch
**Stakeholders**: @pm, @back

---

## Context

**Background**:
Building a new user management microservice that requires persistent storage for user data, authentication tokens, and user preferences.

**Problem Statement**:
Need to select a database technology that meets performance, scalability, and cost requirements for the user service.

**Forces at Play**:
- Need ACID compliance for user data integrity
- Expected to scale to 1M users in first year
- Team has strong SQL experience, limited NoSQL experience
- Budget constraint: $500/month for database infrastructure

**Requirements**:
- ACID transactions for user registration and updates
- Support for 1000 concurrent users (peak)
- Query response time <100ms for 95th percentile
- Daily backups with point-in-time recovery

---

## Decision

**Selected Option**: PostgreSQL 13 (managed service on AWS RDS)

**Summary**:
We will use PostgreSQL 13 as our primary database for the user service, deployed on AWS RDS with Multi-AZ configuration for high availability.

**Rationale**:
1. **ACID Compliance**: PostgreSQL provides strong ACID guarantees essential for user data
2. **Team Expertise**: Our team has 5+ years of PostgreSQL experience
3. **Cost-Effective**: Estimated $350/month well within budget
4. **Proven Scalability**: Can handle our 1M user target with proper indexing
5. **Rich Ecosystem**: Excellent tooling, monitoring, and community support

---

## Options Considered

### Option 1: PostgreSQL 13 (AWS RDS)

**Description**:
Relational database with ACID compliance, deployed as managed service.

**Pros**:
- ✅ Strong ACID guarantees
- ✅ Team has extensive experience
- ✅ Managed service reduces operational overhead
- ✅ Excellent tooling and monitoring
- ✅ Rich data types (JSON, arrays)

**Cons**:
- ❌ Vertical scaling limits beyond 100M records
- ❌ More expensive than self-hosted

**Estimated Cost**: $350/month
**Estimated Complexity**: Low

### Option 2: MongoDB Atlas

**Description**:
NoSQL document database with flexible schema.

**Pros**:
- ✅ Horizontal scaling built-in
- ✅ Flexible schema for rapid iteration
- ✅ Great for unstructured data

**Cons**:
- ❌ No ACID transactions (at document level only)
- ❌ Team lacks NoSQL experience
- ❌ Higher cost: $600/month
- ❌ Complex query patterns for relational data

**Estimated Cost**: $600/month
**Estimated Complexity**: High

### Option 3: MySQL 8 (AWS RDS)

**Description**:
Popular relational database, similar to PostgreSQL.

**Pros**:
- ✅ ACID compliance
- ✅ Similar to PostgreSQL
- ✅ Slightly lower cost: $320/month

**Cons**:
- ❌ Less advanced features than PostgreSQL
- ❌ Weaker JSON support
- ❌ Team prefers PostgreSQL

**Estimated Cost**: $320/month
**Estimated Complexity**: Low

---

## Comparison Matrix

| Criteria | Weight | PostgreSQL | MongoDB | MySQL |
|----------|--------|------------|---------|-------|
| ACID Compliance | High | 10/10 | 5/10 | 10/10 |
| Scalability | High | 7/10 | 10/10 | 7/10 |
| Cost | Medium | 8/10 | 5/10 | 9/10 |
| Team Expertise | High | 10/10 | 3/10 | 8/10 |
| Feature Richness | Medium | 9/10 | 7/10 | 7/10 |
| Operational Overhead | Medium | 9/10 | 8/10 | 9/10 |
| **Total Score** | | **88** | **62** | **81** |

---

## Consequences

### Positive Consequences

**Benefits**:
- ✅ Fast development with familiar technology
- ✅ Low operational overhead with managed service
- ✅ Strong data consistency guarantees
- ✅ Within budget constraints

**Opportunities**:
- 🎯 Can reuse PostgreSQL expertise across other services
- 🎯 Future services can share database infrastructure

### Negative Consequences

**Trade-offs**:
- ⚠️ Vertical scaling limits (but not an issue at current scale)
- ⚠️ Higher cost than self-hosted option

**Risks**:
- ⚠️ Vendor lock-in to AWS (Mitigation: Use standard PostgreSQL features only)
- ⚠️ Cost increase with scale (Mitigation: Regular cost monitoring)

**Technical Debt**:
- None introduced

---

## Implementation

**Timeline**: 2 weeks

**Phases**:
1. **Week 1**: Provision RDS instance, configure security groups, set up backups
2. **Week 2**: Create schema, migrate test data, configure monitoring

**Dependencies**:
- AWS account with RDS permissions
- VPC and security group setup

**Impacted Components**:
- User Service: Will use this database for all user data

**Rollback Plan**:
Can terminate RDS instance if needed during development. No rollback needed in production as this is a new service.

---

## Validation

**Success Criteria**:
- [x] Query response time <100ms for 95th percentile
- [x] Support 1000 concurrent users without degradation
- [x] Monthly cost <$500
- [x] Daily backups configured and tested

**Review Date**: 2026-04-16 (6 months)

---

## References

**Research**:
- [PostgreSQL Documentation](https://www.postgresql.org/docs/13/)
- [AWS RDS Pricing](https://aws.amazon.com/rds/postgresql/pricing/)

**Related Documents**:
- [arch.md](../arch.md) - System Architecture

---

**Revision History**:

| Date | Change | Author |
|------|--------|--------|
| 2025-10-15 | Initial draft | @arch |
| 2025-10-16 | Added stakeholder feedback | @arch |
| 2025-10-16 | Status changed to ACCEPTED | @arch |

---

**Document Owner**: @arch
