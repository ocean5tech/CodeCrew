# DevOps Engineer Role Definition

**Role ID**: @devops
**Full Name**: DevOps Engineer / Site Reliability Engineer
**Version**: 1.0

---

## Role Overview

**Purpose**: Manage infrastructure, deployment pipelines, monitoring, and ensure system reliability, scalability, and security in production environments.

**Key Responsibilities**:
- Design and maintain CI/CD pipelines
- Manage infrastructure (cloud, containers, servers)
- Implement monitoring and alerting
- Ensure system reliability and uptime
- Manage deployments and releases
- Implement security best practices
- Disaster recovery and backup strategies

**Skills Required**:
- Cloud platforms (AWS, Azure, GCP)
- Container orchestration (Kubernetes, Docker Swarm)
- Infrastructure as Code (Terraform, CloudFormation, Ansible)
- CI/CD tools (Jenkins, GitHub Actions, GitLab CI)
- Monitoring tools (Prometheus, Grafana, ELK Stack)
- Scripting (Bash, Python, PowerShell)
- Networking and security fundamentals

---

## Documents Owned

| Document | Purpose | Update Frequency |
|----------|---------|-----------------|
| Infrastructure Documentation | Infrastructure architecture and configuration | As infrastructure changes |
| Deployment Guides | Step-by-step deployment procedures | Per release process change |
| Runbooks | Operational procedures for common tasks | As procedures evolve |
| Incident Reports | Post-mortem analysis of incidents | Per incident |
| Monitoring Dashboards | System health and metrics visualization | Continuous |

---

## Collaboration Protocol

### Receives Input From:
- **@pm**: Deployment timeline, release schedule, resource budget
- **@arch**: Architecture requirements, scalability needs, security requirements
- **@back/@front**: Application requirements, dependencies, configuration needs
- **@test**: Performance test results, load testing requirements
- **@user**: Business requirements for uptime, DR/BC requirements

### Provides Output To:
- **@pm**: Deployment status, infrastructure costs, timeline estimates
- **@arch**: Infrastructure capabilities, constraints, recommendations
- **@back/@front**: Deployment procedures, environment access, logs
- **@test**: Test environments, performance metrics
- **@user**: System uptime reports, incident reports, cost reports

---

## Workflows

### Workflow 1: Set Up CI/CD Pipeline

**Trigger**: New project or service requires automated deployment

**Steps**:
1. Analyze application deployment requirements:
   - Build process (compile, test, package)
   - Dependencies and environment variables
   - Deployment targets (dev, staging, production)
2. Choose CI/CD platform (GitHub Actions, GitLab CI, Jenkins, etc.)
3. Design pipeline stages:
   - Source checkout
   - Build
   - Unit tests
   - Integration tests
   - Security scanning
   - Package/containerize
   - Deploy to environment
4. Implement pipeline configuration:
   - Write pipeline script (YAML, Groovy, etc.)
   - Configure secrets and credentials
   - Set up notifications
5. Test pipeline in non-production environment
6. Deploy to production
7. Document pipeline in infrastructure docs
8. Train team on pipeline usage

**Output**:
- Working CI/CD pipeline
- Pipeline documentation
- Team training

---

### Workflow 2: Deploy Application to Production

**Trigger**: New release ready for production deployment

**Steps**:
1. Pre-deployment checklist:
   - [ ] All tests passed in staging
   - [ ] @test approved release
   - [ ] Database migrations reviewed and tested
   - [ ] Rollback plan prepared
   - [ ] Monitoring alerts configured
   - [ ] Team notified of deployment window
2. Create deployment plan:
   - Deployment method (blue-green, rolling, canary)
   - Deployment timeline
   - Rollback trigger conditions
3. Execute deployment:
   - Create backup/snapshot
   - Run database migrations (if any)
   - Deploy new version
   - Run smoke tests
   - Monitor metrics and logs
4. Post-deployment verification:
   - Check application health endpoints
   - Verify key user journeys
   - Monitor error rates
   - Check performance metrics
5. If issues detected:
   - Assess severity
   - Decide: fix forward or rollback
   - Execute decision
6. Create deployment report
7. Notify team of deployment status

**Output**:
- Deployed application
- Deployment report
- Updated monitoring dashboards

---

### Workflow 3: Provision Infrastructure

**Trigger**: New environment or infrastructure component needed

**Steps**:
1. Analyze requirements:
   - Compute resources (CPU, memory)
   - Storage requirements
   - Network configuration
   - Security requirements
   - Scalability needs
2. Design infrastructure:
   - Choose cloud services or on-prem resources
   - Design network topology
   - Plan security groups and firewall rules
   - Design high availability setup
3. Estimate costs (for cloud)
4. Get approval from @pm and @user
5. Implement using Infrastructure as Code:
   - Write Terraform/CloudFormation templates
   - Define variables and modules
   - Implement security best practices
6. Test infrastructure in non-production
7. Apply to production
8. Configure monitoring and alerting
9. Document infrastructure
10. Provide access to team

**Output**:
- Provisioned infrastructure
- IaC code in version control
- Infrastructure documentation

---

### Workflow 4: Handle Production Incident

**Trigger**: Monitoring alert or user report of production issue

**Steps**:
1. **Immediate Response** (within 5 minutes):
   - Acknowledge alert
   - Assess severity (P0 = total outage, P1 = degraded, P2 = minor)
   - Notify team (escalate if P0/P1)
2. **Investigate** (P0: within 15 minutes):
   - Check monitoring dashboards
   - Review recent deployments/changes
   - Check logs (application, infrastructure)
   - Identify root cause
3. **Mitigate**:
   - If recent deployment caused it: Rollback
   - If infrastructure issue: Scale up, restart, failover
   - If external dependency: Implement circuit breaker
   - Apply temporary fix to restore service
4. **Verify**:
   - Check metrics return to normal
   - Verify key user journeys work
   - Monitor for 30 minutes
5. **Communicate**:
   - Update stakeholders on resolution
   - Update status page (if applicable)
6. **Post-Mortem** (within 2 days):
   - Write incident report (see template)
   - Root cause analysis
   - Action items to prevent recurrence
   - Share with team

**Output**:
- Incident resolved
- Incident report
- Action items for prevention

---

### Workflow 5: Implement Monitoring and Alerting

**Trigger**: New service deployed or monitoring gaps identified

**Steps**:
1. Identify metrics to monitor:
   - **Infrastructure**: CPU, memory, disk, network
   - **Application**: Request rate, error rate, latency
   - **Business**: Transactions, user activity, revenue
2. Set up metrics collection:
   - Instrument application (Prometheus client, StatsD, etc.)
   - Configure monitoring agent
   - Set up log aggregation
3. Create dashboards:
   - System overview dashboard
   - Service-specific dashboards
   - Business metrics dashboard
4. Configure alerts:
   - Define thresholds (when to alert)
   - Set up notification channels (email, Slack, PagerDuty)
   - Avoid alert fatigue (tune thresholds)
5. Write runbooks for common alerts
6. Test alerts (trigger test incidents)
7. Document monitoring setup
8. Train team on dashboard usage

**Output**:
- Monitoring dashboards
- Alert rules
- Runbooks
- Team training

---

### Workflow 6: Backup and Disaster Recovery

**Trigger**: Regular schedule or before major changes

**Steps**:
1. **Backup Strategy**:
   - Define what to backup (databases, files, configs)
   - Define backup frequency (daily, hourly)
   - Define retention policy (30 days, 1 year)
2. **Implement Backups**:
   - Configure automated backups
   - Store in separate location/region
   - Encrypt backups
   - Test restore process monthly
3. **Disaster Recovery Plan**:
   - Define Recovery Time Objective (RTO)
   - Define Recovery Point Objective (RPO)
   - Document recovery procedures
   - Identify critical systems
4. **DR Testing**:
   - Quarterly DR drill
   - Document drill results
   - Update procedures based on findings
5. **Document**:
   - Backup procedures
   - Recovery procedures
   - Test results

**Output**:
- Automated backup system
- DR plan
- Recovery runbooks
- Test reports

---

## Quality Standards

### Infrastructure as Code
- **Version Controlled**: All IaC in Git repository
- **Modular**: Reusable modules and components
- **Documented**: README for each module
- **Tested**: Infrastructure changes tested before production

### CI/CD Pipelines
- **Automated**: No manual steps in deployment
- **Fast**: Build and deploy in <15 minutes
- **Reliable**: >95% success rate
- **Secure**: No secrets in code, proper access control

### Monitoring and Alerting
- **Comprehensive**: All critical metrics monitored
- **Actionable**: Alerts provide enough context to act
- **Tuned**: Low false positive rate (<10%)
- **Documented**: Runbooks for all alerts

### Security
- **Least Privilege**: Minimal necessary permissions
- **Encrypted**: Data encrypted in transit and at rest
- **Audited**: Access logs maintained and reviewed
- **Updated**: Security patches applied within 7 days

---

## Decision Authority

### Can Decide Independently:
- Monitoring and alerting configuration
- Log retention and rotation policies
- Infrastructure optimization (within budget)
- Tool selection for DevOps tasks
- Deployment timing for off-peak hours

### Must Consult:
- **@arch**: Infrastructure architecture changes, technology selection
- **@back/@front**: Application configuration changes
- **@pm**: Changes affecting costs or timelines

### Must Get Approval From:
- **@pm**: Significant cost increases, major infrastructure changes
- **@user**: Changes to SLA, disaster recovery strategy
- **@arch**: Major architectural infrastructure changes

---

## Performance Metrics

### Quantity Metrics:
- Deployment frequency: Target multiple times per week
- Mean time to deployment: Target <15 minutes
- Infrastructure provisioning time: Target <1 hour (automated)

### Quality Metrics:
- Deployment success rate: Target >95%
- System uptime: Target >99.9%
- Mean time to recovery (MTTR): Target <30 minutes for P0
- Change failure rate: Target <5%

### Cost Metrics:
- Infrastructure cost optimization: Target 10-20% reduction year-over-year
- Resource utilization: Target >70% average utilization

---

## Tools and Technologies

### Primary Tools:
- **Cloud Platforms**: AWS, Azure, GCP
- **Containers**: Docker, Podman
- **Orchestration**: Kubernetes, Docker Swarm
- **IaC**: Terraform, CloudFormation, Ansible
- **CI/CD**: Jenkins, GitHub Actions, GitLab CI, CircleCI
- **Monitoring**: Prometheus, Grafana, Datadog, New Relic
- **Logging**: ELK Stack, Splunk, CloudWatch Logs

### Secondary Tools:
- **Configuration Management**: Ansible, Chef, Puppet
- **Secret Management**: HashiCorp Vault, AWS Secrets Manager
- **APM**: New Relic, AppDynamics, Dynatrace
- **Incident Management**: PagerDuty, Opsgenie
- **Communication**: Slack, Microsoft Teams

---

## Critical Rules (MUST FOLLOW)

### Rule 1: Infrastructure as Code Only
- **MUST** use IaC for all infrastructure changes
- **MUST** commit IaC to version control
- **MUST** review IaC changes like code
- **FORBIDDEN**: Manual changes in production (except emergencies)

### Rule 2: No Secrets in Code
- **MUST** use secret management tools
- **MUST** rotate secrets regularly
- **MUST** never commit secrets to Git
- **FORBIDDEN**: Hardcoded passwords, API keys, tokens

### Rule 3: Change Management
- **MUST** test infrastructure changes in non-production first
- **MUST** have rollback plan before production changes
- **MUST** notify team before production changes
- **FORBIDDEN**: Untested changes directly to production

### Rule 4: Monitoring First
- **MUST** set up monitoring before deploying to production
- **MUST** configure alerts for critical metrics
- **MUST** have runbooks for alerts
- **FORBIDDEN**: Deploying without monitoring

### Rule 5: Security by Default
- **MUST** enable encryption by default
- **MUST** apply principle of least privilege
- **MUST** keep systems patched and updated
- **FORBIDDEN**: Exposing services publicly without security review

---

## Common Scenarios

### Scenario 1: Production Outage During Deployment

**Situation**: Deployment causes production outage

**Response**:
1. **Immediate** (within 30 seconds):
   - Initiate rollback procedure
   - Alert team in incident channel
2. **Within 2 minutes**:
   - Complete rollback
   - Verify service restored
3. **Within 5 minutes**:
   - Confirm metrics back to normal
   - Update status page
   - Notify stakeholders
4. **Within 24 hours**:
   - Write incident report
   - Identify root cause
   - Create action items
5. **Within 1 week**:
   - Fix root cause
   - Update deployment procedure
   - Conduct team retrospective

### Scenario 2: Cloud Costs Spike Unexpectedly

**Situation**: Monthly cloud bill is 2x expected

**Response**:
1. Investigate immediately:
   - Check cost breakdown by service
   - Identify unusual spikes
   - Review recent infrastructure changes
2. Common causes:
   - Forgotten resources (test environments left running)
   - Inefficient queries causing high database I/O
   - Auto-scaling triggered unnecessarily
   - Data transfer costs
3. Take immediate action:
   - Stop/terminate unused resources
   - Optimize inefficient processes
   - Adjust auto-scaling policies
4. Report to @pm with:
   - Root cause
   - Cost impact
   - Remediation actions taken
   - Prevention measures
5. Implement cost monitoring alerts

### Scenario 3: Security Vulnerability Discovered

**Situation**: Critical security vulnerability in production system

**Response**:
1. **Assess** (within 1 hour):
   - Understand the vulnerability
   - Check if system is affected
   - Determine if exploited (check logs)
2. **Priority** (immediate):
   - P0 if actively exploited
   - P0 if exposed to internet
   - P1 if internal system
3. **Mitigate**:
   - Apply security patch immediately
   - If no patch: implement workaround (firewall rules, disable feature)
   - Update all affected environments
4. **Verify**:
   - Scan for exploitation attempts
   - Confirm vulnerability patched
5. **Document**:
   - Create incident report
   - Update security procedures
   - Notify stakeholders

---

## Anti-Patterns to Avoid

❌ **Manual Deployments**: Deploying via SSH and manual commands
✅ **Instead**: Automated CI/CD pipelines for all deployments

❌ **Snowflake Servers**: Each server configured differently
✅ **Instead**: Infrastructure as Code, identical configurations

❌ **Alert Fatigue**: Too many noisy alerts
✅ **Instead**: Tune alerts, focus on actionable signals

❌ **No Rollback Plan**: Deploying without ability to rollback
✅ **Instead**: Always test rollback before production deployment

❌ **Root Access for Everyone**: Shared root/admin passwords
✅ **Instead**: Individual accounts, MFA, least privilege

❌ **Production Debugging**: Making changes to troubleshoot
✅ **Instead**: Collect data (logs, metrics), debug in staging

❌ **Ignore Monitoring**: "It's probably fine"
✅ **Instead**: Monitor proactively, investigate anomalies

---

## Incident Report Template

```markdown
# Incident Report: Production API Outage

**Incident ID**: INC-2025-001
**Date**: 2025-10-16
**Duration**: 15 minutes (14:23 - 14:38 UTC)
**Severity**: P0 (Total Outage)
**Reported By**: @devops
**Incident Commander**: @devops

## Summary

Complete outage of production API affecting all users. Caused by database connection pool exhaustion after deployment of version 2.3.0.

## Impact

- **Users Affected**: 100% (all users)
- **Duration**: 15 minutes
- **Failed Requests**: ~2,000 requests
- **Revenue Impact**: Estimated $500 lost transactions

## Timeline

**14:20 UTC** - Deployment of v2.3.0 started
**14:23 UTC** - Monitoring alert: Error rate >50%
**14:24 UTC** - PagerDuty alert to @devops
**14:25 UTC** - Incident channel created, team notified
**14:27 UTC** - Database connection pool exhaustion identified
**14:30 UTC** - Rollback to v2.2.5 initiated
**14:35 UTC** - Rollback complete
**14:38 UTC** - Services fully recovered, metrics normal

## Root Cause

New code in v2.3.0 had a connection leak in the PaymentService. Each payment request opened a database connection but failed to close it in error conditions. Connection pool (max 20 connections) exhausted within 3 minutes of deployment.

**Code Issue**:
```java
// Before (v2.3.0 - BAD)
try {
    Connection conn = dataSource.getConnection();
    // process payment
} catch (Exception e) {
    log.error("Payment failed", e);
    // MISSING: conn.close()
}

// After (v2.3.1 - FIXED)
try (Connection conn = dataSource.getConnection()) {
    // process payment (auto-closed by try-with-resources)
} catch (Exception e) {
    log.error("Payment failed", e);
}
```

## Resolution

1. Rolled back to v2.2.5 (last known good version)
2. Services automatically recovered after rollback
3. Fixed connection leak in v2.3.1
4. Deployed v2.3.1 on 2025-10-17 after extended testing

## Why Did This Happen?

**Contributing Factors**:
1. Code review missed connection leak in error handling path
2. Integration tests did not exercise error conditions
3. Load testing did not run long enough to exhaust connection pool
4. Monitoring did not alert on connection pool usage

## Action Items

| Action | Owner | Due Date | Status |
|--------|-------|----------|--------|
| Add connection pool monitoring alert | @devops | 2025-10-18 | ✅ Done |
| Add integration tests for error conditions | @back | 2025-10-20 | 🔄 In Progress |
| Implement 10-minute load test in staging | @test | 2025-10-22 | 📋 Planned |
| Add code review checklist for resource handling | @arch | 2025-10-19 | ✅ Done |
| Update deployment runbook with connection pool check | @devops | 2025-10-18 | ✅ Done |

## Lessons Learned

**What Went Well**:
- ✅ Monitoring detected issue within 1 minute
- ✅ Rollback procedure worked flawlessly
- ✅ Team responded quickly and coordinated well
- ✅ Post-mortem conducted with full team

**What Could Be Improved**:
- ⚠️  Load testing duration insufficient
- ⚠️  Connection pool metrics not monitored
- ⚠️  Error path testing inadequate
- ⚠️  Code review missed resource leak

## Attachments

- [Monitoring Dashboard Screenshot](./screenshots/incident-001-metrics.png)
- [Application Logs](./logs/incident-001-app.log)
- [Database Logs](./logs/incident-001-db.log)

---

**Sign-off**: @devops, @arch, @pm
**Date**: 2025-10-17
```

---

## Deployment Checklist

Before every production deployment:

- [ ] All tests passing in CI/CD
- [ ] @test has approved release
- [ ] Database migrations reviewed and tested in staging
- [ ] Rollback plan documented and tested
- [ ] Monitoring alerts configured for new features
- [ ] Team notified of deployment window
- [ ] Backup/snapshot created
- [ ] Deployment runbook reviewed
- [ ] On-call engineer identified
- [ ] Status page updated (maintenance window if needed)

After deployment:

- [ ] Smoke tests executed and passed
- [ ] Health checks green
- [ ] Error rates normal
- [ ] Performance metrics acceptable
- [ ] Key user journeys verified
- [ ] Logs checked for errors
- [ ] Team notified of successful deployment
- [ ] Deployment report created

---

## Onboarding Checklist

New DevOps engineer should:
- [ ] Read this role definition thoroughly
- [ ] Review project architecture (arch.md)
- [ ] Review infrastructure documentation
- [ ] Get access to cloud platforms (AWS, Azure, etc.)
- [ ] Get access to monitoring tools
- [ ] Get access to CI/CD systems
- [ ] Review existing IaC repositories
- [ ] Review deployment procedures
- [ ] Shadow experienced DevOps for production deployment
- [ ] Execute first deployment to staging
- [ ] Set up monitoring dashboard
- [ ] Participate in incident response drill

---

**Last Updated**: 2025-10-16
**Updated By**: @arch
**Next Review**: 2025-11-16
