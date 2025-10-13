#!/usr/bin/env bash

echo "Observability Stack Health Check"

echo ""
echo "Monitoring namespace status"
kubectl get ns monitoring || echo "monitoring namespace missing"

echo ""
echo "Monitoring pods"
kubectl get pods -n monitoring

echo ""
echo "Prometheus service"
kubectl get svc -n monitoring | grep prometheus || echo "⚠️ Prometheus service not found"

echo ""
echo "Grafana service"
kubectl get svc -n monitoring | grep grafana || echo "⚠️ Grafana service not found"

echo ""
echo "Failed monitoring pods"
kubectl get pods -n monitoring | grep -E 'CrashLoopBackOff|Error' || echo "No failed pods"

echo ""
echo "✅ Observability health check completed"
