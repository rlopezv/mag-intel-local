#!/bin/bash

# Nombre del proyecto
PROJECT_NAME="mag-intel-local"

echo "🚀 Generando placeholders para los 9 documentos clave..."

# 1. Crear estructura de carpetas (asegurando todas las necesarias)
folders=(
    "docs/business"
    "docs/architecture"
    "docs/data"
    "docs/llm"
    "docs/qa"
    "docs/operations"
)

for folder in "${folders[@]}"; do
    mkdir -p "$folder"
    touch "$folder/.gitkeep"
done

# 2. Definir función para crear placeholders rápidos
create_doc() {
    cat <<EOF > "$1"
---
document: $2
status: Draft
last_refined_by: AI-Coworker
version: 1.0
---
# $2: $PROJECT_NAME

## 1. Introducción
[Breve descripción del propósito de este documento]

## 2. Puntos Clave
- [Punto 1]
- [Punto 2]

## 3. Notas de Coworking
> Espacio para anotar insights o prompts útiles generados durante la creación de esta sección.
EOF
    echo "  📄 Creado: $1"
}

# 3. Generar los 9 documentos de tu lista
create_doc "docs/business/01_project_brief.md" "Project Brief"
create_doc "docs/business/02_prd.md" "Product Requirements Document (PRD)"
create_doc "docs/architecture/01_architecture_overview.md" "Architecture Overview"
create_doc "docs/data/01_domain_model.md" "Domain Model & Data Model"
create_doc "docs/architecture/02_tdd.md" "Technical Design Document (TDD)"
create_doc "docs/llm/01_llm_integration_spec.md" "LLM Integration Spec"
create_doc "docs/qa/01_evaluation_plan.md" "Evaluation Plan"
create_doc "docs/operations/01_operational_spec.md" "Operational Spec"
create_doc "docs/qa/02_test_strategy.md" "Test Strategy"

echo "✨ Todos los placeholders han sido creados en /docs."
echo "💡 Próximo paso: Abrir docs/business/01_project_brief.md para iniciar el análisis."
