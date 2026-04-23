#!/bin/bash

PROJECT_NAME="mag-intel-local"

echo "🛠️ Refinando estructura de $PROJECT_NAME..."

# 1. Crear directorios de forma explícita
mkdir -p docs/business
mkdir -p docs/architecture/adr
mkdir -p docs/data
mkdir -p docs/llm/prompts
mkdir -p docs/qa
mkdir -p docs/operations
mkdir -p .github
mkdir -p src/core src/engines src/api
mkdir -p tests/fixtures tests/unit tests/integration

# 2. Crear .gitkeep en cada carpeta para asegurar que Git las siga
find . -type d -not -path '*/.*' -exec touch {}/.gitkeep \;

# 3. Crear el archivo de instrucciones de Copilot (Asegurando que el directorio existe)
if [ -d ".github" ]; then
cat <<EOF > .github/copilot-instructions.md
# Contexto de Ingeniería: $PROJECT_NAME

## Arquitectura y Estilo
- **Patrón:** Clean Code basado en Interfaces (Protocols).
- **Prioridad:** Simplicidad. Evitar herencia pesada y mappers innecesarios.
- **Validación:** Pydantic v2.
- **Tipado:** Type hints obligatorios.

## Restricciones Técnicas
- **Entorno:** 100% Local.
- **IA:** Ollama (qwen2.5:7b).
- **Hardware:** RTX 5060 Ti (16 GB VRAM).
- **Pipeline:** Degradación elegante (Heurística > LLM > RAG).
EOF
    echo "  ✅ Creado: .github/copilot-instructions.md"
else
    echo "  ❌ Error: No se pudo crear el directorio .github"
fi
