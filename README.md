# Observability Stack for Kubernetes (Bare-Metal)

This repository contains a **production-style observability stack** designed for a **bare-metal Kubernetes cluster**, with a strong focus on **metrics, dashboards, and SRE practices**.

The stack is built and operated the same way platform and SRE teams manage observability in real-world environments—declarative, reproducible, and GitOps-friendly.

---

## 🎯 Project Goals

- Provide deep visibility into Kubernetes clusters and workloads
- Monitor node, cluster, namespace, and application-level metrics
- Enable proactive troubleshooting and performance analysis
- Practice production-grade observability and SRE workflows
- Keep everything reproducible and version-controlled

---

## 🏗️ Architecture Overview

**Core Components**
- **Prometheus** – Metrics collection and storage
- **Grafana** – Visualization and dashboards
- **Metrics Server** – Resource metrics for autoscaling
- **Kubernetes Namespaces** – Isolation for observability workloads

**Key Principles**
- Bare-metal compatible (no cloud dependencies)
- Resource-aware (suitable for constrained hardware)
- Separation of platform, observability, and application concerns
- Version-controlled dashboards and configuration

---

## 📁 Repository Structure

observability-stack/
├── docs/
│ ├── architecture/
│ ├── setup/
│ ├── operations/
│ └── sre/
│
├── kubernetes/
│ ├── namespaces/
│ ├── prometheus/
│ ├── grafana/
│ │ └── dashboards/
│ └── metrics-server/
│
├── scripts/
├── ci-cd/
│ └── github-actions/
│
├── README.md
└── .gitignore


---

## 📊 Dashboards Included

All dashboards are **version-controlled** and imported as JSON.

- Kubernetes Cluster Overview
- Node Exporter Full (node-level metrics)
- Namespace Resource Usage
- Microservices Application Overview

This ensures observability remains **consistent across environments**.

---

## 🚀 Deployment Approach

The observability stack is deployed using:
- Kubernetes manifests
- Helm values for Prometheus
- GitHub Actions for automated deployment (GitOps-style)

No manual click-ops are required.

---

## 🛠️ Operations & SRE Practices

This project also documents:
- Golden signals (latency, traffic, errors, saturation)
- Observability validation checklists
- Troubleshooting and scaling considerations
- Readiness for on-call and incident response

---

## 🧠 Why This Project Matters

This is **not a tutorial setup**.

It demonstrates:
- Real-world observability design decisions
- Platform engineering mindset
- SRE-oriented monitoring and validation
- Clean separation of concerns in Kubernetes

---

## 📌 Future Enhancements

- Alerting rules (SLI/SLO-based)
- Distributed tracing (OpenTelemetry)
- Centralized logging (ELK / Loki)
- Dashboard auto-provisioning
