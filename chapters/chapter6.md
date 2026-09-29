# Capítulo VI: Product Implementation, Validation & Deployment

## 6.1. Software Configuration Management

Esta sección fija las decisiones y convenciones que mantienen la consistencia de los productos de OsoSense durante todo su ciclo de vida: con qué herramientas trabaja el equipo, cómo se organiza el código en GitHub, cómo se escribe en cada lenguaje y cómo se despliega cada producto. Todo lo que se describe aquí se aplica desde el Sprint 1 y se puede verificar en los repositorios de la organización [OsoTerra-IoT](https://github.com/OsoTerra-IoT).

### 6.1.1. Software Development Environment Configuration

El equipo usa solo las herramientas indicadas en el enunciado. La tabla agrupa cada producto por la actividad del ciclo de vida en la que se usa, con su propósito en el proyecto y la ruta de acceso (SaaS) o de descarga (software que se instala en la computadora de cada integrante).

**Project Management y Requirements Management**

| Producto | Propósito en el proyecto | Ruta |
|---|---|---|
| Trello | Product Backlog, Sprint Backlog y tablero de tareas del sprint. | https://trello.com/b/adykOjs5/ososense-backlog |
| GitHub (organización y pull requests) | Revisión de cambios, historial y *insights* de colaboración de cada repositorio. | https://github.com/OsoTerra-IoT |
| UXPressia | User Personas, Empathy Maps, Journey Maps e Impact Maps. | https://uxpressia.com |

**Product UX/UI Design**

| Producto | Propósito en el proyecto | Ruta |
|---|---|---|
| Figma | Guía de estilo, wireframes, mock-ups, prototipos, arquitectura de información y diseño físico del dispositivo. | https://www.figma.com |
| FigJam | EventStorming, wireflows y user flows. | https://www.figma.com/figjam |
| Structurizr | Diagramas C4 (Landscape, Context, Container y Deployment) a partir de Structurizr DSL. | https://structurizr.com |
| Wokwi | Diseño y simulación del circuito del dispositivo IoT. | https://wokwi.com |

**Software Development**

| Producto | Propósito en el proyecto | Ruta |
|---|---|---|
| Git | Control de versiones local. | https://git-scm.com/downloads |
| Visual Studio Code | Edición del Landing Page, del informe en Markdown y del Edge Service. | https://code.visualstudio.com/download |
| WebStorm | Desarrollo de la Web App en Angular y TypeScript. | https://www.jetbrains.com/webstorm/download |
| IntelliJ IDEA | Desarrollo del RESTful API con Java y Spring Boot. | https://www.jetbrains.com/idea/download |
| Android Studio | Desarrollo de la Mobile App con Kotlin y Jetpack Compose. | https://developer.android.com/studio |
| Node.js 24 y npm | Ejecución y construcción de la Web App (Angular CLI). | https://nodejs.org/en/download |
| JDK 25 y Maven | Compilación y ejecución del RESTful API. | https://adoptium.net · https://maven.apache.org/download.cgi |
| PostgreSQL | Base de datos del RESTful API en el entorno local. | https://www.postgresql.org/download |
| Python 3 con Flask, Peewee y SQLite | Edge Service (desde el Sprint 2). | https://www.python.org/downloads |
| Arduino IDE (núcleo ESP32) | Compilación y carga de la Embedded Application en el ESP32 (desde el Sprint 2). | https://www.arduino.cc/en/software |

**Software Testing**

| Producto | Propósito en el proyecto | Ruta |
|---|---|---|
| Vitest (vía Angular CLI) | Pruebas unitarias y de navegación de la Web App (`ng test`). | https://vitest.dev |
| JUnit 5 y Spring Boot Test | Pruebas unitarias y de integración del RESTful API. | https://junit.org/junit5 |
| Postman | Pruebas manuales de los endpoints del RESTful API. | https://www.postman.com/downloads |
| Wokwi | Simulación del firmware antes de cargarlo en el dispositivo. | https://wokwi.com |

**Software Deployment**

| Producto | Propósito en el proyecto | Ruta |
|---|---|---|
| GitHub Pages | Publicación del Landing Page y de la Web App. | https://pages.github.com |
| GitHub Actions | Construcción y publicación automática de la Web App al integrar cambios en `develop`. | https://github.com/features/actions |
| Firebase App Distribution | Distribución de la Mobile App a dispositivos físicos de prueba. | https://firebase.google.com/products/app-distribution |

**Software Documentation**

| Producto | Propósito en el proyecto | Ruta |
|---|---|---|
| GitHub (Markdown) | Informe del proyecto; `README.md` es el archivo principal. | https://github.com/OsoTerra-IoT/OsoTerra---Project-Report |
| OpenAPI Specification vía Swagger | Documentación de los endpoints del RESTful API. | https://swagger.io/specification |
| Microsoft Stream / Clipchamp | Videos de exposición, del producto y de los prototipos. | https://clipchamp.com |

### 6.1.2. Source Code Management

El código de cada producto vive en su propio repositorio de GitHub, dentro de la organización OsoTerra-IoT. Los repositorios del Edge Service y de la Embedded Application se crean en el Sprint 2, cuando empieza su implementación.

| Producto | Repositorio | Contenido |
|---|---|---|
| Landing Page | https://github.com/OsoTerra-IoT/OsoTerra---Landing-Page | Sitio estático en HTML5, CSS3 y JavaScript. |
| Web Services (RESTful API) | https://github.com/OsoTerra-IoT/OsoTerra---Backend | Proyecto Spring Boot con sus pruebas unitarias y de integración en `src/test`. |
| Frontend Web Application | https://github.com/OsoTerra-IoT/OsoTerra---Web-Application | Proyecto Angular con sus pruebas (`*.spec.ts`) y el flujo de despliegue en `.github/workflows`. |
| Mobile Application | https://github.com/OsoTerra-IoT/OsoTerra---Mobile-Application | Proyecto Android en Kotlin y Jetpack Compose. |
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

Cada producto se construye y publica a partir de su repositorio. Para el TB1 están desplegados el Landing Page y la Web App; los demás productos tienen su configuración definida y se despliegan en los sprints siguientes.

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

**Web Services (RESTful API)** — despliegue en la nube en el Sprint 2

1. Configurar las variables de entorno de la base de datos PostgreSQL, del correo y de la clave JWT.
2. Construir con `mvn clean package`, que ejecuta las pruebas y genera el `.jar`.
3. Las migraciones de Flyway crean o actualizan el esquema al iniciar la aplicación.
4. Publicar el `.jar` en el servidor de aplicaciones del proveedor cloud y exponer la documentación OpenAPI en `/swagger-ui`.

**Mobile Application** — distribución de prueba en el Sprint 2

1. Generar el APK de *release* firmado desde Android Studio (*Build → Generate Signed App Bundle / APK*).
2. Subirlo a Firebase App Distribution y agregar a los integrantes y usuarios de prueba.
3. Los usuarios de prueba instalan la app desde el enlace de invitación en su celular Android.

**Edge Service y Embedded Application** — Sprint 2

1. El Edge Service se instala en el gateway de la parcela con Python 3, sus dependencias (`flask`, `peewee`) y la base SQLite, y se inicia como servicio del sistema.
2. La Embedded Application se compila en Arduino IDE con el núcleo ESP32 y se carga por USB; antes se valida en la simulación de Wokwi (`assets/iot-device/wokwi`).

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

#### 6.2.1.3. Sprint Backlog 1

#### 6.2.1.4. Development Evidence for Sprint Review

#### 6.2.1.5. Testing Suite Evidence for Sprint Review

#### 6.2.1.6. Execution Evidence for Sprint Review

#### 6.2.1.7. Services Documentation Evidence for Sprint Review

#### 6.2.1.8. Software Deployment Evidence for Sprint Review

#### 6.2.1.9. Team Collaboration Insights during Sprint

## 6.3. Validation Interviews

### 6.3.1. Diseño de Entrevistas

### 6.3.2. Registro de Entrevistas

### 6.3.3. Evaluaciones según heurísticas

## 6.4. Video About-the-Product
