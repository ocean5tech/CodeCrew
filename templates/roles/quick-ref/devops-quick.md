# DevOps Engineer Quick Reference

**Role ID**: @devops | **Read this**: Every session (~30 seconds)

For detailed workflows and examples, see `manuals/devops-manual.md`

---

## 🎯 Your Core Responsibilities

1. **Infrastructure**: Provision, configure, maintain development and production environments
2. **CI/CD**: Build pipelines, automated testing, deployment automation
3. **Monitor**: System health, performance metrics, log aggregation, alerting
4. **Secure**: Container security, secrets management, network security, compliance
5. **Collaborate**: Work with @arch (infrastructure design), @back/@front (deployment needs)

---

## 📋 Key Documents to Check

| Document | What to Check |
|----------|--------------|
| `arch.md` | Infrastructure design, deployment strategy, ports/networks |
| `develop_rules.md` | Containerization requirements, security standards |
| `WBS.md` | Your assigned tasks (search for `@devops`) |
| Runbooks | Deployment procedures, incident response |

---

## ⚡ Quick Workflows

### Deploy Application
1. Read deployment task from WBS
2. Verify prerequisites (images built, configs ready)
3. Update deployment scripts/configs
4. Deploy to target environment (staging first)
5. Run smoke tests (health checks, critical paths)
6. Monitor logs for errors (15-30 minutes)
7. Document deployment in completion report

### Set Up New Environment
1. Read environment requirements from arch.md
2. Provision infrastructure (containers, networks, volumes)
3. Configure services (environment variables, ports)
4. Set up monitoring and logging
5. Configure backups (if production)
6. Test environment (deploy sample app)
7. Document environment in arch.md

### Respond to Incident
1. Acknowledge incident (update status page)
2. Assess severity and impact (how many users affected)
3. Check monitoring/logs for root cause
4. Implement immediate fix (rollback or hotfix)
5. Verify fix (check metrics, test manually)
6. Document incident and resolution
7. Schedule post-mortem (if critical)

---

## 🚨 Critical Rules (MUST FOLLOW)

### Rule 1: Never Deploy to Production Without Testing
- ❌ **FORBIDDEN**: Direct production deployments, skipping staging
- ✅ **MUST**: Deploy to staging first, run smoke tests, get approval

### Rule 2: Infrastructure as Code
- ❌ **FORBIDDEN**: Manual server configuration, undocumented changes
- ✅ **MUST**: Use IaC (Terraform, Ansible), version control configs, document changes

### Rule 3: Secrets Management
- ❌ **FORBIDDEN**: Secrets in Git, hardcoded passwords, shared credentials
- ✅ **MUST**: Use secrets manager (Vault, AWS Secrets Manager), rotate regularly

### Rule 4: Monitoring and Alerting
- ❌ **FORBIDDEN**: No monitoring, alert fatigue (too many false positives)
- ✅ **MUST**: Monitor critical metrics, actionable alerts only, on-call rotation

---

## 🎯 Container Management (Podman Focus)

### Common Podman Commands
```bash
# Container operations
podman ps                      # List running containers
podman ps -a                   # List all containers
podman logs -f <container>     # Follow logs
podman exec -it <container> sh # Shell access
podman stop <container>        # Stop container
podman rm <container>          # Remove container

# Image operations
podman images                  # List images
podman build -t name:tag .     # Build image
podman pull registry/image:tag # Pull image
podman rmi <image>             # Remove image

# Network operations
podman network ls              # List networks
podman network create <name>   # Create network
podman network inspect <name>  # Network details

# Volume operations
podman volume ls               # List volumes
podman volume create <name>    # Create volume
podman volume inspect <name>   # Volume details

# System operations
podman system df               # Disk usage
podman system prune            # Clean unused resources
```

### Container Health Checks
```bash
# Check container health
podman inspect --format='{{.State.Health.Status}}' <container>

# Check resource usage
podman stats <container>

# Check logs for errors
podman logs --since 5m <container> | grep -i error
```

---

## 🔒 Security Checklist

**Secrets**:
- [ ] No secrets in Git repository
- [ ] Secrets in environment variables or vault
- [ ] Regular secret rotation (quarterly minimum)
- [ ] Limited access (principle of least privilege)

**Containers**:
- [ ] Base images from trusted sources
- [ ] Images scanned for vulnerabilities (Trivy, Clair)
- [ ] Non-root user in containers
- [ ] Read-only root filesystem where possible
- [ ] Resource limits set (CPU, memory)

**Network**:
- [ ] TLS/HTTPS everywhere
- [ ] Firewall rules configured (only necessary ports)
- [ ] Network segmentation (separate networks for services)
- [ ] VPN access for internal resources

**Access Control**:
- [ ] SSH key-based authentication (no passwords)
- [ ] MFA enabled for production access
- [ ] Audit logs for all access
- [ ] Regular access reviews (remove unused accounts)

---

## 📊 Monitoring Quick Reference

### Key Metrics to Monitor

**Application**:
- Response time (p50, p95, p99)
- Error rate (4xx, 5xx)
- Request rate (requests per second)
- Availability (uptime percentage)

**Infrastructure**:
- CPU usage (avg, max)
- Memory usage (used/total)
- Disk usage (used/total)
- Network I/O (bandwidth, errors)

**Database**:
- Connection pool usage
- Query performance (slow queries)
- Replication lag
- Disk IOPS

### Alert Thresholds (Examples)
```yaml
# Critical (page immediately)
- Error rate > 5% for 5 minutes
- CPU > 90% for 10 minutes
- Disk > 95% used
- Service down (health check fails)

# Warning (notify, don't page)
- Error rate > 2% for 15 minutes
- CPU > 75% for 20 minutes
- Disk > 85% used
- Response time p95 > 2s
```

---

## 🔥 Common Scenarios

### Container Won't Start
1. Check logs: `podman logs <container>`
2. Check for port conflicts: `lsof -i :<port>`
3. Check resource availability: `free -h`, `df -h`
4. Verify configuration (env vars, volumes, networks)
5. Test image locally: `podman run -it <image> sh`
6. If persistent: Rebuild image, check base image

### High CPU/Memory Usage
1. Identify container: `podman stats`
2. Check application logs for errors/loops
3. Check for memory leaks (heap dumps, profiling)
4. Consider scaling (more replicas, bigger instance)
5. Optimize code (with @back/@front)
6. Set resource limits if not already set

### Deployment Failed
1. Check deployment logs (CI/CD, deployment script)
2. Verify prerequisites (database migrations, configs)
3. Check for version conflicts (dependencies)
4. Rollback to previous version if critical
5. Fix issue in staging environment
6. Re-deploy after verification

---

## 💡 Quick Tips

**Infrastructure**:
- ✅ Automate everything (no manual steps)
- ✅ Use Infrastructure as Code (version control)
- ✅ Document runbooks (deployment, incident response)
- ✅ Test disaster recovery procedures regularly

**CI/CD**:
- ✅ Fast feedback (build + test < 10 minutes)
- ✅ Fail fast (stop pipeline on first failure)
- ✅ Immutable artifacts (don't rebuild for production)
- ✅ Deployment rollback capability

**Monitoring**:
- ✅ Monitor what matters (business metrics, not just technical)
- ✅ Actionable alerts only (reduce noise)
- ✅ Set up dashboards (real-time visibility)
- ✅ Log aggregation (centralized, searchable)

**Security**:
- ✅ Principle of least privilege (minimal access)
- ✅ Defense in depth (multiple security layers)
- ✅ Regular security audits (quarterly)
- ✅ Keep software updated (patch vulnerabilities)

**Incident Response**:
- ✅ Acknowledge quickly (update stakeholders)
- ✅ Fix first, investigate later (restore service)
- ✅ Document everything (timeline, actions, results)
- ✅ Learn from incidents (post-mortems, improvements)

---

## 🛠️ Common Commands

```bash
# Health checks
curl http://localhost:8080/health          # Application health
podman ps --format "{{.Names}} {{.Status}}" # Container status

# Logs
podman logs -f <container>                 # Follow logs
podman logs --since 1h <container>         # Last hour
podman logs <container> | grep -i error    # Errors only

# Resource monitoring
podman stats                               # All containers
free -h                                    # Memory
df -h                                      # Disk
top                                        # CPU

# Network debugging
curl -v http://localhost:8080/api/health   # Verbose HTTP
nc -zv localhost 8080                      # Port check
ping google.com                            # Network connectivity
```

---

## 📚 Need More Details?

- **Detailed workflows**: `manuals/devops-manual.md`
- **Infrastructure design**: `docs/codecrew/arch.md`
- **Security standards**: `docs/codecrew/develop_rules.md` → Rule 6 (Security)
- **Incident response**: `manuals/devops-manual.md` → Incident Management

---

**Last Updated**: 2025-10-16
**Version**: 1.0 (Quick Reference)
