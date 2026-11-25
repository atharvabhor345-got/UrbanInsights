# Urban Insights — Integrated Review

## Final technology mapping
| Subject | Technology | Folder |
|---|---|---|
| OOP | Java | `java-backend/` |
| DSA | C++ | `dsa/` |
| COA / Assembly | NASM Assembly + small C++ bridge | `assembly/` |
| Computer Graphics | WebGL + native OpenGL demo | `opengl/` |
| Database | PostgreSQL | `database/` |
| Frontend | HTML/CSS/JavaScript | `frontend/` |

The old C++ OOP backend is preserved in `legacy_cpp_oop/` for reference only. It is no longer the active backend.

## Run the project
1. Load PostgreSQL: `database/schema.sql`, then `database/seed.sql` and optionally `database/demo_data.sql`. Run `database/demo_admin_access.sql` to enable the seeded demo admin accounts.
2. Set `DB_HOST`, `DB_PORT`, `DB_NAME`, `DB_USER`, and `DB_PASSWORD` in the environment used to launch Java. The backend defaults to database `urbaninsights`; set `DB_PASSWORD` to your PostgreSQL password when password authentication is enabled.
3. Optional AI complaint suggestions use an OpenAI-compatible chat-completions API. Set `AI_API_KEY`; optionally set `AI_API_URL` (defaults to OpenAI's chat-completions endpoint) and `AI_MODEL` (defaults to `gpt-4o-mini`). Keep the key in the server environment and never in frontend files.
4. Install JDK 17+ and Maven.
5. From `java-backend/`: `mvn clean package`.
6. Run: `java -jar target/urban-insights-backend-1.0.0.jar`.
7. Open `http://localhost:8080/`.

The frontend keeps the existing `/api/...` paths, so the Java backend replaces the C++ HTTP server without requiring a frontend rewrite.

For local demo sign-in, choose **Admin Sign In** and use `priya@uinsights.gov.in` or `karan@uinsights.gov.in` with password `AdminDemo#2026`. These shared credentials are for development only; replace them before any non-local deployment.

## Course integration
- Java classes demonstrate abstraction, encapsulation, inheritance and polymorphism through `Complaint` subclasses and the `User -> Citizen/Admin/SuperAdmin` hierarchy.
- C++ DSA implementations remain in `dsa/`.
- NASM severity engine remains in `assembly/severity.asm` and can be built as a standalone bridge using `assembly/severity_runner.cpp`.
- PostgreSQL remains the common persistent data store.
