#!/usr/bin/env bash
set -e

echo "Verifying Kubernetes resource metrics..."

echo ""
echo "Checking Metrics Server availability"
kubectl get deployment metrics-server -n kube-system >/dev/null 2>&1 \
  && echo "Metrics Server deployment found" \
  || echo "Metrics Server not found"

echo ""
echo "kubectl top nodes"
kubectl top nodes || echo "⚠️ Unable to fetch node metrics"

echo ""
echo "kubectl top pods (all namespaces)"
kubectl top pods -A || echo "⚠️ Unable to fetch pod metrics"

echo ""
echo "✅ Metrics verification completed"
