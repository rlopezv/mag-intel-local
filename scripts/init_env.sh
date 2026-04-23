#!/bin/bash

# 1. Crear directorio del contenedor
mkdir -p .devcontainer

# 2. Crear el devcontainer.json (Configuración de VSCode)
cat <<EOF > .devcontainer/devcontainer.json
{
    "name": "mag-intel-local-dev",
    "build": {
        "dockerfile": "Dockerfile"
    },
    "runArgs": ["--gpus", "all"],
    "customizations": {
        "vscode": {
            "extensions": [
                "ms-python.python",
                "ms-python.vscode-pylance",
                "charliermarsh.ruff",
                "tamasfe.even-better-toml",
                "jebbs.mermaid"
            ]
        }
    },
    "remoteUser": "vscode"
}
EOF

# 3. Crear el Dockerfile (Instalación de binarios)
cat <<EOF > .devcontainer/Dockerfile
FROM ://microsoft.com

# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \\
    tesseract-ocr \\
    libtesseract-dev \\
    p7zip-full \\
    ffmpeg libsm6 libxext6 \\
    && apt-get clean

# Instalar Ollama CLI (opcional, si quieres controlarlo desde dentro)
RUN curl -fsSL https://ollama.com | sh

USER vscode
EOF

echo "✅ Estructura de DevContainer creada. VSCode detectará el entorno al abrir la carpeta."
