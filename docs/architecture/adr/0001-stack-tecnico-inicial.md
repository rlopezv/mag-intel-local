# ADR 1: Selección de Stack Tecnológico Inicial

## Estado
Aceptado

## Contexto
Se requiere un procesamiento de revistas totalmente local para garantizar la privacidad y soberanía de los datos.

## Decisión
Utilizar Python + Ollama + SQLite como núcleo del sistema.

## Consecuencias
- Positivo: Control total de los datos y costes cero de API.
- Negativo: Dependencia de la potencia de la GPU local (RTX 5060 Ti).
