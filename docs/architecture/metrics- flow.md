# Metrics Flow

This document explains how metrics flow through the observability stack—from infrastructure and workloads to dashboards.

---

## 🔁 High-Level Metrics Flow

Kubernetes Nodes / Pods
↓
Node Exporter / kube-state-metrics
↓
Prometheus
↓
Grafana Dashboards


---

## 📥 Metrics Sources

### Node-Level Metrics
Collected by **node-exporter**:
- CPU usage
- Memory usage
- Disk I/O
- Network traffic

These metrics answer:
> “Is the infrastructure under pressure?”

---

### Cluster & State Metrics
Collected by **kube-state-metrics**:
- Pod status
- Deployment replicas
- Node readiness
- Resource requests vs limits

These metrics answer:
> “Is Kubernetes behaving as expected?”

---

### Application Metrics (Optional)
If applications expose metrics endpoints:
- Prometheus scrapes them via ServiceMonitors
- Metrics are scoped by namespace

These metrics answer:
> “How are workloads performing?”

---

## 📦 Prometheus Role

Prometheus:
- Periodically scrapes all configured targets
- Stores time-series metrics
- Acts as the **single source of truth** for metrics

Retention and scrape intervals are tuned for:
- Bare-metal clusters
- Limited CPU and storage resources

---

## 📊 Grafana Role

Grafana:
- Queries Prometheus
- Renders dashboards
- Aggregates metrics by:
  - Node
  - Namespace
  - Workload

Dashboards are:
- Imported as JSON
- Version-controlled
- Reproducible across environments

---

## 🔄 Metrics Server Flow

Kubelet
↓
Metrics Server
↓
Kubernetes API
↓
HPA / kubectl top