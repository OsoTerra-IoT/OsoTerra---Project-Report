<div style="page-break-before: always; break-before: page;"></div>

# Capítulo VI: Product Implementation, Validation & Deployment

## 6.1. Software Configuration Management

Esta sección fija las decisiones y convenciones que mantienen la consistencia de los productos de OsoSense durante todo su ciclo de vida: con qué herramientas trabaja el equipo, cómo se organiza el código en GitHub, cómo se escribe en cada lenguaje y cómo se despliega cada producto. Todo lo que se describe aquí se aplica desde el Sprint 1 y se puede verificar en los repositorios de la organización OsoTerra-IoT (<https://github.com/OsoTerra-IoT>).

### 6.1.1. Software Development Environment Configuration

El equipo usa solo las herramientas indicadas en el enunciado. La tabla agrupa cada producto por la actividad del ciclo de vida en la que se usa, con su propósito en el proyecto y la ruta de acceso (SaaS) o de descarga (software que se instala en la computadora de cada integrante).

**Project Management y Requirements Management**

| Producto | Propósito en el proyecto | Ruta |
|---|---|---|
| Trello<br><img src="../assets/tools/trello.png" alt="Logo de trello" width="44"> | Product Backlog, Sprint Backlog y tablero de tareas del sprint. | https://trello.com/b/adykOjs5/ososense-backlog |
| GitHub (organización y pull requests)<br><img src="../assets/tools/github.png" alt="Logo de github" width="44"> | Revisión de cambios, historial y *insights* de colaboración de cada repositorio. | https://github.com/OsoTerra-IoT |
| UXPressia | User Personas, Empathy Maps, Journey Maps e Impact Maps. | https://uxpressia.com |

**Product UX/UI Design**

| Producto | Propósito en el proyecto | Ruta |
|---|---|---|
| Figma<br><img src="../assets/tools/figma.png" alt="Logo de figma" width="44"> | Guía de estilo, wireframes, mock-ups, prototipos, arquitectura de información y diseño físico del dispositivo. | https://www.figma.com |
| FigJam | EventStorming, wireflows y user flows. | https://www.figma.com/figjam |
| Structurizr<br><img src="../assets/tools/structurizr.png" alt="Logo de structurizr" width="44"> | Diagramas C4 (Landscape, Context, Container y Deployment) a partir de Structurizr DSL. | https://structurizr.com |
| Wokwi<br><img src="../assets/tools/wokwi.png" alt="Logo de wokwi" width="44"> | Diseño y simulación del circuito del dispositivo IoT. | https://wokwi.com |

**Software Development**

| Producto | Propósito en el proyecto | Ruta |
|---|---|---|
| Git<br><img src="../assets/tools/git.png" alt="Logo de git" width="44"> | Control de versiones local. | https://git-scm.com/downloads |
| Visual Studio Code<br><img src="../assets/tools/visual-studio-code.png" alt="Logo de visual-studio-code" width="44"> | Edición del Landing Page, del informe en Markdown, del Edge Service y de la Embedded Application. | https://code.visualstudio.com/download |
| WebStorm<br><img src="../assets/tools/webstorm.png" alt="Logo de webstorm" width="44"> | Desarrollo de la Web App en Angular y TypeScript. | https://www.jetbrains.com/webstorm/download |
| IntelliJ IDEA<br><img src="../assets/tools/intellij-idea.png" alt="Logo de intellij-idea" width="44"> | Desarrollo del RESTful API con Java y Spring Boot. | https://www.jetbrains.com/idea/download |
| Android Studio<br><img src="../assets/tools/android-studio.png" alt="Logo de android-studio" width="44"> | Desarrollo de la Mobile App con Kotlin y Jetpack Compose. | https://developer.android.com/studio |
| Node.js 24 y npm<br><img src="../assets/tools/nodejs.png" alt="Logo de nodejs" width="44"> <img src="../assets/tools/npm.png" alt="Logo de npm" width="44"> | Ejecución y construcción de la Web App (Angular CLI). | https://nodejs.org/en/download |
| JDK 25 y Maven<br><img src="../assets/tools/java.png" alt="Logo de java" width="44"> <img src="../assets/tools/maven.png" alt="Logo de maven" width="44"> | Compilación y ejecución del RESTful API. | https://adoptium.net · https://maven.apache.org/download.cgi |
| PostgreSQL<br><img src="../assets/tools/postgresql.png" alt="Logo de postgresql" width="44"> | Base de datos del RESTful API en el entorno local. | https://www.postgresql.org/download |
| Python 3 con Flask, Peewee y SQLite<br><img src="../assets/tools/python.png" alt="Logo de python" width="44"> <img src="../assets/tools/flask.png" alt="Logo de flask" width="44"> <img src="../assets/tools/sqlite.png" alt="Logo de sqlite" width="44"> | Edge Service (desde el Sprint 2). | https://www.python.org/downloads |
| PlatformIO (extensión de VS Code, plataforma `espressif32` y framework Arduino)<br><img src="../assets/tools/platformio.png" alt="Logo de platformio" width="44"> | Compilación y carga de la Embedded Application en el ESP32 (desde el Sprint 2). | https://platformio.org/install/ide?install=vscode |

**Software Testing**

| Producto | Propósito en el proyecto | Ruta |
|---|---|---|
| Vitest (vía Angular CLI)<br><img src="../assets/tools/vitest.png" alt="Logo de vitest" width="44"> | Pruebas unitarias y de navegación de la Web App (`ng test`). | https://vitest.dev |
| JUnit 5 y Spring Boot Test<br><img src="../assets/tools/junit5.png" alt="Logo de junit5" width="44"> <img src="../assets/tools/spring-boot.png" alt="Logo de spring-boot" width="44"> | Pruebas unitarias y de integración del RESTful API. | https://junit.org/junit5 |
| Postman<br><img src="../assets/tools/postman.png" alt="Logo de postman" width="44"> | Pruebas manuales de los endpoints del RESTful API. | https://www.postman.com/downloads |
| pytest<br><img src="../assets/tools/pytest.png" alt="Logo de pytest" width="44"> | Pruebas unitarias y de los endpoints del Edge Service. | https://docs.pytest.org |
| Wokwi<br><img src="../assets/tools/wokwi.png" alt="Logo de wokwi" width="44"> | Simulación del firmware antes de cargarlo en el dispositivo. | https://wokwi.com |

**Software Deployment**

| Producto | Propósito en el proyecto | Ruta |
|---|---|---|
| GitHub Pages<br><img src="../assets/tools/github.png" alt="Logo de github" width="44"> | Publicación del Landing Page y de la Web App. | https://pages.github.com |
| GitHub Actions<br><img src="../assets/tools/github-actions.png" alt="Logo de github-actions" width="44"> | Construcción y publicación automática de la Web App al integrar cambios en `develop`. | https://github.com/features/actions |
| Firebase App Distribution<br><img src="../assets/tools/firebase.png" alt="Logo de firebase" width="44"> | Distribución de la Mobile App a dispositivos físicos de prueba. | https://firebase.google.com/products/app-distribution |

**Software Documentation**

| Producto | Propósito en el proyecto | Ruta |
|---|---|---|
| GitHub (Markdown)<br><img src="../assets/tools/github.png" alt="Logo de github" width="44"> <img src="../assets/tools/markdown.png" alt="Logo de markdown" width="44"> | Informe del proyecto; `README.md` es el archivo principal. | https://github.com/OsoTerra-IoT/OsoTerra---Project-Report |
| OpenAPI Specification vía Swagger<br><img src="../assets/tools/openapi.png" alt="Logo de openapi" width="44"> <img src="../assets/tools/swagger.png" alt="Logo de swagger" width="44"> | Documentación de los endpoints del RESTful API. | https://swagger.io/specification |
| Microsoft Stream / Clipchamp | Videos de exposición, del producto y de los prototipos. | https://clipchamp.com |

### 6.1.2. Source Code Management

El código de cada producto vive en su propio repositorio de GitHub, dentro de la organización OsoTerra-IoT. Los repositorios del Edge Service y de la Embedded Application se crearon en el Sprint 2, con su primera versión.

| Producto | Repositorio | Contenido |
|---|---|---|
| Landing Page | https://github.com/OsoTerra-IoT/OsoTerra---Landing-Page | Sitio estático en HTML5, CSS3 y JavaScript. |
| Web Services (RESTful API) | https://github.com/OsoTerra-IoT/OsoTerra---Backend | Proyecto Spring Boot con sus pruebas unitarias y de integración en `src/test`. |
| Frontend Web Application | https://github.com/OsoTerra-IoT/OsoTerra---Web-Application | Proyecto Angular con sus pruebas (`*.spec.ts`) y el flujo de despliegue en `.github/workflows`. |
| Mobile Application | https://github.com/OsoTerra-IoT/OsoTerra---Mobile-Application | Proyecto Android en Kotlin y Jetpack Compose. |
| Edge Service | https://github.com/OsoTerra-IoT/OsoTerra---Edge-Service | Servicio Python con Flask, Peewee y SQLite, con sus pruebas en `tests`. |
| Embedded Application | https://github.com/OsoTerra-IoT/OsoTerra---Embedded-Application | Proyecto PlatformIO para el ESP32 en C++ (framework Arduino), con el circuito de Wokwi (`diagram.json` y `wokwi.toml`). |
| Informe del proyecto | https://github.com/OsoTerra-IoT/OsoTerra---Project-Report | Capítulos en Markdown, imágenes y archivos fuente de los diagramas (Structurizr DSL y Wokwi). |

**GitFlow.** Todos los repositorios siguen el modelo *A successful Git branching model* de Vincent Driessen:

| Rama | Se crea desde | Se integra en | Uso |
|---|---|---|---|
| `main` | — | — | Versión publicada. Solo recibe *releases* y *hotfixes*. |
| `develop` | `main` | — | Integración del trabajo terminado; es la rama por defecto y la que se despliega en los entornos de prueba. |
| `feature/<descripcion-en-kebab-case>` | `develop` | `develop` | Una rama por feature o user story, por ejemplo `feature/webapp-cta-links` o `feature/github-pages-deploy`. |
| `release/<MAJOR.MINOR.PATCH>` | `develop` | `main` y `develop` | Preparación de una versión, por ejemplo `release/0.1.0`. Al cerrarla se etiqueta `v0.1.0` en `main`. |
| `hotfix/<descripcion-en-kebab-case>` | `main` | `main` y `develop` | Corrección urgente sobre la versión publicada. |

Reglas de trabajo:

- Las ramas de feature y de corrección se integran con *merge* sin *fast-forward* (`--no-ff`) o mediante pull request, para conservar en el historial qué commits pertenecen a cada feature.
- En el repositorio del informe, cada capítulo tiene su rama `feature/chapter-N` y cada sección se trabaja en una sub-rama que se integra en su capítulo; los capítulos se integran en `develop` al preparar una entrega.
- Los nombres de rama van en inglés y en *kebab-case*. Las ramas antiguas de la Mobile App con prefijo `feat/` se renombran a `feature/` a partir del Sprint 2.

**Semantic Versioning 2.0.0.** Cada *release* se nombra `MAJOR.MINOR.PATCH`: `PATCH` para correcciones compatibles, `MINOR` para funcionalidades nuevas compatibles y `MAJOR` para cambios incompatibles. Mientras los productos estén en construcción, las versiones se mantienen en `0.y.z`; la primera versión para usuarios reales será `1.0.0`. El informe sigue la misma regla: `release/0.1.0` corresponde a la entrega AV1.

**Conventional Commits.** Los mensajes de commit siguen la forma `tipo(alcance): descripción`, en inglés, en modo imperativo y en una sola línea de hasta 72 caracteres.

| Tipo | Cuándo se usa | Ejemplo real del proyecto |
|---|---|---|
| `feat` | Nueva funcionalidad. | `feat(cta): link plan and call-to-action buttons to web app sign-up` |
| `fix` | Corrección de un error. | `fix(layout): fit mobile top bar and cite each crop source in reports` |
| `docs` | Documentación e informe. | `docs(chapter-4): merge C4 views into a single OsoSense system` |
| `style` | Formato o estilos sin cambiar la lógica. | `style(a11y): raise contrast of primary and outline buttons` |
| `refactor` | Cambio de estructura sin cambiar el comportamiento. | `refactor: move password reset REST resources to iam package` |
| `test` | Pruebas nuevas o corregidas. | `test: move iam domain and application tests to iam package` |
| `ci` / `build` / `chore` | Integración continua, construcción y tareas de mantenimiento. | `ci(deploy): publish develop to GitHub Pages with SPA fallback` |

### 6.1.3. Source Code Style Guide & Conventions

Todos los nombres de variables, funciones, clases, archivos, ramas y commits se escriben en **inglés**. Los textos que ve el usuario no se escriben en el código: van en archivos de traducción (en_US y es_419), con el inglés como idioma por defecto.

| Lenguaje | Guía adoptada | Convenciones del proyecto |
|---|---|---|
| HTML5 | *Google HTML/CSS Style Guide* y *W3Schools HTML Style Guide and Coding Conventions* | Etiquetas y atributos en minúsculas, comillas dobles, sangría de 2 espacios, HTML semántico (`header`, `nav`, `main`, `section`, `footer`), `alt` en toda imagen y atributos ARIA en controles interactivos. |
| CSS3 | *Google HTML/CSS Style Guide* | Clases en *kebab-case*, colores y medidas como variables (`--os-primary-700`), sin estilos en línea salvo excepciones documentadas y respetando `prefers-reduced-motion`. |
| JavaScript | *Google JavaScript Style Guide* | `const` y `let` en lugar de `var`, funciones y variables en *camelCase*, un módulo por archivo en el Landing Page. |
| TypeScript | *Google TypeScript Style Guide* y *Angular Coding Style Guide* | Componentes *standalone*, archivos en *kebab-case* (`salinity-strip.ts`), clases en *PascalCase*, estado con *signals*, formato con Prettier y validación de traducciones con `npm run check:i18n`. |
| Java | *Google Java Style Guide* y documentación de *Spring Boot Features* | Paquetes por bounded context (`com.osoterra.ososense.iam`) con las capas `domain`, `application`, `infrastructure` e `interfaces`; clases en *PascalCase*, métodos en *camelCase*, constantes en *UPPER_SNAKE_CASE*; recursos REST en plural y en *kebab-case* (`/api/v1/soil-readings`). |
| Kotlin | *Kotlin Coding Conventions* y guías de Jetpack Compose | Funciones `@Composable` en *PascalCase*, un paquete por capa (`data`, `domain`, `ui`) y textos en `strings.xml` con versión en español. |
| C++ | *Google C++ Style Guide* | Constantes de pines en *UPPER_SNAKE_CASE* (`PIN_EC`), funciones en *camelCase* y un comentario por bloque de hardware. |
| Python | *PEP 8* | Módulos y funciones en *snake_case*, clases en *PascalCase*, modelos Peewee en singular. |
| Gherkin | *Gherkin Conventions for Readable Specifications* | Un archivo `.feature` por user story (`us-01-view-value-proposition.feature`), escenarios con *Given / When / Then* en inglés, un comportamiento por escenario y datos en tablas *Examples*. |

### 6.1.4. Software Deployment Configuration

Cada producto se construye y publica a partir de su repositorio. Al TB1 estaban desplegados el Landing Page y la Web App; en el Sprint 2 se desplegó el RESTful API en Railway y la Web App pasó a consumirlo. Los productos que todavía no están publicados tienen su configuración definida y se despliegan en los sprints siguientes.

**Landing Page** — publicado en https://osoterra-iot.github.io/OsoTerra---Landing-Page/

1. Integrar las ramas de feature en `develop` con `--no-ff`.
2. En el repositorio, *Settings → Pages*, usar como origen la rama `develop` y la carpeta raíz (`/`).
3. GitHub Pages publica el sitio en cada push a `develop`; el cambio se ve en uno o dos minutos.
4. Los botones de planes y el llamado final apuntan al registro de la Web App desplegada.

**Frontend Web Application** — publicada en https://osoterra-iot.github.io/OsoTerra---Web-Application/

1. El flujo `.github/workflows/deploy-pages.yml` se ejecuta en cada push a `develop` (o manualmente).
2. El trabajo *build* instala dependencias con `npm ci`, valida las traducciones con `npm run check:i18n` y construye con `ng build --base-href /OsoTerra---Web-Application/`.
3. Copia `index.html` como `404.html` para que las rutas internas de Angular funcionen al recargar la página, y sube la carpeta `dist/osoterra-web-app/browser` como artefacto.
4. El trabajo *deploy* publica el artefacto en el entorno `github-pages`, que solo acepta despliegues desde `main` y `develop`.
5. Además, el repositorio está conectado a Vercel (https://oso-terra-web-application.vercel.app): cada push a una rama genera un despliegue de vista previa y la rama de producción publica la URL principal.
6. Desde el Sprint 2 la configuración por defecto (`environment.ts`) apunta al RESTful API en Railway; `ng build --configuration local-api` usa `http://localhost:8080/api/v1` y `--configuration fake-api` mantiene los datos de demostración sin backend.

**Web Services (RESTful API)** — publicado en Railway: https://osoterra-backend-production.up.railway.app (Swagger UI en `/swagger-ui.html`)

1. En Railway, crear el proyecto con dos servicios: el repositorio `OsoTerra---Backend` y una base de datos PostgreSQL gestionada. Railway inyecta las variables `PGHOST`, `PGPORT`, `PGDATABASE`, `PGUSER`, `PGPASSWORD` y `DATABASE_URL`, que `application.yaml` lee sin cambios en el código.
2. Definir las variables propias del servicio: `JWT_SECRET`, `EDGE_API_KEY` (clave que envía el Edge Service en la cabecera `X-Edge-Api-Key`), `CORS_ALLOWED_ORIGINS` (opcional) y las del correo y de Stripe cuando se habiliten. Railway asigna el puerto en `PORT`.
3. Railway construye con Maven y Java 17 en cada push a la rama configurada; las pruebas se ejecutan antes en local con `./mvnw test` (PostgreSQL embebido).
4. Al iniciar, Flyway aplica las migraciones pendientes sobre la base de Railway y springdoc publica la documentación OpenAPI agrupada por bounded context en `/v3/api-docs/{grupo}`.
5. Railway registra cada despliegue en la pestaña *Deployments* del repositorio de GitHub, con el commit desplegado y su estado.

**Mobile Application** — distribución de prueba en el Sprint 2

1. Generar el APK de *release* firmado desde Android Studio (*Build → Generate Signed App Bundle / APK*).
2. Subirlo a Firebase App Distribution y agregar a los integrantes y usuarios de prueba.
3. Los usuarios de prueba instalan la app desde el enlace de invitación en su celular Android.

**Edge Service y Embedded Application** — Sprint 2

1. El Edge Service se instala en el gateway de la parcela con Python 3, sus dependencias (`flask`, `peewee`) y la base SQLite, y se inicia como servicio del sistema.
2. La Embedded Application se compila con PlatformIO (`pio run`) y se carga por USB en el ESP32 (`pio run -t upload`); antes se valida en la simulación de Wokwi con la extensión de VS Code, que usa el `wokwi.toml` y el `diagram.json` del repositorio. Los mismos archivos están en `assets/iot-device/wokwi` del informe.

El Deployment Diagram de la sección 4.1.3.4 muestra cómo se distribuyen estos contenedores entre la parcela, los dispositivos del usuario y el proveedor cloud.

<div align="center">
<img src="../assets/strategic-ddd/deployment-diagram.png" alt="Software Architecture Deployment Diagram de OsoSense" width="950">
<p><em>Figura 6.1. Software Architecture Deployment Diagram de OsoSense.</em></p>
</div>

## 6.2. Landing Page, Services & Applications Implementation

### 6.2.1. Sprint 1

#### 6.2.1.1. Sprint Planning 1

En el Sprint 1 el equipo construyó la primera versión de los productos que el TB1 exige desplegados: el Landing Page y la Web App. En paralelo avanzó el RESTful API con el bounded context de Identity and Access Management y un primer prototipo de la Mobile App. El sprint duró cuatro semanas, del 7 de septiembre al 4 de octubre de 2026, e incluyó la integración de las correcciones del AV1.

El Sprint Planning se hizo al inicio del sprint, con el Product Backlog de la sección 3.3 como base. Como es el primer sprint de implementación, no hay revisión ni retrospectiva de un sprint anterior; en su lugar se tomó como punto de partida lo entregado en el AV1.

| Sprint # | Sprint 1 |
|---|---|
| **Sprint Planning Background** | |
| Date | 2026-09-07 |
| Time | 08:00 PM |
| Location | Reunión virtual en Google Meet |
| Prepared By | Encalada Salazar, Alexis |
| Attendees (to planning meeting) | Barturen Panez, Iker Gabriel / Encalada Salazar, Alexis / Goñe Araccata, Esther Abigail / Ortiz Alarcon, Victor Nicolas / Salazar Caballero, Alvaro Fabrizzio / Santiago Peña, Andreow Jomark / Tumi Oliden, Manuel Ignacio |
| Sprint 0 Review Summary | No hubo un sprint de implementación previo. El punto de partida es el AV1: investigación de usuarios, User Stories con criterios de aceptación, Product Backlog priorizado y diseño estratégico y táctico del software. |
| Sprint 0 Retrospective Summary | En el AV1 el trabajo del informe se concentró en pocas personas. Para este sprint el equipo acordó un líder por producto, commits con Conventional Commits y revisión cruzada antes de integrar en `develop`. |
| **Sprint Goal & User Stories** | |
| Sprint 1 Goal | *Our focus is on* presentar OsoSense a los visitantes con un Landing Page claro y bilingüe; dar a productores y asesores técnicos una primera Web App para registrarse, iniciar sesión, ver el estado de salinidad de sus parcelas y registrar acciones correctivas; y dar a los developers los endpoints de autenticación del RESTful API. *We believe it delivers* confianza para decidir probar OsoSense a los visitantes, una forma rápida de saber qué parcela necesita atención a productores y asesores, y una base segura para construir las siguientes funcionalidades al equipo de desarrollo. *This will be confirmed when* el Landing Page y la Web App están publicados y un visitante llega desde un botón de planes hasta el registro en no más de dos clics, un productor identifica su parcela en riesgo desde el inicio sin abrir otra vista, y la Web App y la Mobile App pueden autenticar usuarios contra los endpoints de `/api/v1/auth`. |
| Sprint 1 Velocity | 60 Story Points |
| Sum of Story Points | 60 Story Points |

#### 6.2.1.2. Aspect Leaders and Collaborators

Los aspectos del Sprint 1 corresponden a los productos que se trabajaron: el Landing Page, la Web App (con una vista para cada rol), el RESTful API con Identity and Access Management, el prototipo de la Mobile App, y un aspecto transversal de diseño UX/UI y despliegue. Cada aspecto tiene un líder, que coordina las tareas y revisa lo que se integra, y colaboradores que toman tareas del mismo aspecto en el Sprint Backlog.

| Team Member (Last Name, First Name) | GitHub Username | Landing Page | Web App · Productor | Web App · Asesor | Web Services · IAM | Mobile App | UX/UI y despliegue |
|---|---|---|---|---|---|---|---|
| Barturen Panez, Iker Gabriel | krxxg04 | C | | | L | | C |
| Encalada Salazar, Alexis | Alexiz248 | | C | L | C | C | |
| Goñe Araccata, Esther Abigail | abigoe02 | L | | | | | C |
| Ortiz Alarcon, Victor Nicolas | Nico1234556 | C | | C | C | | |
| Salazar Caballero, Alvaro Fabrizzio | DymianUPC | | L | C | | | |
| Santiago Peña, Andreow Jomark | andrew65411 | C | C | C | | | L |
| Tumi Oliden, Manuel Ignacio | ManuelTumi2224 | | | | | L | C |

L: líder del aspecto. C: colaborador.

#### 6.2.1.3. Sprint Backlog 1

El objetivo del Sprint 1 es publicar la primera versión del Landing Page y de la Web App, con los endpoints de autenticación del RESTful API como base. Las User Stories se tomaron del inicio del Product Backlog (sección 3.3), respetando su orden por valor, hasta completar la velocidad acordada de 60 Story Points.

La figura muestra el tablero de Trello al cierre del sprint, con las User Stories del Sprint 1 en la lista *Done*. Tablero público: https://trello.com/b/adykOjs5/ososense-backlog

<div align="center">
<img src="../assets/sprint-1/trello-sprint-1.png" alt="Tablero de Trello con las User Stories del Sprint 1 en Done" width="800">
<p><em>Figura 6.2. Tablero del Sprint 1 en Trello.</em></p>
</div>

<table>
  <tr><th>Sprint #</th><th colspan="7">Sprint 1</th></tr>
  <tr><th colspan="2">User Story</th><th colspan="6">Work-Item / Task</th></tr>
  <tr><th>Story Id</th><th>Story Title</th><th>Task Id</th><th>Task Title</th><th>Task Description</th><th>Estimation (Hours)</th><th>Assigned To</th><th>Status (To-do / In-Process / To-Review / Done)</th></tr>
  <tr><td>US01</td><td>Ver propuesta de valor</td><td>T01</td><td>Hero del Landing Page</td><td>Maquetar el hero con carrusel, titular, bajada y botón principal.</td><td>4</td><td>Goñe Araccata, Esther Abigail</td><td>Done</td></tr>
  <tr><td>US04</td><td>Conocer problema de salinización</td><td>T02</td><td>Bloque de impacto</td><td>Implementar los tres datos de impacto y la tarjeta de historia.</td><td>3</td><td>Goñe Araccata, Esther Abigail</td><td>Done</td></tr>
  <tr><td>US02</td><td>Consultar beneficios para productores</td><td>T03</td><td>Bloque de beneficios</td><td>Implementar los beneficios para el productor en el bloque dividido.</td><td>2</td><td>Ortiz Alarcon, Victor Nicolas</td><td>Done</td></tr>
  <tr><td>US03</td><td>Consultar beneficios para asesores</td><td>T04</td><td>Bloque de capacidades</td><td>Implementar las cuatro capacidades con la foto del sensor.</td><td>2</td><td>Ortiz Alarcon, Victor Nicolas</td><td>Done</td></tr>
  <tr><td>US05</td><td>Consultar planes y precios</td><td>T05</td><td>Bloque de planes</td><td>Maquetar los tres planes con el plan recomendado destacado.</td><td>3</td><td>Goñe Araccata, Esther Abigail</td><td>Done</td></tr>
  <tr><td>US05</td><td>Consultar planes y precios</td><td>T06</td><td>Enlazar planes a la Web App</td><td>Llevar cada botón de plan al registro de la Web App desplegada.</td><td>1</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>US07</td><td>Leer términos y condiciones</td><td>T07</td><td>Enlace a términos</td><td>Agregar el enlace a términos y condiciones en el pie de página.</td><td>1</td><td>Barturen Panez, Iker Gabriel</td><td>Done</td></tr>
  <tr><td>US06</td><td>Conocer al equipo</td><td>T08</td><td>Bloque del equipo</td><td>Implementar las tarjetas de los siete integrantes.</td><td>2</td><td>Goñe Araccata, Esther Abigail</td><td>Done</td></tr>
  <tr><td>US08</td><td>Cambiar idioma del sitio</td><td>T09</td><td>Traducción EN / ES</td><td>Implementar el cambio de idioma con los textos en en_US y es_419.</td><td>4</td><td>Goñe Araccata, Esther Abigail</td><td>Done</td></tr>
  <tr><td>US08</td><td>Cambiar idioma del sitio</td><td>T10</td><td>SEO, contraste y marca</td><td>Agregar meta tags, logo, favicon y contraste accesible en los botones.</td><td>3</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>TS01</td><td>Exponer endpoints de autenticación</td><td>T11</td><td>Modelo de dominio IAM</td><td>Implementar UserAccount, EmailAddress y AdvisoryLink con sus eventos.</td><td>6</td><td>Barturen Panez, Iker Gabriel</td><td>Done</td></tr>
  <tr><td>TS01</td><td>Exponer endpoints de autenticación</td><td>T12</td><td>Endpoints de autenticación</td><td>Exponer registro, inicio de sesión y restablecimiento de contraseña con JWT.</td><td>6</td><td>Barturen Panez, Iker Gabriel</td><td>Done</td></tr>
  <tr><td>TS01</td><td>Exponer endpoints de autenticación</td><td>T13</td><td>Pruebas del dominio IAM</td><td>Escribir las pruebas unitarias de UserAccount, EmailAddress y AdvisoryLink.</td><td>3</td><td>Ortiz Alarcon, Victor Nicolas</td><td>Done</td></tr>
  <tr><td>US09</td><td>Registrar cuenta de productor</td><td>T14</td><td>Registro por rol</td><td>Implementar la elección de rol y el formulario de registro de productor.</td><td>3</td><td>Encalada Salazar, Alexis</td><td>Done</td></tr>
  <tr><td>US10</td><td>Registrar cuenta de asesor</td><td>T15</td><td>Registro de asesor</td><td>Agregar el número de colegiatura CIP y su validación al registro.</td><td>2</td><td>Encalada Salazar, Alexis</td><td>Done</td></tr>
  <tr><td>US11</td><td>Iniciar sesión</td><td>T16</td><td>Inicio de sesión</td><td>Implementar el inicio de sesión, las cuentas de demostración y la protección de rutas.</td><td>4</td><td>Encalada Salazar, Alexis</td><td>Done</td></tr>
  <tr><td>US12</td><td>Recuperar contraseña</td><td>T17</td><td>Recuperación de contraseña</td><td>Implementar la solicitud y el restablecimiento con token de un solo uso.</td><td>3</td><td>Encalada Salazar, Alexis</td><td>Done</td></tr>
  <tr><td>US39</td><td>Ver tablero del productor</td><td>T18</td><td>Inicio del productor</td><td>Implementar el tablero con parcelas, alertas activas y dispositivos.</td><td>5</td><td>Salazar Caballero, Alvaro Fabrizzio</td><td>Done</td></tr>
  <tr><td>US27</td><td>Consultar estado de parcela</td><td>T19</td><td>Detalle de parcela</td><td>Mostrar la lectura actual, el nivel frente al umbral del cultivo y la tendencia.</td><td>5</td><td>Salazar Caballero, Alvaro Fabrizzio</td><td>Done</td></tr>
  <tr><td>US27</td><td>Consultar estado de parcela</td><td>T20</td><td>Cultivos con umbral</td><td>Cargar palto, uva de mesa y arándano con sus umbrales y fuentes.</td><td>2</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>US37</td><td>Registrar acción correctiva</td><td>T21</td><td>Acciones correctivas</td><td>Registrar la acción de una alerta y actualizar el contador de alertas.</td><td>4</td><td>Encalada Salazar, Alexis</td><td>Done</td></tr>
  <tr><td>US43</td><td>Ver tablero multiparcela</td><td>T22</td><td>Inicio del asesor</td><td>Implementar el tablero que ordena las parcelas supervisadas por riesgo.</td><td>6</td><td>Encalada Salazar, Alexis</td><td>Done</td></tr>
  <tr><td>US43</td><td>Ver tablero multiparcela</td><td>T23</td><td>Guía de estilo y accesibilidad</td><td>Aplicar los tokens de la guía de estilo, íconos de línea y atributos ARIA.</td><td>4</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>—</td><td>Tarea técnica</td><td>T24</td><td>Despliegue continuo de la Web App</td><td>Configurar GitHub Actions y GitHub Pages para publicar <code>develop</code>.</td><td>2</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>—</td><td>Tarea técnica</td><td>T25</td><td>Prototipo de la Mobile App</td><td>Crear el proyecto Android con Jetpack Compose y las primeras vistas.</td><td>8</td><td>Tumi Oliden, Manuel Ignacio</td><td>Done</td></tr>
</table>

La suma de Story Points de las User Stories del sprint es 60: US01 (3), US04 (3), US02 (2), US03 (2), US05 (3), US07 (2), US06 (2), US08 (3), TS01 (5), US09 (3), US10 (3), US11 (3), US12 (3), US39 (5), US27 (5), US37 (5) y US43 (8).

#### 6.2.1.4. Development Evidence for Sprint Review

En el Sprint 1 se implementaron el Landing Page completo, la Web App con las vistas del productor y del asesor sobre datos de demostración, el bounded context de Identity and Access Management del RESTful API y un primer prototipo de la Mobile App. La Web App todavía no consume el RESTful API: usa un servicio con datos de demostración que tiene el mismo contrato que tendrán los endpoints, para integrarlos en el Sprint 2 sin cambiar las vistas.

La tabla reúne los commits de implementación de cada repositorio entre el 7 y el 28 de septiembre de 2026, sin contar los commits de *merge*.

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|---|---|---|---|---|---|
| OsoTerra-IoT/OsoTerra---Landing-Page | feature/webapp-cta-links | b7426d5 | feat(cta): link plan and call-to-action buttons to web app sign-up | — | 28/09/2026 |
| OsoTerra-IoT/OsoTerra---Landing-Page | feature/seo-meta-tags | cdd3022 | feat(seo): add description, keywords, author and social meta tags | — | 23/09/2026 |
| OsoTerra-IoT/OsoTerra---Landing-Page | feature/accessible-button-contrast | 7e7680e | style(a11y): raise contrast of primary and outline buttons | — | 23/09/2026 |
| OsoTerra-IoT/OsoTerra---Landing-Page | feature/brand-logo | 45ec869 | feat(branding): add brand logo to header, footer and favicon | — | 23/09/2026 |
| OsoTerra-IoT/OsoTerra---Landing-Page | main | c6ca34a | Delete CNAME | — | 20/09/2026 |
| OsoTerra-IoT/OsoTerra---Landing-Page | main | 4ddfad8 | Create CNAME | — | 20/09/2026 |
| OsoTerra-IoT/OsoTerra---Landing-Page | main | e345926 | feat: add landing page | — | 20/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/minimal-redesign | a2d1aa8 | feat(ui): redesign sign-in, sidebar and home with salinity strips | — | 28/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/github-pages-deploy | 70ea60a | ci(deploy): publish develop to GitHub Pages with SPA fallback | — | 28/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | fix/mobile-topbar-and-sources | d140ca1 | fix(layout): fit mobile top bar and cite each crop source in reports | — | 24/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/demo-crops | a0622bc | feat(demo-data): use avocado, table grape and blueberry with sourced thresholds | — | 24/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/accessibility-forms | 0b2f463 | fix(a11y): sync filters and tabs with url and tune form fields | — | 24/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/ui-components | 5ce55da | feat(ui): switch to outlined icons and announce alert actions | — | 24/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/brand-identity | eaa8ed8 | feat(branding): replace placeholder mark with OsoSense logo and favicon | — | 24/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/style-guidelines-theme | 0b8c72a | style(theme): apply style guidelines tokens, typography and palette | — | 24/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | fix/material-icons-and-demo-advisor | 9774f8a | fix(auth): add material icons class and resolve demo login by role | The @fontsource stylesheet only ships the @font-face; without the .material-icons utility class every icon rendered as literal text. The Technical advisor demo … | 19/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/advisor-reports | ed3c57b | feat: add advisor settings page | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/advisor-reports | 444f3a5 | feat: add advisor subscription page | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/advisor-reports | 6eff504 | feat: add reports with PDF export | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/advisor-reports | 5e02e5f | feat: add calibration form and records | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | main | d2db928 | feat: add clients directory | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | main | 3c2c434 | feat: add plot comparison screen | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | main | cddc39e | feat: add advisor alerts with corrective actions | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | main | 5527db0 | feat: add advisor plot detail view | — | 09/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | main | e972a6e | feat: add supervised plots list with filters | — | 09/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | main | 6314e63 | Turn the empty advisor landing page into a portfolio view: four indicators (clients, supervised plots and area, active alerts, devices online) and a dense table that ranks every supervised plot by how close its latest reading sits to the crop threshold. | The table shows the client, crop, measured conductivity, the ECe threshold and the share of that threshold, so the advisor can triage without opening each plot.… | 09/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | main | f2e26d6 | feat(core): add second demo farmer and advisor client roster | The advisor supervises plots from two farms, but only one of the owners existed as a demo account, so client-facing screens could show an owner ID and nothing e… | 09/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | main | bea3ab9 | add workspace sidebar and navigation shell | Replace the minimal advisor toolbar with a full workspace shell: an advisor-only sidebar, quick plot search, active alert badge, breadcrumbs and sign out. The s… | 09/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | b2a9ef7 | refactor: move password reset REST resources and interfaces layer documentation to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | ce592fe | refactor: move user account and advisory link REST resources to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 2c36ac3 | refactor: move authentication REST resources to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 853d2cd | refactor: move advisory link controller and REST cross-cutting support to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 77c0669 | refactor: move authentication and user account controllers to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 29f8ea2 | refactor: remove obsolete identityaccess package after iam rename | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 84ef4f3 | refactor: move SMTP password reset notifier to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | f26b477 | refactor: move password hashing security to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | a8785e1 | refactor: move JWT authentication security to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | e3c187a | refactor: move password reset token JPA persistence to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 7270e2b | refactor: move advisory link JPA persistence to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | f7a72f0 | refactor: move user account JPA persistence to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | eab22c1 | refactor: move iam application layer package documentation | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 77ffb7a | refactor: move user account query service to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 92f353d | refactor: move revoke advisory link command service to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | c70c1df | refactor: move accept advisory link command service to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 95ea7a9 | refactor: move request advisory link command service to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 0bdb96c | refactor: move reset password command service to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 1c6a7e0 | refactor: move request password reset command service to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 2b7a3b3 | refactor: move authenticate user command service to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | ed67af8 | refactor: move register user command service to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | b7e0c15 | refactor: move query service contract to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | d5ea762 | refactor: move authentication and password domain contracts to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 9790fd2 | refactor: move advisory link domain contracts to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 05b647b | refactor: move iam repository interfaces to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | c05a0da | refactor: move iam domain exceptions and gateways to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 6968393 | refactor: move iam domain events to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 85419b4 | refactor: move iam domain model to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 90f7482 | feat: add database migrations and application configuration | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 6d10546 | feat: add identity access REST resources and assemblers | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | cb9f229 | feat: add identity access REST controllers | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 82c170c | feat: add SMTP password reset notifier | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 4508919 | feat: add JWT authentication and password hashing security | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | b4acce4 | feat: add JPA persistence adapters for identity access | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 9c86b0d | feat: implement identity access query service | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 67ccb41 | feat: implement identity access command services | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 1583444 | feat: add identity access domain service contracts | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 24e235c | feat: add identity access repository interfaces | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | d7ee512 | feat: add identity access domain exceptions and gateways | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 25c9fc4 | feat: add identity access domain events | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | a2254c4 | feat: add identity access domain model | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | fac5a6c | chore: scaffold salinity alerting, soil monitoring and subscription billing bounded contexts | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 3adee3a | chore: scaffold analytics reporting and farm management bounded contexts | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 7c9ad66 | feat: add shared kernel DDD base classes | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 91d7294 | feat: add Spring Boot application entry point | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 33f6771 | chore: add gitignore and gitattributes | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 8c25bdd | chore: add Maven wrapper and build configuration | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | main | ae2f504 | Initial commit | — | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | develop | 176aa29 | refactor: encabezado de perfil compacto para ver todo sin scroll | El encabezado pasa de un bloque centrado grande (avatar 96dp y tres líneas apiladas) a una fila compacta (avatar 64dp a la izquierda con nombre, correo y rol al | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | develop | 3cf07df | fix: perfil desplazable para que no se corte el botón de cerrar sesión | La pantalla de perfil no tenía scroll y, al crecer la lista de opciones, el Spacer con weight empujaba el botón de cerrar sesión contra el borde inferior y lo d | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | develop | a79676d | chore: usar el logo de OsoTerra como ícono de la app | Reemplaza el ícono adaptativo vectorial por el escudo del logo (oso y montañas) recortado del logotipo, con set completo de densidades (mdpi a xxxhdpi) e íconos | 11/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | develop | 44fbb71 | feat: tablero multiparcela del asesor (EP09) | US40: tablero con todas las parcelas supervisadas (productor, cultivo y categoría de salinidad). US41: ordenamiento por criticidad y filtros por productor y cul | 10/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | develop | b3360bb | feat: preferencias de notificación y estado de suscripción | US35: pantalla de preferencias de notificación (nivel mínimo de severidad y canales push/correo) persistida en DataStore. US15: pantalla de estado de suscripció | 10/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | develop | f43f26f | feat: gestión de dispositivos y calibración (EP05) | Implementa US23 (registro y vinculación de dispositivo a parcela), US24 (estado del dispositivo: en línea, batería baja, fuera de línea) y US25 (registro de cal | 10/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | develop | 1ca2f92 | Initial app design with mockups | — | 07/09/2026 |

#### 6.2.1.5. Testing Suite Evidence for Sprint Review

Las pruebas del Sprint 1 cubren el dominio de Identity and Access Management en el RESTful API y la autenticación, la protección de rutas y los datos de la Web App.

**RESTful API · pruebas unitarias (JUnit 5)** — repositorio https://github.com/OsoTerra-IoT/OsoTerra---Backend, carpeta `src/test`.

| Clase de prueba | Clase probada | Comportamientos verificados |
|---|---|---|
| `UserAccountTest` | `UserAccount` | Registro de un productor activo con el evento `UserRegistered`; rechazo de un asesor sin colegiatura y de un productor con colegiatura; verificación y cambio de contraseña; desactivación de la cuenta; limpieza de eventos pendientes. |
| `EmailAddressTest` | `EmailAddress` | Acepta un correo bien formado y lo normaliza a minúsculas; rechaza correos sin arroba o sin dominio. |
| `AdvisoryLinkTest` | `AdvisoryLink` | Solicitud pendiente sin eventos; rechazo de un asesor que se vincula consigo mismo; aceptación y revocación con sus eventos; errores al aceptar o revocar un vínculo que no está pendiente. |
| `OsosenseBackendApplicationTests` | Contexto de Spring | La aplicación inicia con su configuración. |

**Web App · pruebas unitarias y de navegación (Vitest vía Angular CLI)** — repositorio https://github.com/OsoTerra-IoT/OsoTerra---Web-Application, 32 pruebas que pasan con `ng test`.

| Archivo | Relación | Comportamientos verificados |
|---|---|---|
| `auth.service.spec.ts` | US09, US10, US11, US12 | Rechazo de credenciales inválidas; normalización del correo; colegiatura CIP obligatoria para asesores; correos duplicados; tokens de recuperación de un solo uso y vencidos. |
| `monitoring.service.spec.ts` | US27, US37, US43 | Aislamiento de los datos de cada productor; parcelas asignadas al asesor; validación de parcelas; registro de acciones correctivas y del contador de alertas. |
| `salinity-status.spec.ts` | US27 | Nivel de salinidad con texto; umbral del cultivo visible sin lectura; no comparar conductividad aparente con umbrales de ECe. |
| `app.spec.ts` | US11, US39, US43 | Redirección al inicio de sesión con la ruta de retorno; separación de rutas y menú por rol; cierre de sesión y cambio de idioma sin perder la sesión. |

**Pruebas de aceptación (BDD).** Los criterios de aceptación en Gherkin de la sección 3.1 son la base de los archivos `.feature`. Este es el archivo de la Technical Story del sprint:

```gherkin
Feature: TS01 Authentication endpoints
  As a developer
  I want authentication endpoints
  So that the web and mobile apps can sign users in securely

  Scenario: Valid sign-in
    Given a farmer account registered with "diego.ramos@example.com"
    When the developer sends POST "/api/v1/auth/signin" with valid credentials
    Then the response status is 200
    And the body contains a token and its expiration time

  Scenario: Invalid credentials
    Given a farmer account registered with "diego.ramos@example.com"
    When the developer sends POST "/api/v1/auth/signin" with a wrong password
    Then the response status is 401
    And the body contains an error message without internal details
```

En el Sprint 2 este archivo se automatizó con Cucumber (sección 6.2.2.5).

Commits relacionados con pruebas en el Sprint 1:

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|---|---|---|---|---|---|
| OsoTerra-IoT/OsoTerra---Web-Application | feature/advisor-reports | dbc04bd | test: update route tests and advisor docs | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 35dfd38 | test: move iam domain and application tests to iam package | — | 12/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | c5065cd | test: add identity access domain and application tests | — | 11/09/2026 |

#### 6.2.1.6. Execution Evidence for Sprint Review

Al cierre del Sprint 1 están publicados el Landing Page y la Web App. El visitante recorre el Landing Page en inglés o español y, desde los planes, llega al registro de la Web App. En la Web App, el productor y el asesor inician sesión con sus cuentas de demostración y cada uno ve su propio menú y sus vistas.

<div align="center">
<img src="../assets/sprint-1/landing-desplegada.png" alt="Landing Page publicado en GitHub Pages" width="800">
<p><em>Figura 6.3. Landing Page publicado.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-1/webapp-desplegada.png" alt="Inicio de sesión de la Web App publicada" width="800">
<p><em>Figura 6.4. Inicio de sesión de la Web App publicada.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-1/webapp-02-productor-inicio.png" alt="Inicio del productor en la Web App" width="800">
<p><em>Figura 6.5. Inicio del productor.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-1/webapp-04-detalle-parcela.png" alt="Detalle de parcela en la Web App" width="800">
<p><em>Figura 6.6. Detalle de parcela con la lectura y la tendencia.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-1/webapp-05-alertas.png" alt="Bandeja de alertas del productor" width="800">
<p><em>Figura 6.7. Bandeja de alertas y registro de acciones.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-1/webapp-07-asesor-inicio.png" alt="Inicio del asesor con parcelas ordenadas por riesgo" width="800">
<p><em>Figura 6.8. Inicio del asesor con las parcelas ordenadas por riesgo.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-1/webapp-08-asesor-comparar.png" alt="Comparación de parcelas del asesor" width="800">
<p><em>Figura 6.9. Comparación de parcelas.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-1/webapp-09-asesor-reportes.png" alt="Reportes del asesor" width="800">
<p><em>Figura 6.10. Reportes con exportación a PDF.</em></p>
</div>

Video de la navegación del Sprint 1: <https://upcedupe-my.sharepoint.com/:v:/g/personal/u202312629_upc_edu_pe/IQBW9pKD0m2aTYL4WPlSa8bFAei65ipPDVodq3Sx95FNhmE>

#### 6.2.1.7. Services Documentation Evidence for Sprint Review

El alcance comprometido del Sprint 1 para el RESTful API fueron los endpoints de Identity and Access Management (TS01). En la última semana del sprint el equipo también expuso los endpoints de los otros cinco bounded contexts y adelantó la documentación OpenAPI de la Technical Story TS04, generada con springdoc-openapi a partir de los controladores. El API todavía se ejecuta de forma local, por lo que la documentación se consulta en las URL locales:

- **Swagger UI:** `http://localhost:8080/swagger-ui.html`. El selector *Select a definition* muestra una definición por bounded context.
- **Especificación OpenAPI 3.1 por bounded context:** `http://localhost:8080/v3/api-docs/{grupo}`, con los grupos `iam`, `subscription-billing`, `farm-management`, `soil-monitoring`, `salinity-alerting` y `analytics-reporting`. El grupo `all` reúne todos los endpoints.

Todos los endpoints usan JSON y la ruta base `/api/v1`. Salvo los de `/api/v1/auth/**` y el webhook de pagos, exigen la cabecera `Authorization: Bearer <token>` con el JWT obtenido al iniciar sesión, y el usuario se identifica a partir de ese token y no de un parámetro. En Swagger UI el token se ingresa una sola vez con el botón *Authorize*. La documentación publicada en un entorno desplegado se agrega en el Sprint 2, junto con el despliegue del API.

Las tablas siguientes resumen las acciones de cada bounded context. Después de cada tabla se muestra su definición en Swagger UI.

**Identity and Access Management** (`/v3/api-docs/iam`)

| Endpoint | Acción | Verbo | Sintaxis de llamada | Parámetros | Respuesta |
|---|---|---|---|---|---|
| `/api/v1/auth/signup` | Registrar cuenta | POST | `POST /api/v1/auth/signup` | Cuerpo: `email`, `password` (mínimo 8), `firstName`, `lastName`, `role` (`FARMER` o `ADVISOR`), `professionalLicenseNumber` (obligatorio para asesores) | `201 Created` con la cuenta: `id`, `email`, `firstName`, `lastName`, `role`, `active`, `createdAt`. |
| `/api/v1/auth/signin` | Iniciar sesión | POST | `POST /api/v1/auth/signin` | Cuerpo: `email`, `password` | `200 OK` con `token` (JWT), `expiresAt` y los datos de la cuenta. |
| `/api/v1/auth/google` | Iniciar sesión con Google | POST | `POST /api/v1/auth/google` | Cuerpo: `idToken` (emitido por Google), `role`, `professionalLicenseNumber` (para asesores) | `200 OK` con `token` (JWT), `expiresAt` y los datos de la cuenta. |
| `/api/v1/auth/password-reset-requests` | Solicitar restablecimiento | POST | `POST /api/v1/auth/password-reset-requests` | Cuerpo: `email` | `202 Accepted`; si la cuenta existe, se envía el enlace por correo. |
| `/api/v1/auth/password-resets` | Restablecer contraseña | POST | `POST /api/v1/auth/password-resets` | Cuerpo: `token`, `newPassword` (mínimo 8) | `204 No Content`. |
| `/api/v1/users/me` | Consultar mi cuenta | GET | `GET /api/v1/users/me` | Cabecera `Authorization: Bearer <token>` | `200 OK` con los datos de la cuenta autenticada. |
| `/api/v1/advisory-links` | Solicitar vínculo de asesoría | POST | `POST /api/v1/advisory-links` | Cabecera con token del asesor; cuerpo: `farmerId` | `201 Created` con `id`, `advisorId`, `farmerId`, `status` (`PENDING`) y `requestedAt`. |
| `/api/v1/advisory-links/{id}/acceptance` | Aceptar vínculo | POST | `POST /api/v1/advisory-links/12/acceptance` | Ruta: `id`; cabecera con token del productor | `200 OK` con el vínculo en estado `ACCEPTED` y `respondedAt`. |
| `/api/v1/advisory-links/{id}/revocation` | Revocar vínculo | POST | `POST /api/v1/advisory-links/12/revocation` | Ruta: `id`; cabecera con token de una de las partes | `200 OK` con el vínculo en estado `REVOKED`. |

<div align="center">
<img src="../assets/swagger/swagger-iam.jpeg" alt="Swagger UI con la definición de Identity and Access Management" width="800">
<p><em>Figura 6.11. Definición de Identity and Access Management en Swagger UI: autenticación, inicio de sesión con Google, vínculos de asesoría y cuenta del usuario.</em></p>
</div>

Ejemplo de respuesta de `POST /api/v1/auth/signin` con datos de muestra:

```json
{
  "token": "eyJhbGciOiJIUzI1NiJ9…",
  "expiresAt": "2026-10-04T20:00:00Z",
  "user": {
    "id": 1,
    "email": "diego.ramos@example.com",
    "firstName": "Diego",
    "lastName": "Ramos",
    "role": "FARMER",
    "professionalLicenseNumber": null,
    "active": true,
    "createdAt": "2026-09-12T10:15:00"
  }
}
```

**Subscription and Billing** (`/v3/api-docs/subscription-billing`)

| Endpoint | Acción | Verbo | Sintaxis de llamada | Parámetros | Respuesta |
|---|---|---|---|---|---|
| `/api/v1/subscription-plans` | Listar planes | GET | `GET /api/v1/subscription-plans` | — | `200 OK` con los planes activos: `id`, `name`, `priceAmount`, `priceCurrency`, `billingCycle`, `maxPlots`, `free`, `active`. |
| `/api/v1/subscriptions` | Solicitar suscripción | POST | `POST /api/v1/subscriptions` | Cuerpo: `subscriptionPlanId` | `201 Created` con `id`, `userAccountId`, `subscriptionPlanId`, `status`, `quotaTotal`, `quotaConsumed`, `periodStartDate` y `periodEndDate`. |
| `/api/v1/subscriptions/mine` | Consultar mis suscripciones | GET | `GET /api/v1/subscriptions/mine` | — | `200 OK` con la lista de suscripciones del usuario autenticado. |
| `/api/v1/subscriptions/{id}` | Consultar suscripción | GET | `GET /api/v1/subscriptions/5` | Ruta: `id` | `200 OK` con la suscripción. |
| `/api/v1/subscriptions/{id}/cancellation` | Cancelar suscripción | POST | `POST /api/v1/subscriptions/5/cancellation` | Ruta: `id` | `200 OK` con la suscripción y su nuevo `status`. |
| `/api/v1/payments/webhook` | Recibir evento de pago de Stripe | POST | `POST /api/v1/payments/webhook` | Cuerpo: evento de Stripe sin transformar; cabecera `Stripe-Signature` | `200 OK` sin cuerpo. Es el punto de integración con el servicio externo de pagos y no requiere JWT. |

<div align="center">
<img src="../assets/swagger/swagger-subscription-billing.jpeg" alt="Swagger UI con la definición de Subscription and Billing" width="800">
<p><em>Figura 6.12. Definición de Subscription and Billing en Swagger UI: suscripciones, planes y webhook de pagos.</em></p>
</div>

**Farm Management** (`/v3/api-docs/farm-management`)

| Endpoint | Acción | Verbo | Sintaxis de llamada | Parámetros | Respuesta |
|---|---|---|---|---|---|
| `/api/v1/farms` | Registrar finca | POST | `POST /api/v1/farms` | Cuerpo: `name`, `department`, `province`, `district` | `201 Created` con `id`, `ownerId`, `name`, `department`, `province`, `district` y `createdAt`. |
| `/api/v1/farms/mine` | Listar mis fincas | GET | `GET /api/v1/farms/mine` | — | `200 OK` con las fincas del usuario autenticado. |
| `/api/v1/farms/{id}` | Consultar finca | GET | `GET /api/v1/farms/3` | Ruta: `id` | `200 OK` con la finca. |
| `/api/v1/plots` | Registrar parcela | POST | `POST /api/v1/plots` | Cuerpo: `farmId`, `name`, `areaHectares`, `latitude`, `longitude` | `201 Created` con `id`, `farmId`, `cropId`, `name`, `areaHectares`, `latitude`, `longitude`, `active` y `createdAt`. |
| `/api/v1/plots` | Listar parcelas de una finca | GET | `GET /api/v1/plots?farmId=3` | Query: `farmId` | `200 OK` con las parcelas de la finca. |
| `/api/v1/plots/{id}` | Consultar parcela | GET | `GET /api/v1/plots/7` | Ruta: `id` | `200 OK` con la parcela. |
| `/api/v1/plots/{id}/crop` | Asignar cultivo | POST | `POST /api/v1/plots/7/crop` | Ruta: `id`; cuerpo: `cropId` | `200 OK` con la parcela y su `cropId` actualizado. |
| `/api/v1/plots/{id}/deactivation` | Desactivar parcela | POST | `POST /api/v1/plots/7/deactivation` | Ruta: `id` | `200 OK` con la parcela en `active: false`. |
| `/api/v1/devices` | Registrar dispositivo | POST | `POST /api/v1/devices` | Cuerpo: `activationCode` | `201 Created` con `id`, `plotId`, `activationCode`, `status`, `calibrationFactor`, `batteryLevel`, `firmwareVersion`, `readingIntervalMinutes` y `lastSeenAt`. |
| `/api/v1/devices/{id}/attachment` | Instalar dispositivo en parcela | POST | `POST /api/v1/devices/4/attachment` | Ruta: `id`; cuerpo: `plotId` | `200 OK` con el dispositivo asociado a la parcela. |
| `/api/v1/devices/{id}` | Consultar dispositivo | GET | `GET /api/v1/devices/4` | Ruta: `id` | `200 OK` con el dispositivo. |
| `/api/v1/crops` | Listar cultivos | GET | `GET /api/v1/crops` | — | `200 OK` con `id`, `commonName`, `scientificName`, `salinityThresholdDsM`, `saltToleranceClass` y `sourceReference` de cada cultivo. |
| `/api/v1/crops/{id}` | Consultar cultivo | GET | `GET /api/v1/crops/1` | Ruta: `id` | `200 OK` con el cultivo y su umbral de salinidad. |

<div align="center">
<img src="../assets/swagger/swagger-farm-management.jpeg" alt="Swagger UI con la definición de Farm Management" width="800">
<p><em>Figura 6.13. Definición de Farm Management en Swagger UI: parcelas, fincas, dispositivos y cultivos.</em></p>
</div>

**Soil Monitoring** (`/v3/api-docs/soil-monitoring`)

| Endpoint | Acción | Verbo | Sintaxis de llamada | Parámetros | Respuesta |
|---|---|---|---|---|---|
| `/api/v1/soil-readings/batches` | Ingerir lote de lecturas | POST | `POST /api/v1/soil-readings/batches` | Cuerpo: `deviceId` y `readings`, una lista con `rawConductivityDsM`, `compensatedConductivityDsM`, `compensationFactor`, `moisturePercentage`, `temperatureCelsius` y `capturedAt` | `201 Created` con `id`, `deviceId`, `status`, `submittedAt`, `acceptedCount` y `discardedCount`. |
| `/api/v1/soil-readings` | Listar lecturas de una parcela | GET | `GET /api/v1/soil-readings?plotId=7` | Query: `plotId` | `200 OK` con las lecturas: conductividad cruda y compensada, humedad, temperatura y `capturedAt`. |
| `/api/v1/calibration-records` | Registrar calibración | POST | `POST /api/v1/calibration-records` | Cuerpo: `deviceId`, `labConductivityDsM`, `samplingDate`, `laboratoryName`, `deviceReadingAtSampling` | `201 Created` con el registro y el `resultingFactor` calculado. |
| `/api/v1/calibration-records` | Listar calibraciones de un dispositivo | GET | `GET /api/v1/calibration-records?deviceId=4` | Query: `deviceId` | `200 OK` con el historial de calibraciones del dispositivo. |

<div align="center">
<img src="../assets/swagger/swagger-soil-monitoring.jpeg" alt="Swagger UI con la definición de Soil Monitoring" width="800">
<p><em>Figura 6.14. Definición de Soil Monitoring en Swagger UI: ingesta de telemetría, calibración y consulta de lecturas.</em></p>
</div>

**Salinity Alerting** (`/v3/api-docs/salinity-alerting`)

| Endpoint | Acción | Verbo | Sintaxis de llamada | Parámetros | Respuesta |
|---|---|---|---|---|---|
| `/api/v1/salinity-alerts` | Listar alertas de una parcela | GET | `GET /api/v1/salinity-alerts?plotId=7` | Query: `plotId` | `200 OK` con `id`, `plotId`, `observedConductivityDsM`, `appliedThresholdDsM`, `excessRatio`, `severity`, `status` y `generatedAt` de cada alerta. |
| `/api/v1/salinity-alerts/{id}` | Consultar alerta | GET | `GET /api/v1/salinity-alerts/21` | Ruta: `id` | `200 OK` con la alerta. |
| `/api/v1/salinity-alerts/{id}/acknowledgement` | Confirmar alerta | POST | `POST /api/v1/salinity-alerts/21/acknowledgement` | Ruta: `id` | `200 OK` con la alerta, `acknowledgedBy` y `acknowledgedAt`. |
| `/api/v1/salinity-alerts/{id}/corrective-actions` | Registrar acción correctiva | POST | `POST /api/v1/salinity-alerts/21/corrective-actions` | Ruta: `id`; cuerpo: `actionType`, `executedAt`, `notes` | `201 Created` con `id`, `salinityAlertId`, `actionType`, `executedAt`, `notes`, `registeredBy` y `registeredAt`. |
| `/api/v1/notification-preferences/mine` | Consultar mis preferencias de notificación | GET | `GET /api/v1/notification-preferences/mine` | — | `200 OK` con `minimumSeverity`, `channel`, `pushDeviceToken` y `preferredLanguage`. Si el usuario no las configuró, devuelve los valores por defecto. |
| `/api/v1/notification-preferences/mine` | Actualizar mis preferencias de notificación | PUT | `PUT /api/v1/notification-preferences/mine` | Cuerpo: `minimumSeverity`, `channel`, `pushDeviceToken` | `200 OK` con las preferencias guardadas. |

<div align="center">
<img src="../assets/swagger/swagger-salinity-alerting.jpeg" alt="Swagger UI con la definición de Salinity Alerting" width="800">
<p><em>Figura 6.15. Definición de Salinity Alerting en Swagger UI: alertas, acciones correctivas y preferencias de notificación.</em></p>
</div>

**Analytics and Reporting** (`/v3/api-docs/analytics-reporting`)

| Endpoint | Acción | Verbo | Sintaxis de llamada | Parámetros | Respuesta |
|---|---|---|---|---|---|
| `/api/v1/dashboard/plots/{plotId}` | Consultar tablero de una parcela | GET | `GET /api/v1/dashboard/plots/7` | Ruta: `plotId` | `200 OK` con `plotId`, `plotName`, `areaHectares`, `cropName` y `recentAlerts` (severidad, estado y fecha). |
| `/api/v1/salinity-trends` | Calcular tendencia de salinidad | POST | `POST /api/v1/salinity-trends` | Cuerpo: `plotId`, `periodStart`, `periodEnd` | `201 Created` con `id`, `plotId`, el periodo, `slopeDsMPerDay`, `direction`, `readingCount` y `computedAt`. |
| `/api/v1/salinity-trends` | Listar tendencias de una parcela | GET | `GET /api/v1/salinity-trends?plotId=7` | Query: `plotId` | `200 OK` con las tendencias calculadas para la parcela. |
| `/api/v1/plot-reports` | Generar reporte de parcela | POST | `POST /api/v1/plot-reports` | Cuerpo: `plotId`, `periodStart`, `periodEnd` | `201 Created` con `id`, `plotId`, `generatedBy`, el periodo y `generatedAt`. |
| `/api/v1/plot-reports` | Listar reportes de una parcela | GET | `GET /api/v1/plot-reports?plotId=7` | Query: `plotId` | `200 OK` con los reportes de la parcela. |
| `/api/v1/plot-reports/{id}/sections` | Consultar secciones del reporte | GET | `GET /api/v1/plot-reports/9/sections` | Ruta: `id` | `200 OK` con `id`, `title`, `sectionType`, `content` y `displayOrder` de cada sección. |
| `/api/v1/plot-reports/{id}/export` | Exportar reporte en PDF | GET | `GET /api/v1/plot-reports/9/export` | Ruta: `id` | `200 OK` con el archivo PDF (`application/pdf`). |
| `/api/v1/plot-comparisons` | Comparar parcelas | GET | `GET /api/v1/plot-comparisons?plotIds=7,8&periodStart=2026-09-01&periodEnd=2026-09-30` | Query: `plotIds` (de 2 a 4), `periodStart`, `periodEnd` | `200 OK` con una serie por parcela: `plotId`, `plotName` y `points` (`capturedAt`, `compensatedConductivityDsM`). |

<div align="center">
<img src="../assets/swagger/swagger-analytics-reporting.jpeg" alt="Swagger UI con la definición de Analytics and Reporting" width="800">
<p><em>Figura 6.16. Definición de Analytics and Reporting en Swagger UI: tendencias, reportes, comparación de parcelas y tablero.</em></p>
</div>

Repositorio del RESTful API: https://github.com/OsoTerra-IoT/OsoTerra---Backend.

Commits relacionados con la documentación de servicios en este sprint, integrados en `develop` mediante el pull request #3 (`5a30a2c`) desde la rama `feature/swagger-openapi-documentation`:

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|---|---|---|---|---|---|
| OsoTerra-IoT/OsoTerra---Backend | feature/swagger-openapi-documentation | fea3730 | build: add springdoc OpenAPI dependency | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/swagger-openapi-documentation | e8fc344 | feat: permit Swagger UI and OpenAPI docs routes | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/swagger-openapi-documentation | 43f4740 | feat: add OpenAPI configuration with JWT bearer scheme | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/swagger-openapi-documentation | a28d482 | feat: group OpenAPI documentation by bounded context | — | 30/09/2026 |

Los recursos REST de Identity and Access Management documentados provienen de los commits `2c36ac3` (autenticación), `ce592fe` (cuenta y vínculos de asesoría) y `b2a9ef7` (restablecimiento de contraseña).

#### 6.2.1.8. Software Deployment Evidence for Sprint Review

En el Sprint 1 se publicaron los dos productos que exige el TB1, sin crear cuentas nuevas ni usar un proveedor cloud: ambos se sirven desde GitHub Pages, dentro de la organización OsoTerra-IoT.

1. **Landing Page.** Se integraron en `develop` las ramas de logo, contraste y meta tags, y se configuró GitHub Pages para publicar desde `develop`. El sitio quedó en https://osoterra-iot.github.io/OsoTerra---Landing-Page/ con los botones de planes enlazados al registro de la Web App.
2. **Web App.** Se agregó el flujo `deploy-pages.yml` de GitHub Actions, se habilitó GitHub Pages con origen en Actions y se permitió desplegar desde `develop` en el entorno `github-pages`. La primera ejecución terminó en 47 segundos y publicó la Web App en https://osoterra-iot.github.io/OsoTerra---Web-Application/.

<div align="center">
<img src="../assets/sprint-1/actions-webapp.png" alt="Ejecuciones de GitHub Actions del repositorio de la Web App" width="800">
<p><em>Figura 6.17. Ejecución del flujo «Deploy to GitHub Pages» de la Web App.</em></p>
</div>

La figura muestra la ejecución del flujo de despliegue sobre `develop`, junto con las revisiones automáticas de código de las ramas de feature. Las Figuras 6.3 y 6.4 muestran los dos productos ya publicados. El RESTful API, la Mobile App con Firebase App Distribution, el Edge Service y la Embedded Application se despliegan desde el Sprint 2, con los pasos de la sección 6.1.4.

#### 6.2.1.9. Team Collaboration Insights during Sprint

El trabajo del Sprint 1 se organizó por producto, con un líder por repositorio. Las capturas muestran la actividad de cada repositorio en su rama `develop`.

<div align="center">
<img src="../assets/sprint-1/commits-webapp.png" alt="Historial de commits de la Web App" width="800">
<p><em>Figura 6.18. Commits de la Web App en develop.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-1/network-webapp.png" alt="Network graph de la Web App" width="800">
<p><em>Figura 6.19. Network graph de la Web App: ramas de feature integradas en develop.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-1/commits-landing.png" alt="Historial de commits del Landing Page" width="800">
<p><em>Figura 6.20. Commits del Landing Page en develop.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-1/commits-mobile.png" alt="Historial de commits de la Mobile App" width="800">
<p><em>Figura 6.21. Commits de la Mobile App en develop.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-1/contrib-report.png" alt="Contributors del repositorio del informe" width="800">
<p><em>Figura 6.22. Contribuciones al informe por integrante.</em></p>
</div>

| Integrante | Landing Page | Web App | RESTful API | Mobile App | Informe |
|---|---|---|---|---|---|
| Barturen Panez, Iker Gabriel (krxxg04) | | | 49 | | 64 |
| Encalada Salazar, Alexis (Alexiz248) | | 14 | 1 | 1 | 6 |
| Goñe Araccata, Esther Abigail (abigoe02) | 3 | | | | 12 |
| Ortiz Alarcon, Victor Nicolas (Nico1234556) | | | | | 15 |
| Salazar Caballero, Alvaro Fabrizzio (DymianUPC) | | 1 | | | 7 |
| Santiago Peña, Andreow Jomark (andrew65411) | 4 | 9 | | | 22 |
| Tumi Oliden, Manuel Ignacio (ManuelTumi2224) | | | | 7 | 9 |

*Número de commits sin contar merges, por repositorio, hasta el 28 de septiembre de 2026.*

**Interpretación del equipo.** Cada producto avanzó con un integrante que concentró la mayoría de los commits: Iker en el RESTful API, Alexis en la Web App, Abigail en el Landing Page y Manuel en la Mobile App. El informe es el repositorio con participación más repartida. La concentración aceleró el primer sprint, pero no cumple todavía con que todos los integrantes participen en cada producto. Para el Sprint 2 el equipo acuerda que los colaboradores de la matriz de liderazgo (sección 6.2.1.2) tomen tareas propias en cada repositorio, integren por pull request y que cada pull request sea revisado por otro integrante antes de entrar a `develop`.

### 6.2.2. Sprint 2

#### 6.2.2.1. Sprint Planning 2

En el Sprint 2 el equipo conectó los productos con el RESTful API real. El API se desplegó en Railway con PostgreSQL, la Web App y la Mobile App dejaron de usar datos de demostración para consumirlo, y se completaron los flujos de gestión de fincas y parcelas, vinculación de sensores, ingesta de lecturas desde el Edge Service, alertas por umbral y acciones correctivas. El sprint empezó el 5 de octubre de 2026, después de la entrega del TB1, y cierra con el AV2 en la semana 12; la evidencia de esta sección corresponde al avance al 18 de octubre de 2026, y al 22 de octubre para la primera versión del Edge Service y de la Embedded Application y para las pruebas de aceptación automatizadas.

El Sprint Planning tomó como base el Product Backlog de la sección 3.3, a partir de la primera User Story que no entró en el Sprint 1, y las conclusiones de la revisión y la retrospectiva del Sprint 1.

| Sprint # | Sprint 2 |
|---|---|
| **Sprint Planning Background** | |
| Date | 2026-10-05 |
| Time | Por confirmar |
| Location | Reunión virtual en Google Meet |
| Prepared By | Santiago Peña, Andreow Jomark |
| Attendees (to planning meeting) | Por confirmar |
| Sprint 1 Review Summary | Se publicaron el Landing Page y la Web App en GitHub Pages, con las vistas del productor y del asesor sobre datos de demostración, y el RESTful API expuso los endpoints de los seis bounded contexts en local. El profesor pidió en el TB1 usar el modelo oficial de carátula y enlaces con URL completa en el informe; ambas correcciones se integraron antes de iniciar el sprint. |
| Sprint 1 Retrospective Summary | La concentración de commits en un integrante por producto aceleró el primer sprint, pero no cumple con que todos participen en cada producto. Se acordó que los colaboradores de la matriz de liderazgo tomen tareas propias en cada repositorio, que todo cambio entre por pull request revisado por otro integrante y que la Web App deje de depender del servicio de demostración. |
| **Sprint Goal & User Stories** | |
| Sprint 2 Goal | *Our focus is on* llevar a productores y asesores técnicos de los datos de demostración a datos reales: registrar fincas y parcelas, vincular el sensor con su código de activación y recibir alertas cuando la salinidad supera el umbral del cultivo, con el RESTful API desplegado en la nube. *We believe it delivers* a los productores la certeza de que lo que ven corresponde a su parcela, a los asesores la supervisión de las parcelas de sus clientes y al equipo de desarrollo un contrato de API publicado para integrar el Edge Service. *This will be confirmed when* un productor registra una parcela, vincula su sensor y ve en la Web App y en la Mobile App la alerta generada por una lectura enviada por el Edge Service, registra una acción correctiva que resuelve la alerta, y la documentación OpenAPI del API desplegado responde en una URL pública. |
| Sprint 2 Velocity | 60 Story Points |
| Sum of Story Points | 60 Story Points |

#### 6.2.2.2. Aspect Leaders and Collaborators

En el Sprint 2 los aspectos pasan de las vistas de cada rol a las capas que integran la solución: el RESTful API con sus seis bounded contexts, la integración de la Web App con el API, la Mobile App, el despliegue en la nube, la primera versión del Edge Service y de la Embedded Application, y el Landing Page, que solo actualiza sus enlaces a la Web App.

| Team Member (Last Name, First Name) | GitHub Username | Web Services · Bounded Contexts | Web App · Integración con el API | Mobile App | Despliegue cloud | Edge Service · Embedded App | Landing Page |
|---|---|---|---|---|---|---|---|
| Barturen Panez, Iker Gabriel | krxxg04 | L | | | C | | |
| Encalada Salazar, Alexis | Alexiz248 | C | C | C | | | |
| Goñe Araccata, Esther Abigail | abigoe02 | | | | | | L |
| Ortiz Alarcon, Victor Nicolas | Nico1234556 | C | C | | | | |
| Salazar Caballero, Alvaro Fabrizzio | DymianUPC | | C | | | | C |
| Santiago Peña, Andreow Jomark | andrew65411 | C | L | C | L | L | C |
| Tumi Oliden, Manuel Ignacio | ManuelTumi2224 | | | L | | | |

L: líder del aspecto. C: colaborador.

#### 6.2.2.3. Sprint Backlog 2

El objetivo del Sprint 2 es que los productos trabajen con datos reales del RESTful API desplegado. Las User Stories y Technical Stories se tomaron del Product Backlog (sección 3.3) en su orden, desde TS02, hasta completar la velocidad de 60 Story Points. Las User Stories de suscripción, reportes, calibración y notificación móvil quedan para el Sprint 3.

El tablero del sprint está en el mismo tablero público de Trello del Sprint 1: https://trello.com/b/adykOjs5/ososense-backlog

<!-- TODO(equipo): agregar la captura del tablero de Trello con las User Stories del Sprint 2 como assets/sprint-2/trello-sprint-2.png -->

<table>
  <tr><th>Sprint #</th><th colspan="7">Sprint 2</th></tr>
  <tr><th colspan="2">User Story</th><th colspan="6">Work-Item / Task</th></tr>
  <tr><th>Story Id</th><th>Story Title</th><th>Task Id</th><th>Task Title</th><th>Task Description</th><th>Estimation (Hours)</th><th>Assigned To</th><th>Status (To-do / In-Process / To-Review / Done)</th></tr>
  <tr><td>TS02</td><td>Exponer endpoints de parcelas</td><td>T26</td><td>Shared kernel por capas</td><td>Reorganizar el shared kernel en paquetes domain, application e interfaces y migrar los seis bounded contexts.</td><td>6</td><td>Barturen Panez, Iker Gabriel</td><td>Done</td></tr>
  <tr><td>TS02</td><td>Exponer endpoints de parcelas</td><td>T27</td><td>Editar fincas y parcelas</td><td>Exponer <code>PUT /farms/{id}</code> y <code>PUT /plots/{id}</code> con validación de propietario.</td><td>3</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>US19</td><td>Registrar finca</td><td>T28</td><td>Fincas contra el API</td><td>Registrar y editar fincas desde la Web App con el cliente tipado del API.</td><td>3</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>US20</td><td>Registrar parcela</td><td>T29</td><td>Parcelas contra el API</td><td>Registrar parcelas con área y coordenadas, y listar las de cada finca.</td><td>3</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>US22</td><td>Consultar catálogo de cultivos</td><td>T30</td><td>Cultivos de la costa norte</td><td>Agregar palta y arándano al catálogo de cultivos con su umbral de ECe.</td><td>1</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>US21</td><td>Asignar cultivo a parcela</td><td>T31</td><td>Cultivo de la parcela</td><td>Asignar el cultivo desde el formulario de parcela y mostrar su umbral.</td><td>2</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>US23</td><td>Editar o dar de baja parcela</td><td>T32</td><td>Edición de parcela</td><td>Editar nombre, área, coordenadas y cultivo de una parcela existente.</td><td>2</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>TS06</td><td>Ingerir telemetría desde Edge</td><td>T33</td><td>Clave del Edge Service</td><td>Autenticar la ingesta de lotes de lecturas con la cabecera <code>X-Edge-Api-Key</code>.</td><td>3</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>TS06</td><td>Ingerir telemetría desde Edge</td><td>T34</td><td>Ingesta tolerante a fallos</td><td>Mantener la ingesta aunque falle el envío de la notificación de una alerta.</td><td>2</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>US24</td><td>Vincular dispositivo a parcela</td><td>T35</td><td>Dispositivo de la parcela</td><td>Exponer <code>GET /devices?plotId=</code> para consultar el sensor instalado.</td><td>2</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>US24</td><td>Vincular dispositivo a parcela</td><td>T36</td><td>Vincular sensor en la Web App</td><td>Formulario con el código de activación que registra el sensor y lo instala en la parcela.</td><td>4</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>TS03</td><td>Exponer endpoints de telemetría</td><td>T37</td><td>Clientes tipados del API</td><td>Crear los clientes y mapeadores de la Web App para los seis bounded contexts.</td><td>5</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>TS03</td><td>Exponer endpoints de telemetría</td><td>T38</td><td>Repositorios remotos móviles</td><td>Declarar los DTO y endpoints en Retrofit y consumirlos desde repositorios remotos en la Mobile App.</td><td>5</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>US31</td><td>Generar alerta por umbral</td><td>T39</td><td>Endpoints de alertas</td><td>Exponer los endpoints REST de Salinity Alerting.</td><td>4</td><td>Barturen Panez, Iker Gabriel</td><td>Done</td></tr>
  <tr><td>US31</td><td>Generar alerta por umbral</td><td>T40</td><td>Alertas en la Web App y la Mobile App</td><td>Mostrar las alertas del API con la misma escala de severidad que los niveles de salinidad.</td><td>3</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>US36</td><td>Reconocer alerta</td><td>T41</td><td>Reconocer alerta</td><td>Reconocer alertas desde ambas aplicaciones contra <code>POST /salinity-alerts/{id}/acknowledgement</code>.</td><td>1</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>US13</td><td>Vincular asesor con productor</td><td>T42</td><td>Cuentas vinculadas</td><td>Exponer <code>GET /users/me/linked-accounts</code> y las fincas del productor vinculado para el asesor.</td><td>4</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>US38</td><td>Configurar preferencias de notificación</td><td>T43</td><td>Preferencias en la Mobile App</td><td>Leer y guardar el nivel mínimo y los canales con <code>/notification-preferences/mine</code>.</td><td>3</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>TS04</td><td>Documentar servicios con OpenAPI</td><td>T44</td><td>OpenAPI por bounded context</td><td>Agrupar la documentación OpenAPI por bounded context con el esquema bearer JWT.</td><td>3</td><td>Barturen Panez, Iker Gabriel</td><td>Done</td></tr>
  <tr><td>—</td><td>Tarea técnica</td><td>T45</td><td>Despliegue en Railway</td><td>Configurar Railway con PostgreSQL, variables de entorno, Java 17 y CORS para las aplicaciones.</td><td>5</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>—</td><td>Tarea técnica</td><td>T46</td><td>Estados de carga y sesión</td><td>Mostrar carga, servidor no disponible y sesión expirada en la Web App y la Mobile App.</td><td>3</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>—</td><td>Tarea técnica</td><td>T47</td><td>Rediseño de la Mobile App</td><td>Aplicar la guía de estilo al arranque, inicio de sesión, inicio, alertas, detalle y perfil.</td><td>6</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>—</td><td>Tarea técnica</td><td>T48</td><td>Enlaces del Landing Page</td><td>Llevar los botones de planes e inicio de sesión a la Web App publicada en Vercel.</td><td>1</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>—</td><td>Tarea técnica</td><td>T49</td><td>Integrar ramas en develop</td><td>Revisar por pull request e integrar en <code>develop</code> las ramas del Sprint 2 de cada repositorio.</td><td>3</td><td>Barturen Panez, Iker Gabriel</td><td>To-Review</td></tr>
  <tr><td>—</td><td>Tarea técnica</td><td>T50</td><td>Edge Service v1</td><td>Recibir lecturas del dispositivo, validarlas (TS09), compensar la conductividad a 25 °C (TS08), guardarlas en SQLite y sincronizarlas por lotes con el RESTful API, también después de una caída de conexión.</td><td>8</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>—</td><td>Tarea técnica</td><td>T51</td><td>Embedded Application v1</td><td>Firmware del ESP32 con ModestIoT: lectura de conductividad, humedad y temperatura, envío al Edge Service y nivel de salinidad en el LED RGB.</td><td>8</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
  <tr><td>—</td><td>Tarea técnica</td><td>T52</td><td>Pruebas de aceptación con Cucumber</td><td>Automatizar los archivos <code>.feature</code> de TS01, US24 y US31 con Cucumber y Steps en Java.</td><td>4</td><td>Santiago Peña, Andreow Jomark</td><td>Done</td></tr>
</table>

La suma de Story Points del sprint es 60: TS02 (5), US19 (3), US20 (5), US22 (3), US21 (5), US23 (3), TS06 (5), US24 (5), TS03 (5), US31 (8), US36 (2), US13 (5), US38 (3) y TS04 (3). Las tareas técnicas T50 a T52 no suman Story Points: entregan la primera versión del Edge Service y de la Embedded Application que pide esta entrega y automatizan las pruebas de aceptación.

#### 6.2.2.4. Development Evidence for Sprint Review

En el Sprint 2 el RESTful API reorganizó su shared kernel por capas y agregó los endpoints que necesitaban las aplicaciones; la Web App reemplazó el servicio de demostración por clientes tipados del API; la Mobile App pasó a consumir el API con repositorios remotos y se rediseñó con la guía de estilo; el Landing Page actualizó sus enlaces a la Web App; y se crearon los repositorios del Edge Service y de la Embedded Application con su primera versión. El trabajo se hizo en ramas `feature/*` y `fix/*` que se integran en `develop` por pull request.

La tabla reúne los commits de implementación de cada repositorio entre el 29 de septiembre y el 18 de octubre de 2026, sin contar los commits de *merge* ni los de pruebas, que están en la sección 6.2.2.5. Incluye los commits del 29 y 30 de septiembre, posteriores al corte de la sección 6.2.1.4, y los del 22 de octubre del Edge Service, la Embedded Application y la configuración de Cucumber en el RESTful API.

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|---|---|---|---|---|---|
| OsoTerra-IoT/OsoTerra---Backend | feature/cucumber-acceptance-tests | 80298d3 | build(deps): add cucumber 8 with spring and junit platform suite | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Edge-Service | feature/edge-service-v1 | a389362 | docs(readme): describe edge service setup and reading lifecycle | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Edge-Service | feature/edge-service-v1 | a9f3e38 | feat(api): expose capture, sync and health endpoints | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Edge-Service | feature/edge-service-v1 | 3dadf8c | feat(monitoring): buffer readings and sync batches with the platform | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Edge-Service | feature/edge-service-v1 | d7cb159 | feat(monitoring): add reading validation and temperature compensation | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Edge-Service | feature/edge-service-v1 | b9a179c | feat(iam): register gateway devices and authenticate api keys | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Edge-Service | feature/edge-service-v1 | 25319bc | chore(setup): add project configuration and sqlite database | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Edge-Service | feature/edge-service-v1 | 6b08c51 | chore(repo): initialize edge service repository | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Embedded-Application | feature/real-board-calibration | ea10948 | docs(readme): explain real board wifi and moisture calibration | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Embedded-Application | feature/real-board-calibration | 6afe489 | feat(sensors): calibrate moisture between dry and wet readings | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Embedded-Application | feature/real-board-calibration | e677d12 | fix(wifi): scan every channel to join real routers | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Embedded-Application | feature/embedded-app-v1 | 69939f3 | docs(readme): describe circuit, design and behavior | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Embedded-Application | feature/embedded-app-v1 | aa777ff | feat(device): add sampling cycle, button events and pairing | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Embedded-Application | feature/embedded-app-v1 | 2bcc103 | feat(edge-client): send readings to the edge service | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Embedded-Application | feature/embedded-app-v1 | 97abe35 | feat(status-light): show salinity levels with rgb led patterns | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Embedded-Application | feature/embedded-app-v1 | b191f27 | feat(sensors): read soil ec, moisture and ds18b20 temperature | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Embedded-Application | feature/embedded-app-v1 | 13e67b3 | feat(modest-iot): add event, command, sensor and actuator framework | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Embedded-Application | feature/embedded-app-v1 | 0b93e41 | chore(setup): add platformio project and wokwi circuit | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Embedded-Application | feature/embedded-app-v1 | 06b0320 | chore(repo): initialize embedded application repository | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/sprint-2-integration | 14216d2 | fix(security): accept plain-text JWT secrets of any length | — | 05/10/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/sprint-2-integration | cf1dd24 | feat(security): allow CORS for the apps and public catalog reads | — | 05/10/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/sprint-2-integration | b494100 | fix(deploy): read the platform DATABASE_URL as datasource settings | — | 05/10/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/sprint-2-integration | 6076ecb | fix(build): target Java 17 so Railway's default JDK compiles it | — | 05/10/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/sprint-2-integration | e89ffe4 | fix(deploy): read Railway port and PostgreSQL variables | — | 05/10/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/sprint-2-integration | 68d003c | fix(build): run Flyway migrations with the Boot 4 starter | — | 05/10/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | a28d482 | feat: group OpenAPI documentation by bounded context | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 43f4740 | feat: add OpenAPI configuration with JWT bearer scheme | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | e8fc344 | feat: permit Swagger UI and OpenAPI docs routes | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | fea3730 | build: add springdoc OpenAPI dependency | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 1b81668 | refactor: remove flat shared kernel classes replaced by layered packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 1ac06fa | refactor: move CurrentUserId resolver and web MVC configuration to layered shared packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 97d31cf | fix: rename Analytics and Reporting exception handler to avoid bean name collision | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | ed972fe | refactor: update Analytics and Reporting REST interfaces to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 9d588d8 | refactor: update Analytics and Reporting application services to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 2c4b2c6 | refactor: update Analytics and Reporting domain model to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 41a4b98 | fix: rename Salinity Alerting exception handler to avoid bean name collision | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | f874cf9 | refactor: update Salinity Alerting REST interfaces to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | c59cf7a | refactor: update Salinity Alerting application services to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | f70d118 | refactor: update Salinity Alerting domain model to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 65acac8 | refactor: update Salinity Alerting domain events to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 8086755 | fix: rename Soil Monitoring exception handler to avoid bean name collision | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | bdc05da | refactor: update Soil Monitoring application services to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | d5f9d8b | refactor: update Soil Monitoring domain model to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 6aa2ef0 | refactor: update Soil Monitoring domain events to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 5a7308f | fix: rename Farm Management exception handler to avoid bean name collision | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 7d7f6ed | refactor: update Farm Management REST interfaces to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 87d27fe | refactor: update Farm Management application services to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 9fd9b52 | refactor: update Farm Management domain model to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 165b184 | refactor: update Farm Management domain events to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 0e1f1c6 | fix: rename Subscription and Billing exception handler to avoid bean name collision | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | af9c904 | refactor: update Subscription and Billing REST interfaces to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 1997fbe | refactor: update Subscription and Billing application services to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 7948040 | refactor: update Subscription and Billing domain model to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 0329f2a | refactor: update Subscription and Billing domain events to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 0811b68 | refactor: update IAM REST interfaces to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | b9fcf36 | refactor: update IAM application services to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 4e81722 | refactor: update IAM domain model to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | b207998 | refactor: update IAM domain events and exceptions to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 37ba5e7 | refactor: add CurrentUserId annotation to shared interfaces rest package | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 2bb6e4c | refactor: add AggregateRoot to shared domain model package | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 718dac9 | refactor: add Identifier to shared domain model package | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 7722903 | refactor: add ValueObject to shared domain model package | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 48ba938 | refactor: add EntityNotFoundException to shared domain exceptions package | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 2f4cbb2 | refactor: add BusinessRuleViolationException to shared domain exceptions package | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 0f4cbe8 | refactor: add DomainException to shared domain exceptions package | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | adb6064 | refactor: add DomainEvent to shared domain events package | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 524256d | fix: permit error dispatch through the security filter chain | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | c7edda6 | fix: map report section content as a plain text column | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | f31d9e4 | build: remove spring-dotenv dependency | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 439f3bd | fix: load local .env file manually at application startup | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/web-app-support | 10a4280 | feat(farm-management): let owners update farms and plots | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/web-app-support | 19d8ba4 | feat(api-platform): answer 403 for forbidden domain operations | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/web-app-support | da50638 | feat(iam): list accounts linked by advisory links | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/web-app-support | 1ff8a80 | feat(salinity-alerting): list corrective actions of an alert | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/web-app-support | e6ce405 | feat(farm-management): let linked advisors list a farmer's farms | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/web-app-support | 067cb02 | feat(farm-management): seed avocado and blueberry in crop catalog | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/backend-integration | 1afe282 | docs(api-platform): hide current user id from swagger parameters | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/backend-integration | 31be0d9 | feat(farm-management): list the device installed in a plot | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/backend-integration | 0436f01 | refactor(api-platform): drop remaining duplicate exception handlers | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/backend-integration | 1aa2349 | feat(soil-monitoring): authenticate edge telemetry with api key | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/backend-integration | 3c898dd | fix(salinity-alerting): keep ingestion alive when notification fails | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/backend-integration | 0b2de03 | fix(analytics-reporting): map report section content as text column | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/backend-integration | d13e76b | refactor(api-platform): drop duplicate per-context exception handlers | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/api-platform | 313e968 | refactor(iam): reuse shared error body and answer 401 on bad credentials | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/api-platform | ef3d499 | feat(api-platform): add openapi, cors, json errors and user id resolver | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/api-platform | 91d06af | build(deps): add flyway starter, springdoc and embedded postgres | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | fix/action-date-timezone | a762e04 | fix(i18n): agree home headlines with plot and client counts | — | 18/10/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | fix/action-date-timezone | e242b8d | fix(i18n): show corrective action dates on their calendar day | — | 18/10/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/device-activation | d6f3e74 | feat(devices): link a sensor to a plot by its activation code | — | 16/10/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/device-activation | c3e42cf | feat(fake-api): answer device registration and plot attachment | — | 16/10/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/railway-api | 96b8cb0 | feat(data): handle loading, offline api and expired sessions | — | 16/10/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/railway-api | c4835e7 | feat(api): point the default build at the Railway backend | — | 16/10/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/fake-api | a749db2 | refactor(data): read session and monitoring data from the api | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/fake-api | 5e5a689 | feat(fake-api): answer the api contract in the browser with demo data | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/fake-api | 2bdb735 | feat(api): add typed clients for the OsoSense RESTful API | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | feature/railway-api | 877937e | feat(alertas): registrar acciones y rediseñar alertas, detalle y perfil | — | 16/10/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | feature/railway-api | a547157 | feat(api): usar el backend de Railway y cerrar la sesión vencida | — | 16/10/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | feature/rediseno-inicio | 34e7184 | fix(mock): calcular el nivel de salinidad con la regla del backend | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | feature/rediseno-inicio | ee8875c | feat(tablero): rediseñar el inicio del productor con franjas animadas | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | feature/rediseno-inicio | 87a5efe | feat(login): rediseñar el inicio de sesión con panel de marca | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | feature/rediseno-inicio | 0153f7e | feat(inicio): rediseñar la pantalla de arranque con animación de marca | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | feature/rediseno-inicio | af162db | feat(ui): añadir franja de salinidad y corregir insets duplicados | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | feature/rediseno-inicio | fba0bea | style(tema): aplicar la paleta y Plus Jakarta Sans de la guía de estilo | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | feature/backend-api | eadd4b4 | docs(api): documentar el contrato real y el modo backend | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | feature/backend-api | d08d53e | feat(di): alternar entre mock y backend real al compilar | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | feature/backend-api | d45ccd0 | feat(repositorios): consumir el backend con repositorios remotos | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | feature/backend-api | 90ecdd6 | feat(api): declarar DTO y endpoints del RESTful API de OsoSense | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Landing-Page | feature/vercel-web-app-links | 7d0e774 | feat(cta): link buttons and sign-in to the web app on Vercel | — | 05/10/2026 |

#### 6.2.2.5. Testing Suite Evidence for Sprint Review

En el Sprint 2 las pruebas pasan de verificar cada bounded context por separado a recorrer flujos completos contra una base PostgreSQL real. El RESTful API tiene 75 pruebas que pasan con `./mvnw test` (70 de JUnit y 5 escenarios de Cucumber), la Web App 37 con `ng test`, la Mobile App 5 con `./gradlew testDebugUnitTest` y el Edge Service 39 con `pytest`.

**RESTful API · pruebas unitarias y de integración (JUnit 5, Spring MockMvc y PostgreSQL embebido)** — repositorio https://github.com/OsoTerra-IoT/OsoTerra---Backend, rama `feature/sprint-2-integration`.

| Clase de prueba | Tipo | Comportamientos verificados |
|---|---|---|
| `MainFlowIntegrationTest` | Integración | Recorrido del productor de punta a punta: planes y cultivos públicos, `401` sin token, registro e inicio de sesión, finca, parcela con cultivo, registro e instalación del dispositivo, lote de lecturas del Edge con su clave, alerta generada, reconocimiento y acción correctiva. |
| `AdvisorFlowIntegrationTest` | Integración | El asesor vinculado solo lee las fincas de su productor; el catálogo incluye los cultivos de exportación de la costa norte. |
| `OsosenseBackendApplicationTests` | Integración | La aplicación inicia contra PostgreSQL embebido y aplica las migraciones de Flyway. |
| `PlatformDatabaseUrlTest` | Unitaria | Lectura de la variable `DATABASE_URL` que inyecta Railway. |
| `JwtTokenServiceKeyTest` | Unitaria | Secretos JWT en texto plano de cualquier longitud. |
| `UserAccountTest`, `EmailAddressTest`, `AdvisoryLinkTest` | Unitaria | Dominio de Identity and Access Management (17 pruebas). |
| `FarmTest`, `PlotTest`, `CropTest`, `DeviceTest`, `GeoCoordinatesTest` | Unitaria | Dominio de Farm Management (19 pruebas): coordenadas, cultivo asignado, instalación del dispositivo. |
| `SoilReadingTest`, `CalibrationRecordTest` | Unitaria | Dominio de Soil Monitoring: lecturas fuera de rango o con fecha futura y factor de calibración. |
| `SalinityAlertTest`, `NotificationPreferenceTest` | Unitaria | Dominio de Salinity Alerting: severidad por exceso sobre el umbral, reconocimiento y resolución, canal de notificación. |
| `SubscriptionTest`, `SalinityTrendTest` | Unitaria | Ciclo de la suscripción y cálculo de la tendencia de salinidad. |

**Web App · pruebas unitarias y de navegación (Vitest vía Angular CLI)** — repositorio https://github.com/OsoTerra-IoT/OsoTerra---Web-Application, rama `fix/action-date-timezone`. Desde el Sprint 2 las pruebas se ejecutan contra el fake API, que responde el mismo contrato del RESTful API.

| Archivo | Relación | Comportamientos verificados |
|---|---|---|
| `auth.service.spec.ts` | US09–US12 | Inicio de sesión, registro por rol, recuperación de contraseña y cierre de sesión contra el API. |
| `monitoring.service.spec.ts` | US19–US24, US36, US37 | Fincas y parcelas del usuario, vinculación del sensor por código de activación (código en uso, parcela que ya tiene sensor), reconocimiento y acciones correctivas. |
| `salinity-status.spec.ts` | US27 | Nivel de salinidad frente al umbral del cultivo. |
| `locale.service.spec.ts` | US37 | Una fecha sin hora (`yyyy-MM-dd`) se muestra en el mismo día calendario, sin desplazarse por la zona horaria. |
| `app.spec.ts` | US11, US39, US43 | Rutas y menú por rol, redirección al inicio de sesión. |

**Mobile App · pruebas unitarias (JUnit en la JVM)** — repositorio https://github.com/OsoTerra-IoT/OsoTerra---Mobile-Application, rama `feature/railway-api`. `RemoteSupportTest` verifica que la app calcula el nivel de salinidad con la misma regla que las alertas del Backend, la equivalencia de severidades, el formato de las fechas del API, la separación del nombre completo y el mapeo de las preferencias de notificación en ambos sentidos.

**Edge Service · pruebas unitarias y de API (pytest)** — repositorio https://github.com/OsoTerra-IoT/OsoTerra---Edge-Service, rama `feature/edge-service-v1`. El cliente del RESTful API se prueba con respuestas simuladas, así que las pruebas no necesitan red.

| Archivo | Relación | Comportamientos verificados |
|---|---|---|
| `test_domain.py` | TS08, TS09 | Rangos del sensor (conductividad 0–20 dS/m, humedad 0–100 %, temperatura −10 a 60 °C), fecha futura y factor de compensación a 25 °C con la calibración del dispositivo. |
| `test_platform_sync_client.py` | TS06 | Cuerpo del lote que espera `POST /api/v1/soil-readings/batches`, cabecera `X-Edge-Api-Key`, hora local o UTC y lectura de `2xx`, `400`, `401`, `404`, `5xx` y falta de red. |
| `test_soil_readings_api.py` | TS06, TS08, TS09 | Clave del dispositivo, lectura repetida, lectura sin temperatura que no se envía, lectura fuera de rango (`422`), envío inmediato, buffer sin conexión, envío en orden cronológico por lotes y descarte después del límite de errores del servidor. |

La Embedded Application se verifica compilando el firmware con PlatformIO para el ESP32 (`pio run`) y con la prueba de punta a punta de la sección 6.2.2.6.

**Pruebas de aceptación (BDD) con Cucumber.** Los archivos `.feature` de la sección 3.1 se automatizaron con Cucumber 8 y Steps en Java en la rama `feature/cucumber-acceptance-tests` del RESTful API. `RunCucumberTest` ejecuta los archivos de `src/test/resources/features` dentro de `./mvnw test`, con el mismo contexto de Spring y la misma base PostgreSQL embebida que las pruebas de integración. Los Steps llaman al API con MockMvc: `AuthenticationSteps` para TS01, `SensorAndAlertSteps` para US24 y US31, y `CommonSteps` para el código de respuesta. Resultado: 5 escenarios y 23 pasos aprobados. El archivo de TS01 es el de la sección 6.2.1.5; este es el de US24 y US31:

```gherkin
Feature: US24 and US31 Link a sensor and raise a salinity alert
  As a farmer
  I want to link my sensor to a plot and be alerted when salinity exceeds my crop threshold
  So that I can act before the harvest is affected

  Scenario: Sensor linked by its activation code
    Given a farmer with a plot of table grape
    When the farmer registers the device with activation code "OSO-3H8D-5T2W"
    And attaches it to the plot
    Then the device status is "ACTIVE" and it belongs to the plot

  Scenario: Reading above the crop threshold
    Given a farmer with a plot of table grape
    And the plot has an active device
    When the Edge Service sends a batch with a compensated conductivity of 2.4 dS/m
    And the request carries a valid "X-Edge-Api-Key"
    Then the batch is synchronized
    And an open salinity alert with severity "CRITICAL" exists for the plot

  Scenario: Batch without the Edge key
    Given a farmer with a plot of table grape
    And the plot has an active device
    When the Edge Service sends a batch with a compensated conductivity of 2.4 dS/m
    And the request carries no "X-Edge-Api-Key"
    Then the response status is 401
```

Cada escenario crea su propio productor y su propia parcela, así que los escenarios no dependen del orden en que se ejecutan.

Commits relacionados con pruebas en el Sprint 2:

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|---|---|---|---|---|---|
| OsoTerra-IoT/OsoTerra---Backend | develop | 9f06cec | test: update Analytics and Reporting domain tests to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | df035a4 | test: update Salinity Alerting domain tests to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 0d2bed8 | test: update Farm Management domain tests to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | f8ffa67 | test: update Subscription and Billing domain tests to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | develop | 66e1236 | test: update IAM domain tests to layered shared kernel packages | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/web-app-support | 9272ef7 | test(farm-management): cover farm and plot updates | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/web-app-support | 9226b05 | test(api-platform): cover advisor access and corrective actions | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/backend-integration | b3e759b | test(api-platform): cover farmer journey from sign-up to alert | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/api-platform | 4109915 | test(api-platform): load context against embedded postgres | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | feature/fake-api | c87ab95 | test(data): run service and route specs against the fake api | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Mobile-Application | feature/backend-api | 744d520 | test(repositorios): cubrir reglas de salinidad y formato de fechas | — | 30/09/2026 |
| OsoTerra-IoT/OsoTerra---Web-Application | fix/action-date-timezone | e242b8d | fix(i18n): show corrective action dates on their calendar day | — | 18/10/2026 |
| OsoTerra-IoT/OsoTerra---Backend | feature/cucumber-acceptance-tests | b853ff4 | test(acceptance): automate ts01 and us24-us31 features with cucumber | — | 22/10/2026 |
| OsoTerra-IoT/OsoTerra---Edge-Service | feature/edge-service-v1 | 586b0a7 | test(monitoring): cover domain, sync client and readings api | — | 22/10/2026 |

#### 6.2.2.6. Execution Evidence for Sprint Review

Al cierre de esta revisión el productor y el asesor trabajan con datos del RESTful API. Las capturas de la Web App muestran un recorrido completo con el backend en ejecución local y cuentas de prueba: el productor registra su finca y sus parcelas, vincula el sensor con el código de activación, el Edge Service envía las lecturas, aparece la alerta y el productor registra la acción correctiva. La Mobile App se probó con el mismo flujo en el emulador Android (Pixel 7).

<div align="center">
<img src="../assets/sprint-2/webapp-02-mis-parcelas.png" alt="Fincas y parcelas del productor en la Web App" width="800">
<p><em>Figura 6.23. Fincas y parcelas del productor registradas en el RESTful API.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/webapp-03-vincular-sensor.png" alt="Formulario para vincular un sensor con su código de activación" width="800">
<p><em>Figura 6.24. Vinculación del sensor con su código de activación (US24).</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/webapp-04-sensor-vinculado.png" alt="Sensor vinculado a la parcela" width="800">
<p><em>Figura 6.25. Sensor vinculado y conectado a la parcela.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/webapp-05-inicio-con-alerta.png" alt="Inicio del productor con una parcela sobre el umbral" width="800">
<p><em>Figura 6.26. Inicio del productor después de la sincronización del Edge: Lote Norte al 160 % del umbral de la uva.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/webapp-06-estado-parcela.png" alt="Estado actual de la parcela con humedad y temperatura" width="800">
<p><em>Figura 6.27. Estado actual de la parcela con la última lectura.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/webapp-08-alertas.png" alt="Bandeja de alertas con severidad vigilancia, advertencia y crítica" width="800">
<p><em>Figura 6.28. Alertas generadas por el umbral del cultivo (US31).</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/webapp-09-accion-correctiva.png" alt="Registro de una acción correctiva" width="800">
<p><em>Figura 6.29. Registro de la acción correctiva de una alerta (US37).</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/webapp-10-alerta-resuelta.png" alt="Alerta resuelta con su acción registrada" width="800">
<p><em>Figura 6.30. Alerta resuelta con la acción registrada en el mismo día calendario.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/webapp-11-dispositivos.png" alt="Dispositivos del productor" width="800">
<p><em>Figura 6.31. Dispositivos del productor y su estado de conexión.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/webapp-12-inicio-asesor.png" alt="Inicio del asesor con las parcelas de su cliente por prioridad" width="800">
<p><em>Figura 6.32. Inicio del asesor vinculado: parcelas de su cliente ordenadas por prioridad (US13, US43).</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/mobile-01-detalle-parcela.png" alt="Detalle de parcela en la Mobile App" width="260">
<img src="../assets/sprint-2/mobile-02-alertas.png" alt="Alertas en la Mobile App" width="260">
<img src="../assets/sprint-2/mobile-03-accion-correctiva.png" alt="Registro de acción correctiva en la Mobile App" width="260">
<p><em>Figura 6.33. Mobile App: detalle de parcela, alertas y registro de la acción correctiva.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/mobile-04-preferencias-notificacion.png" alt="Preferencias de notificación en la Mobile App" width="260">
<img src="../assets/sprint-2/mobile-05-perfil.png" alt="Perfil en la Mobile App" width="260">
<p><em>Figura 6.34. Mobile App: preferencias de notificación (US38) y perfil con los datos de la sesión.</em></p>
</div>

**Recorrido del dispositivo al RESTful API.** El 22 de octubre se probó la cadena completa en local: el RESTful API de `develop` con PostgreSQL, el Edge Service en el puerto 5000 y lecturas del dispositivo `OS-014` con el mismo JSON que envía la Embedded Application (`deviceId`, `conductivityDsM`, `moisturePercent`, `temperatureCelsius`, cabecera `X-API-Key`). El sensor estaba vinculado a una parcela de palta, con umbral de 1,1 dS/m, de una cuenta de prueba creada solo en ese entorno.

| Lectura del dispositivo | Respuesta del Edge Service | Resultado en el RESTful API |
|---|---|---|
| 0,80 dS/m a 24,1 °C | `201`, conductividad compensada 0,815 dS/m, `SYNCHRONIZED` | Lectura guardada, sin alerta |
| 2,10 dS/m a 27,5 °C | `201`, conductividad compensada 2,0 dS/m, `SYNCHRONIZED` | Alerta `CRITICAL` (1,82 veces el umbral) |
| 1,30 dS/m sin temperatura | `201`, `UNCOMPENSATED`, no se envía (TS08) | — |
| 25 dS/m | `422`, `DISCARDED` por estar fuera de rango (TS09) | — |
| Clave del dispositivo inválida | `401` | — |
| 1,25 y 1,40 dS/m con el API detenido | `201`, `PENDING`; el Edge informa `platformReachable: false` | Al volver el API, el Edge envió las dos lecturas en un lote sin intervención: alertas `WATCH` y `WARNING` |

<div align="center">
<img src="../assets/sprint-2/edge-e2e-edge-readings.png" alt="Lecturas guardadas en el buffer del Edge Service con su estado de sincronización" width="700">
<p><em>Figura 6.35. Buffer del Edge Service: lecturas sincronizadas, sin compensar y descartadas, con el lote del API en el que llegó cada una.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/edge-e2e-edge-health.png" alt="Estado del Edge Service" width="700">
<p><em>Figura 6.36. Estado del Edge Service: conexión con el API y lecturas por estado.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/edge-e2e-backend-readings.png" alt="Lecturas recibidas por el RESTful API desde el Edge Service" width="700">
<p><em>Figura 6.37. Lecturas que el RESTful API recibió del Edge Service para la parcela, con la conductividad compensada.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/edge-e2e-backend-alert.png" alt="Alertas generadas en el RESTful API" width="700">
<p><em>Figura 6.38. Alertas generadas por las lecturas del Edge Service: crítica, vigilancia y advertencia.</em></p>
</div>

La Embedded Application usa el circuito de la sección 5.6: potenciómetros en GPIO 34 y 35 para la conductividad y la humedad (Wokwi no tiene esos sensores), DS18B20 en GPIO 4, LED RGB en GPIO 25, 26 y 27, y botón en GPIO 14. Sigue el estilo ModestIoT del curso: los sensores avisan al dispositivo con eventos y el dispositivo da órdenes al LED con comandos. Con la conductividad compensada que devuelve el Edge, el LED muestra el nivel con las mismas severidades que las alertas del API: verde por debajo del umbral, ámbar hasta 1,2 veces, naranja hasta 1,5 veces y rojo desde 1,5 veces. Una pulsación corta toma una lectura inmediata y una de tres segundos activa el emparejamiento. Para la placa real, la humedad se calibra con las lecturas del sensor capacitivo en aire seco y en agua (`MOISTURE_RAW_DRY` y `MOISTURE_RAW_WET`), y el Wi-Fi busca en todos los canales para conectarse a cualquier router de 2,4 GHz. El firmware se compila con PlatformIO y se simula con `diagram.json` y `wokwi.toml` del repositorio.

<!-- TODO(equipo): grabar el video de navegación del Sprint 2 (Web App y Mobile App contra el API en Railway) y agregar aquí su enlace de Microsoft Stream. -->

#### 6.2.2.7. Services Documentation Evidence for Sprint Review

Desde el Sprint 2 la documentación OpenAPI se publica junto con el API desplegado:

- **Swagger UI:** https://osoterra-backend-production.up.railway.app/swagger-ui.html, con una definición por bounded context en *Select a definition*.
- **Especificación OpenAPI 3.1:** https://osoterra-backend-production.up.railway.app/v3/api-docs/all (52 operaciones) y `/v3/api-docs/{grupo}` para `iam`, `subscription-billing`, `farm-management`, `soil-monitoring`, `salinity-alerting` y `analytics-reporting`.

Las reglas de la sección 6.2.1.7 se mantienen: JSON, ruta base `/api/v1` y JWT en la cabecera `Authorization`. La tabla resume los endpoints que se agregaron o cambiaron en el Sprint 2; los demás siguen igual.

| Endpoint | Acción | Verbo | Sintaxis de llamada | Parámetros | Respuesta |
|---|---|---|---|---|---|
| `/api/v1/farms/{id}` | Editar finca | PUT | `PUT /api/v1/farms/3` | Ruta: `id`; cuerpo: `name`, `department`, `province`, `district` | `200 OK` con la finca actualizada; `403` si no es del usuario. |
| `/api/v1/plots/{id}` | Editar parcela | PUT | `PUT /api/v1/plots/7` | Ruta: `id`; cuerpo: `name`, `areaHectares`, `latitude`, `longitude` | `200 OK` con la parcela actualizada; `403` si no es del usuario. |
| `/api/v1/farms` | Listar fincas de un productor vinculado | GET | `GET /api/v1/farms?ownerId=1` | Consulta: `ownerId`; token de un asesor con vínculo aceptado | `200 OK` con la lista de fincas; `403` sin vínculo. |
| `/api/v1/devices` | Consultar el sensor de una parcela | GET | `GET /api/v1/devices?plotId=7` | Consulta: `plotId` | `200 OK` con la lista de dispositivos instalados en la parcela. |
| `/api/v1/users/me/linked-accounts` | Listar cuentas vinculadas | GET | `GET /api/v1/users/me/linked-accounts` | Token del productor o del asesor | `200 OK` con las cuentas de la otra parte de cada vínculo aceptado. |
| `/api/v1/salinity-alerts/{id}/corrective-actions` | Listar acciones de una alerta | GET | `GET /api/v1/salinity-alerts/21/corrective-actions` | Ruta: `id` | `200 OK` con `id`, `salinityAlertId`, `actionType`, `executedAt` y `notes` de cada acción. |
| `/api/v1/soil-readings/batches` | Ingerir lote de lecturas | POST | `POST /api/v1/soil-readings/batches` | Cabecera `X-Edge-Api-Key`; cuerpo: `deviceId` y `readings` | `201 Created` con `status` (`SYNCHRONIZED`), `acceptedCount` y `discardedCount`; `401` sin la clave del Edge. |

<div align="center">
<img src="../assets/sprint-2/swagger-railway-iam.png" alt="Swagger UI en Railway: Identity and Access Management" width="800">
<p><em>Figura 6.39. Swagger UI en Railway: Identity and Access Management, con <code>/users/me/linked-accounts</code>.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/swagger-railway-farm-management-1.png" alt="Swagger UI en Railway: Farm Management, endpoints de cultivos, dispositivos, fincas y parcelas" width="800">
<p><em>Figura 6.40. Swagger UI en Railway: Farm Management, con la edición de fincas y parcelas y la consulta de dispositivos por parcela (1 de 2).</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/swagger-railway-farm-management-2.png" alt="Swagger UI en Railway: Farm Management, esquemas" width="800">
<p><em>Figura 6.40. Swagger UI en Railway: Farm Management, esquemas de los recursos (2 de 2).</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/swagger-railway-soil-monitoring.png" alt="Swagger UI en Railway: Soil Monitoring" width="800">
<p><em>Figura 6.41. Swagger UI en Railway: Soil Monitoring, con la ingesta de lotes del Edge Service.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/swagger-railway-salinity-alerting.png" alt="Swagger UI en Railway: Salinity Alerting" width="800">
<p><em>Figura 6.42. Swagger UI en Railway: Salinity Alerting, con la consulta de acciones correctivas.</em></p>
</div>

El Edge Service expone su propia API REST en el gateway de la parcela, documentada en el README de su repositorio (https://github.com/OsoTerra-IoT/OsoTerra---Edge-Service):

| Endpoint | Acción | Verbo | Sintaxis de llamada | Parámetros | Respuesta |
|---|---|---|---|---|---|
| `/api/v1/soil-readings` | Recibir una lectura del dispositivo | POST | `POST /api/v1/soil-readings` | Cabecera `X-API-Key`; cuerpo: `deviceId`, `conductivityDsM`, `moisturePercent`, `temperatureCelsius` (opcional), `capturedAt` (opcional) | `201 Created` con la lectura compensada y su estado; `200` si se repite; `401` con clave inválida; `422` si está fuera de rango. |
| `/api/v1/soil-readings` | Consultar el buffer | GET | `GET /api/v1/soil-readings?status=PENDING&limit=50` | Consulta: `status`, `limit` | `200 OK` con las últimas lecturas guardadas. |
| `/api/v1/soil-readings/synchronizations` | Forzar una sincronización | POST | `POST /api/v1/soil-readings/synchronizations` | — | `200 OK` con lecturas enviadas, rechazadas, pendientes y descartadas. |
| `/api/v1/health` | Estado del gateway | GET | `GET /api/v1/health` | — | `200 OK` con `status`, `platformReachable` y lecturas por estado. |

Los endpoints nuevos provienen de los commits `10a4280` (edición de fincas y parcelas), `e6ce405` (fincas del productor vinculado), `31be0d9` (dispositivo de la parcela), `da50638` (cuentas vinculadas), `1ff8a80` (acciones de una alerta) y `1aa2349` (clave del Edge).

#### 6.2.2.8. Software Deployment Evidence for Sprint Review

En el Sprint 2 se desplegó el RESTful API, el primer producto que corre en un proveedor cloud. Se creó una cuenta en Railway vinculada a la organización OsoTerra-IoT de GitHub.

1. **Proyecto en Railway.** Se creó el proyecto con el servicio del repositorio `OsoTerra---Backend` y una base PostgreSQL gestionada en el entorno `production`.
2. **Ajustes para la plataforma.** La rama `fix/railway-deploy` adaptó el API a Railway: arranque de Flyway con Spring Boot 4 (`68d003c`), puerto y variables de PostgreSQL de Railway (`e89ffe4`), compilación con Java 17 (`6076ecb`), lectura de `DATABASE_URL` (`b494100`), CORS para las aplicaciones (`cf1dd24`) y secretos JWT de cualquier longitud (`14216d2`).
3. **Integración del contrato de las aplicaciones.** La rama `feature/sprint-2-integration` unió esos ajustes con los endpoints que usan la Web App y la Mobile App. Railway la desplegó al recibir el push en la rama configurada.
4. **Verificación.** Swagger UI responde `200`, el catálogo público devuelve 14 cultivos, `GET /users/me` sin token devuelve `401` en JSON y el origen de la Web App en Vercel pasa el control de CORS.

| Despliegue | Commit | Fecha | Estado |
|---|---|---|---|
| exquisite-serenity / production | `5a30a2c` | 05/10/2026 | Fallido: primer intento desde `develop`, antes de los ajustes para Railway |
| exquisite-serenity / production | `6076ecb` | 05/10/2026 | Reemplazado: compilación con Java 17 |
| exquisite-serenity / production | `cf1dd24` | 05/10/2026 | Reemplazado: CORS para las aplicaciones |
| exquisite-serenity / production | `14216d2` | 05/10/2026 | Reemplazado: secreto JWT de Railway |
| exquisite-serenity / production | `1c76580` | 16/10/2026 | Activo: contrato del Sprint 2 (52 operaciones) |

*Despliegues registrados por Railway en la pestaña Deployments del repositorio del Backend, consultados con la API de GitHub el 18/10/2026.*

<div align="center">
<img src="../assets/sprint-2/railway-api-crops.png" alt="Respuesta del endpoint público de cultivos en Railway" width="800">
<p><em>Figura 6.43. Respuesta de <code>GET /api/v1/crops</code> en el API desplegado en Railway.</em></p>
</div>

La Web App se publica en GitHub Pages desde `develop` (Figura 6.44) y en Vercel; cada push a una rama genera además un despliegue de vista previa en Vercel. La versión del Sprint 2, que consume el API de Railway, se publica en ambas URL al integrar su rama en `develop`. El Landing Page sigue en GitHub Pages con los enlaces a la Web App en Vercel (`7d0e774`).

<div align="center">
<img src="../assets/sprint-2/webapp-github-pages.png" alt="Web App publicada en GitHub Pages" width="800">
<p><em>Figura 6.44. Web App publicada en GitHub Pages.</em></p>
</div>

El Edge Service y la Embedded Application no se despliegan en la nube: el Edge Service corre en el gateway de la parcela (una Raspberry Pi o una PC) y la Embedded Application se carga en el ESP32. Sus repositorios se publicaron en la organización con `develop` como rama principal:

- **Edge Service:** https://github.com/OsoTerra-IoT/OsoTerra---Edge-Service. Se instala con `pip install -r requirements.txt` y se ejecuta con `python app.py`; la URL del API (`PLATFORM_BASE_URL`), la clave del Edge (`EDGE_API_KEY`) y los dispositivos del gateway (`EDGE_DEVICES`) se configuran con variables de entorno.
- **Embedded Application:** https://github.com/OsoTerra-IoT/OsoTerra---Embedded-Application. Se compila con `pio run` para la placa `esp32dev` (15 % de RAM y 86,7 % de flash) y se carga en el ESP32 o en el simulador Wokwi.

<!-- TODO(equipo): publicar el APK de la Mobile App en Firebase App Distribution y agregar aquí la captura. -->

#### 6.2.2.9. Team Collaboration Insights during Sprint

Las capturas muestran la actividad de los repositorios de producto durante el Sprint 2.

<div align="center">
<img src="../assets/sprint-2/commits-backend.png" alt="Commits del RESTful API en la rama del Sprint 2" width="800">
<p><em>Figura 6.45. Commits del RESTful API en <code>feature/sprint-2-integration</code>.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/network-backend.png" alt="Network graph del RESTful API" width="800">
<p><em>Figura 6.46. Network graph del RESTful API: ramas de despliegue e integración del Sprint 2.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/commits-webapp.png" alt="Commits de la Web App en la rama del Sprint 2" width="800">
<p><em>Figura 6.47. Commits de la Web App en las ramas del Sprint 2.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/network-webapp.png" alt="Network graph de la Web App" width="800">
<p><em>Figura 6.48. Network graph de la Web App.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/commits-mobile.png" alt="Commits de la Mobile App en la rama del Sprint 2" width="800">
<p><em>Figura 6.49. Commits de la Mobile App en <code>feature/railway-api</code>.</em></p>
</div>

<div align="center">
<img src="../assets/sprint-2/contributors-backend.png" alt="Contributors del RESTful API" width="800">
<p><em>Figura 6.50. Contribuciones al RESTful API por integrante (GitHub Insights).</em></p>
</div>

| Integrante | Landing Page | Web App | RESTful API | Mobile App | Edge Service | Embedded App |
|---|---|---|---|---|---|---|
| Barturen Panez, Iker Gabriel (krxxg04) | | | 50 | | | |
| Encalada Salazar, Alexis (Alexiz248) | | | | | | |
| Goñe Araccata, Esther Abigail (abigoe02) | | | | | | |
| Ortiz Alarcon, Victor Nicolas (Nico1234556) | | | | | | |
| Salazar Caballero, Alvaro Fabrizzio (DymianUPC) | | | | | | |
| Santiago Peña, Andreow Jomark (andrew65411) | 1 | 10 | 28 | 13 | 8 | 11 |
| Tumi Oliden, Manuel Ignacio (ManuelTumi2224) | | | | | | |

*Número de commits sin contar merges, por repositorio, del 29 de septiembre al 22 de octubre de 2026.*

**Interpretación del equipo.** Al 18 de octubre el Sprint 2 se apoya en dos integrantes: Iker reorganizó el shared kernel del RESTful API en todos los bounded contexts y Andreow integró las aplicaciones con el API, lo desplegó en Railway y, al 22 de octubre, creó la primera versión del Edge Service y de la Embedded Application y automatizó las pruebas de aceptación con Cucumber. El acuerdo de la retrospectiva del Sprint 1, que cada colaborador de la matriz tome tareas propias en cada repositorio, todavía no se refleja en los commits, y las ramas del sprint aún no pasan por pull request a `develop`. Para cerrar el sprint, el equipo reparte las tareas pendientes del aspecto de cada colaborador (sección 6.2.2.2), revisa por pull request las ramas `feature/sprint-2-integration`, `feature/railway-api` y `fix/action-date-timezone` antes de integrarlas en `develop`, y actualiza esta tabla con los commits de todos los integrantes.

## 6.3. Validation Interviews

### 6.3.1. Diseño de Entrevistas

Las entrevistas de validación comprueban si los dos segmentos objetivo entienden el Landing Page y si pueden completar con la Web App y la Mobile App las tareas que motivaron OsoSense: saber cómo está la parcela, atender una alerta, registrar una parcela con su sensor y, en el caso de los asesores, priorizar visitas. A diferencia de las entrevistas de la sección 2.2, aquí el participante usa los productos publicados y el equipo observa lo que hace, no solo lo que dice.

Cada sesión dura entre 25 y 35 minutos, se graba en video con el consentimiento del participante y sigue el mismo orden: presentación y consentimiento (2 min), recorrido libre del Landing Page (5 min), tareas guiadas en la Web App y la Mobile App con la técnica de pensar en voz alta (15–20 min) y preguntas de cierre (5 min). El moderador lee cada tarea sin indicar dónde está la opción y anota si el participante la completa sin ayuda, con ayuda o no la completa, el tiempo que le toma y los comentarios espontáneos. Se usan cuentas de prueba con datos de una finca de la costa norte para que todos los participantes vean el mismo escenario. Se hacen entre tres y cinco entrevistas por segmento.

**Segmento 1: pequeños y medianos productores agropecuarios**

| Producto | Elementos a validar | Tarea que se pide al participante | Se completa cuando |
|---|---|---|---|
| Landing Page | Hero, bloque del problema de salinización, beneficios para el productor, planes y precios | «Cuénteme qué hace este producto y si le serviría en su campo.» Luego: «¿Cuánto le costaría monitorear dos parcelas?» | Explica el propósito con sus palabras e identifica el plan y su precio. |
| Landing Page → Web App | Botón de plan y registro | «Cree una cuenta de productor.» | Llega al registro de la Web App en dos clics o menos. |
| Web App (UF1) | Inicio con franjas de salinidad, detalle de parcela | «¿Alguna de sus parcelas necesita atención hoy? ¿Por qué?» | Identifica la parcela sobre el umbral sin abrir otra vista y explica el nivel. |
| Web App (UF3) | Registro de finca y parcela, cultivo, vincular sensor | «Registre una parcela nueva de uva y conecte el sensor con el código de la etiqueta.» | La parcela queda con su cultivo y el sensor vinculado. |
| Web App (UF2) | Bandeja de alertas, reconocer, registrar acción | «Le llegó una alerta. Indique que ya la vio y anote lo que hizo en el campo.» | La alerta queda resuelta con la acción registrada. |
| Web App | Mi asesor, solicitudes de vínculo | «Un ingeniero le pidió acceso a sus parcelas. Acéptelo.» | La solicitud pasa a asesor aceptado. |
| Mobile App (UF7, UF8) | Inicio, alertas, hoja de acción correctiva, preferencias de notificación | «Revise en el celular la misma alerta y elija recibir avisos solo cuando sea crítica.» | Registra la acción y guarda la preferencia. |

**Segmento 2: ingenieros agrónomos y asesores técnicos agrícolas**

| Producto | Elementos a validar | Tarea que se pide al participante | Se completa cuando |
|---|---|---|---|
| Landing Page | Capacidades para asesores, foto del sensor, planes | «¿Qué le ofrece esta plataforma para su trabajo con clientes?» | Nombra al menos dos capacidades (tablero multiparcela, reportes, calibración). |
| Web App (UF4) | Inicio del asesor por prioridad, comparación de parcelas | «¿Qué parcela visitaría primero esta semana y por qué?» | Elige la parcela con mayor porcentaje del umbral y lo justifica con el dato. |
| Web App (UF5) | Calibración con el resultado de laboratorio | «Registre el resultado de laboratorio de 2,1 dS/m y aplique la calibración.» | El factor queda aplicado al dispositivo. |
| Web App (UF6) | Reporte de parcela y exportación a PDF | «Prepare el reporte del último mes para su cliente.» | Exporta el PDF del periodo. |
| Web App | Mis clientes, invitación por correo | «Invite a este productor a darle acceso a sus parcelas.» (se le da el correo) | La invitación aparece como pendiente. |
| Web App (UF4) | Comparación de parcelas | «Compare las dos parcelas de sus clientes y dígame cuál empeora.» | Abre la comparación de ambas parcelas y lee la tendencia. |
| Mobile App | Alertas del asesor | «En el celular, revise las alertas de sus clientes y reconozca la más grave.» | La alerta crítica queda reconocida. |

**Preguntas de cierre (ambos segmentos).** ¿Qué fue lo más fácil y lo más difícil? ¿Hubo alguna palabra o número que no entendió? ¿Confiaría en la alerta para decidir un riego o una visita? ¿Qué le falta para usarlo cada semana? Del 1 al 5, ¿qué tan probable es que lo recomiende a otro productor o asesor?

Las observaciones de cada sesión se registran en la sección 6.3.2 y los problemas encontrados se clasifican con el formato de evaluación heurística del Anexo D en la sección 6.3.3.

<!-- TODO(equipo): realizar las entrevistas (3 a 5 por segmento), subir el video consolidado upc-pre-202620-1asi0572-8735-OsoTerra-validation-sprint-2 a Microsoft Stream y completar 6.3.2 y 6.3.3. -->

### 6.3.2. Registro de Entrevistas

### 6.3.3. Evaluaciones según heurísticas

## 6.4. Video About-the-Product
