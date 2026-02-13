# QA Automation Demo

Este proyecto automatiza un control de calidad básico para entregables (QA) usando GitHub Actions.

## Qué hace el pipeline (en cada push / pull request)
1. Instala dependencias
2. Verifica archivos obligatorios
3. Ejecuta ESLint
4. Ejecuta un smoke test (node src/app.js)

## Objetivo
Reducir errores por omisión y estandarizar validaciones antes de entregar.
