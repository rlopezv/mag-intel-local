# ADR 2 Uso de Interfaces (Protocols) sobre Arquitectura Hexagonal

## Estado
Aceptado

## Contexto
Se debatió entre Arquitectura Hexagonal y Clean Code basado en interfaces para reducir el boilerplate en Python.

## Decisión
Se opta por utilizar Python Protocols para definir contratos entre componentes (OCR, AI, DB).

## Consecuencias
- **Positivo:** Código más legible y menos archivos de "pasarela" (mappers).
- **Positivo:** Facilidad para mocking en tests unitarios.
- **Negativo:** Requiere disciplina en la inyección de dependencias manual.
