FROM ://microsoft.com

# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    tesseract-ocr \
    libtesseract-dev \
    p7zip-full \
    ffmpeg libsm6 libxext6 \
    && apt-get clean

# Instalar Ollama CLI (opcional, si quieres controlarlo desde dentro)
RUN curl -fsSL https://ollama.com | sh

USER vscode
