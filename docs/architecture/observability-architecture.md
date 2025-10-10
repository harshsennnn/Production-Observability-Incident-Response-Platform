# Observability Architecture

This document describes the architecture of the observability stack deployed on a **bare-metal Kubernetes cluster**.  
The goal is to provide **reliable, actionable visibility** into cluster health, infrastructure usage, and application behavior.

---

## 🎯 Architecture Goals

- End-to-end visibility into Kubernetes clusters and workloads
- Clear separation between **platform**, **observability**, and **application** concerns
- Lightweight and resource-aware for constrained environments
- Reproducible and GitOps-friendly setup
- Aligned with SRE best practices

---

## 🧱 Core Components

### Prometheus
- Collects metrics from:
  - Kubernetes API
  - kube-state-metrics
  - node-exporter
  - application endpoints (if exposed)
- Stores time-series data locally
- Tuned for short retention to reduce storage pressure

### Grafana
- Visualizes Prometheus metrics
- Uses version-controlled dashboards
- Provides:
  - Cluster-level visibility
  - Node-level resource monitoring
  - Namespace and workload insights

### Metrics Server
- Provides resource metrics to Kubernetes
- Enables Horizontal Pod Autoscaling (HPA)
- Complements Prometheus (not a replacement)

---

## 🗂️ Namespace Design

All observability components run inside a dedicated namespace:

