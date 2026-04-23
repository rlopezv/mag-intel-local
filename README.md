# mag-intel-local

Pipeline local de inteligencia documental para la clasificación y extracción semántica de revistas (PDF/ZIP/RAR/7z). Utiliza una arquitectura de **degradación elegante** (Heurística > LLM > RAG) optimizada para ejecución en hardware de consumo.

## 🚀 Stack Tecnológico
- **IA:** Ollama (`qwen2.5:7b` / `qwen2:0.5b` para SAG).
- **Procesamiento:** Python 3.11+, PyMuPDF, Tesseract OCR.
- **Extracción:** 7-Zip CLI backend.
- **Persistencia:** SQLite (SQLModel) + LanceDB (Vector Store).
- **Hardware:** RTX 5060 Ti (16 GB VRAM).

## 🛠️ Entorno de Desarrollo (IA-Ready)
El repositorio está configurado para maximizar la colaboración con asistentes de IA (Claude, Copilot, Cursor):
- **`.devcontainer/`**: Entorno aislado con Docker que incluye Tesseract, 7-Zip y soporte para GPU NVIDIA.
- **`.github/copilot-instructions.md`**: Reglas de estilo y arquitectura para que la IA genere código coherente (Clean Code + Protocols).
- **[ADR Log](./docs/architecture/adr/)**: Registro histórico de decisiones técnicas para mantener el contexto del proyecto.

## 📂 Contenido del Repositorio
- [`/docs/`](./docs/): Implementación de **Docs-as-Code**.
- [`/src/`](./src/): Código fuente organizado por motores y núcleo de lógica.

## 📂 Centro de Documentación
Este proyecto sigue una metodología de **Docs-as-Code**. 

**Estándar de Documentación (Frontmatter)**
Estos documentos deben comenzar con el siguiente bloque YAML para facilitar el contexto a los asistentes de IA:

```yaml
---
document: [Nombre del Documento]
status: [Draft | Review | Approved]
last_refined_by: [User | AI-Coworker]
version: [X.X]
---
```

El diseño y análisis se divide en las siguientes áreas:

### 1. Definición de Negocio y Producto
- [01. Project Brief](./docs/business/01_project_brief.md): Visión general y restricciones duras.
- [02. PRD](./docs/business/02_prd.md): Requisitos funcionales y criterios de aceptación.

### 2. Arquitectura y Diseño Técnico
- [Registro de ADRs](./docs/architecture/adr/): Bitácora de decisiones arquitectónicas.
- [03. Architecture Overview](./docs/architecture/01_architecture_overview.md): Módulos principales y flujo C4.
- [04. Domain & Data Model](./docs/data/01_domain_model.md): Metamodelo de revistas y esquemas de base de datos.
- [05. TDD (Technical Design)](./docs/architecture/02_tdd.md): Detalles de implementación y contratos de interfaz.
- [06. LLM Integration Spec](./docs/llm/01_llm_integration_spec.md): Estrategia de prompts, JSON Schemas y configuración de Ollama.

### 3. Calidad y Operaciones
- [07. Evaluation Plan](./docs/qa/01_evaluation_plan.md): Golden Set y métricas de precisión de extracción.
- [08. Operational Spec](./docs/operations/01_operational_spec.md): Guía de instalación de binarios y gestión de modelos.
- [09. Test Strategy](./docs/qa/02_test_strategy.md): Estrategia de tests unitarios, integración y regresión.


## 🛠️ Desarrollo (Coworking Mode)
Este repositorio está diseñado para ser co-creado con IA. Cada documento incluye una sección de **Notas de Coworking** para registrar los prompts y decisiones clave tomadas durante el proceso de diseño.

### 🤖 Workflow de Coworking
1. **Analizar:** Revisar los placeholders en `/docs`.
2. **Documentar:** Refinar el diseño usando los archivos `.md`.
3. **Registrar:** Anotar prompts y decisiones en la sección "Notas de Coworking" de cada documento.
4. **Implementar:** Seguir los contratos definidos en las interfaces de la carpeta `/src`.
