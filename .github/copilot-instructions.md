# Contexto de Ingeniería: mag-intel-local

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
