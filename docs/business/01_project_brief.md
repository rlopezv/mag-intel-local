---
document: Project Brief
status: Draft
last_refined_by: AI-Coworker
version: 1.1
---
# Project Brief: mag-intel-local

## 1. Introducción
El proyecto **mag-intel-local** tiene como objetivo crear un sistema de inteligencia documental totalmente privado y local. El propósito es automatizar la ingesta, clasificación y extracción semántica de metadatos de revistas y publicaciones digitales utilizando un stack moderno (Ollama + Tesseract + Python) optimizado para una GPU RTX 5060 Ti.

## 2. Puntos Clave
- **Soberanía de Datos:** Procesamiento 100% offline, garantizando que el contenido de las publicaciones nunca salga del entorno local.
- **Pipeline de 3 Niveles:** Implementación de un flujo de degradación elegante:
  1. Heurística/Texto nativo (Rápido/Barato).
  2. Inferencia LLM estructurada (Ollama).
  3. RAG Táctico (Análisis profundo para casos complejos).
- **Eficiencia en Inferencia:** Uso de **SAG (Speculative Automated Generation)** para maximizar los 16GB de VRAM disponibles.
- **Extracción Estructurada:** Salida obligatoria en JSON validado mediante Pydantic para asegurar la integridad de la base de datos SQLite.

## 3. Notas de Coworking
> **Prompt de Refinamiento utilizado (ver v1.1 en library.md):** 
> "Actúa como un Senior Solution Architect. Identifica 3 riesgos técnicos críticos... [Ver respuesta completa en el chat]"
> 
> **Insights clave del análisis:**
> 1. Riesgo de "VRAM Starvation" al usar SAG (modelo 7B + modelo 0.5B).
> 2. Necesidad de gestión estricta de procesos para el binario de 7-Zip.
> 3. Se añade la restricción "Fail-Fast" para no gastar GPU en documentos ilegibles.
