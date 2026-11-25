# Urban Insights — Updated Architecture

The active application architecture was changed so the OOP course is implemented in Java while DSA remains C++.

## Active modules
- `java-backend/` — Java 17 HTTP API, OOP model and JDBC PostgreSQL access.
- `dsa/` — existing C++ data structures and algorithms.
- `assembly/` — NASM severity engine and optional C++ bridge.
- `frontend/` — existing dashboard and complaint UI.
- `database/` — existing PostgreSQL schema/seed/demo data.
- `opengl/` — existing WebGL/native OpenGL graphics modules.

## OOP CO mapping
- CO1: real-world civic entities are Java classes.
- CO2: abstraction + encapsulation + inheritance + polymorphism are demonstrated by Complaint and User hierarchies.
- CO3: each complaint category overrides its own priority calculation.
- CO4: complaint creation flows through a Java object, severity evaluation, validation and database persistence.

## Important
`legacy_cpp_oop/` is not the active OOP implementation. It is retained only so earlier work is not lost.
