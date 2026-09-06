# Capítulo I: Introducción

## 1.1. Startup Profile

### 1.1.1. Descripción de la Startup

**Oso Terra** es una startup peruana de tecnología agrícola creada por estudiantes de Ingeniería de Software de la Universidad Peruana de Ciencias Aplicadas. La empresa nace con el propósito de acercar soluciones IoT al sector agrícola, especialmente a productores que necesitan información clara, oportuna y accesible para tomar mejores decisiones sobre el estado de sus suelos.

El nombre **Oso Terra** combina la idea de vigilancia y resistencia asociada al oso con el concepto de tierra como base de la producción agrícola. Esta relación expresa el objetivo central de la startup: observar de manera constante las condiciones del suelo y convertir los datos recolectados en información útil para el agricultor.

**Misión.** Democratizar el acceso al monitoreo agrícola mediante una solución IoT de bajo costo que permita a pequeños y medianos productores conocer el estado de sus parcelas, detectar riesgos asociados a la salinidad del suelo y actuar oportunamente con información comprensible.

**Visión.** Ser una startup referente en el monitoreo inteligente de suelos agrícolas en el Perú, impulsando el uso de tecnología accesible para mejorar la productividad, reducir pérdidas y fortalecer la toma de decisiones en la agricultura familiar y de mediana escala.

**Propuesta de valor.** Oso Terra desarrolla **OsoSense**, una solución IoT orientada al monitoreo continuo del suelo agrícola. El producto integra sensores de campo, procesamiento de datos y una plataforma digital que presenta alertas tempranas y recomendaciones comprensibles para el usuario. De esta forma, el productor puede identificar cambios relevantes en la conductividad eléctrica, humedad y temperatura del suelo sin depender únicamente de diagnósticos de laboratorio esporádicos.

**Valores.**

- **Accesibilidad.** La solución se diseña considerando la realidad económica y tecnológica de pequeños y medianos productores.
- **Utilidad.** Los datos recolectados deben convertirse en alertas y recomendaciones claras, no solo en mediciones técnicas.
- **Rigor técnico.** Las lecturas del dispositivo deben ser calibradas y contrastadas para generar confianza en el usuario.
- **Diseño inclusivo.** La experiencia debe ser comprensible para usuarios con distintos niveles de alfabetización digital.
- **Transparencia.** El productor debe comprender qué datos se recopilan, cómo se interpretan y para qué se utilizan.

### 1.1.2. Perfiles de integrantes del equipo

| Foto del estudiante | Nombres y apellidos | Código de estudiante | Descripción |
|---|---|---|---|
| <img src="../assets/members/u202318049.jpg" alt="Goñe Araccata, Esther Abigail" width="100"> | Goñe Araccata, Esther Abigail | u202318049 | Estudiante de Ingeniería de Software. Participa en la elaboración del informe, análisis del problema y organización de los artefactos del proyecto OsoSense. |
| <img src="../assets/members/u202321941.jpg" alt="Salazar Caballero, Alvaro Fabrizzio" width="100"> | Salazar Caballero, Alvaro Fabrizzio | u202321941 | Estudiante de Ingeniería de Software. Contribuye en la investigación del contexto agrícola, definición de requerimientos y documentación de la solución IoT. |
| <img src="../assets/members/u20211g481.jpg" alt="Encalada Salazar, Alexis" width="100"> | Encalada Salazar, Alexis | u20211g481 | Estudiante de Ingeniería de Software. Apoya en el desarrollo conceptual del producto, revisión de secciones del informe y análisis de necesidades de usuarios. |
| <img src="../assets/members/u202312899.jpg" alt="Ortiz Alarcon, Victor Nicolas" width="100"> | Ortiz Alarcon, Victor Nicolas | u202312899 | Estudiante de Ingeniería de Software. Participa en la estructuración del repositorio, redacción del Capítulo I y organización de la documentación del proyecto. |
| <img src="../assets/members/u202317362.jpg" alt="Santiago Peña, Andreow Jomark" width="100"> | Santiago Peña, Andreow Jomark | u202317362 | Estudiante de Ingeniería de Software. Contribuye en el análisis de la solución, documentación técnica y revisión colaborativa de los contenidos del informe. |
| <img src="../assets/members/u20241c134.jpg" alt="Tumi Oliden, Manuel Ignacio" width="100"> | Tumi Oliden, Manuel Ignacio | u20241c134 | Estudiante de Ingeniería de Software. Apoya en la investigación del producto, definición de criterios de diseño y consolidación de información del equipo. |
| <img src="../assets/members/u202312629.jpg" alt="Barturen Panez, Iker Gabriel" width="100"> | Barturen Panez, Iker Gabriel | u202312629 | Estudiante de Ingeniería de Software. Participa en la documentación del proyecto, revisión de perfiles y organización de recursos para el informe. |

## 1.2. Solution Profile

**Nombre del producto:** OsoSense

**OsoSense** es una solución IoT desarrollada por Oso Terra para el monitoreo continuo del suelo agrícola. Su objetivo es ayudar a pequeños y medianos productores a detectar de manera temprana riesgos asociados a la salinización, una problemática que afecta la productividad de los cultivos y que suele identificarse cuando el daño ya es visible.

La solución está compuesta por un dispositivo de campo que registra variables como conductividad eléctrica, humedad y temperatura del suelo. Estas mediciones permiten observar cambios relevantes en la parcela y generar información útil para el productor. A partir de los datos recolectados, OsoSense busca presentar alertas comprensibles, recomendaciones de acción y un historial que facilite el seguimiento del estado del suelo.

El producto no busca reemplazar el análisis de laboratorio, ya que este sigue siendo necesario para diagnósticos formales y validaciones técnicas. Su propósito es complementar ese proceso mediante una herramienta de detección temprana, de menor costo y uso frecuente, que permita actuar antes de que la salinidad impacte de forma severa en el rendimiento del cultivo.

OsoSense se orienta a un contexto agrícola donde muchos productores no cuentan con acceso constante a servicios especializados, conectividad estable o herramientas digitales complejas. Por ello, la solución prioriza una experiencia simple, visual y accesible desde dispositivos móviles, considerando que el valor principal no está solo en medir el suelo, sino en traducir esas mediciones en decisiones claras para el usuario.

### 1.2.1. Antecedentes y problemática

La salinización del suelo es un proceso de acumulación de sales que afecta la capacidad de las plantas para absorber agua y nutrientes. En términos técnicos, un suelo se considera salino cuando la conductividad eléctrica de su extracto de saturación alcanza niveles que empiezan a limitar el desarrollo normal del cultivo. Para el agricultor, este problema no siempre es evidente al inicio, porque las sales no se observan directamente; sus efectos suelen manifestarse después mediante menor vigor de las plantas, hojas afectadas, reducción del rendimiento o zonas improductivas dentro de la parcela.

En el Perú, esta problemática tiene especial relevancia en la costa, donde la agricultura depende en gran medida del riego. La combinación de clima árido, evaporación elevada, uso intensivo del agua, drenaje deficiente y prácticas de riego poco tecnificadas puede favorecer la acumulación progresiva de sales en el suelo. Regiones como Piura y Lambayeque han sido identificadas como zonas expuestas a problemas de salinidad y mal drenaje, especialmente en valles agrícolas donde se concentran cultivos importantes para el mercado interno y la agroexportación.

El problema afecta con mayor fuerza a pequeños y medianos productores, quienes muchas veces no cuentan con herramientas de monitoreo continuo ni con recursos suficientes para realizar análisis de suelo de forma frecuente. Aunque el análisis de laboratorio permite obtener resultados precisos, suele implicar costos por muestra, tiempos de espera y una frecuencia limitada de evaluación. Como consecuencia, muchos agricultores toman decisiones sobre riego, fertilización o recuperación del suelo sin información actualizada de sus parcelas.

Esta situación genera una brecha entre el momento en que el problema empieza a formarse y el momento en que el productor logra detectarlo. Cuando la salinidad ya se refleja en pérdidas de rendimiento, las acciones correctivas pueden ser más costosas y menos efectivas. Además, los cultivos no responden de la misma manera a la salinidad: algunos toleran mayores niveles de conductividad eléctrica, mientras que otros son más sensibles. Por ello, una alerta genérica no es suficiente; la información debe interpretarse según el cultivo y el contexto de cada parcela.

Frente a esta problemática, OsoSense propone transformar el diagnóstico esporádico en un monitoreo continuo. Mediante sensores IoT y una plataforma digital, la solución busca reducir la dependencia exclusiva del laboratorio, mejorar la visibilidad del estado del suelo y entregar alertas tempranas que ayuden al productor a actuar antes de que el daño sea irreversible. La propuesta responde a una necesidad concreta: convertir datos técnicos del suelo en información comprensible, accionable y útil para la toma de decisiones agrícolas.

### 1.2.2. Lean UX Process

El equipo aplicó el **Lean UX Process** para ordenar las principales creencias del proyecto antes de iniciar la construcción de la solución. De acuerdo con las instrucciones del enunciado, este proceso parte del dominio del problema, identifica los segmentos afectados, precisa los dolores actuales, reconoce la brecha que no cubren las alternativas existentes y formula una estrategia inicial de producto.

Para esta sección se emplea el template **Brand new initiative**, debido a que OsoSense corresponde a una propuesta nueva y no a la mejora de un producto existente. Además, se desarrolla un único Problem Statement para todo el proyecto, considerando dentro de él a los segmentos objetivo definidos para la solución. A partir de este enunciado se organizan los assumptions en cinco categorías: Business Assumptions, Business Outcome Assumptions, User Assumptions, User Outcome and Benefit Assumptions y Feature Assumptions. Posteriormente, cada Feature Assumption servirá como base para formular su respectivo Hypothesis Statement.

El resultado del proceso permitirá validar si OsoSense responde realmente a una necesidad relevante del mercado agrícola, si la solución propuesta es viable para pequeños y medianos productores, y si la experiencia planteada puede ser comprendida y utilizada por los usuarios esperados.

#### 1.2.2.1. Lean UX Problem Statements

**Problem Statement - OsoSense**

El estado actual del monitoreo de la salud del suelo agrícola en el Perú se ha enfocado principalmente en grandes empresas agroexportadoras con capacidad de inversión en agricultura de precisión, diagnósticos puntuales de laboratorio y procesos reactivos que se activan cuando la pérdida de rendimiento ya es visible en el cultivo.

Lo que los productos y servicios existentes no logran atender es la ausencia de una herramienta de monitoreo continuo, asequible e interpretable que permita al pequeño y mediano productor anticipar riesgos de salinización antes de que estos comprometan su campaña agrícola. Esta brecha también afecta a asesores técnicos e ingenieros agrónomos que necesitan dar seguimiento a varias parcelas y sustentar sus recomendaciones con datos actualizados.

OsoSense atenderá esta brecha mediante un dispositivo IoT de bajo costo que mide variables del suelo como conductividad eléctrica, humedad y temperatura, junto con una plataforma web y móvil que procesa las lecturas, las interpreta según el cultivo registrado y presenta alertas tempranas en un lenguaje comprensible para el productor.

El foco inicial del producto será el pequeño y mediano productor agrícola de la costa peruana, especialmente en zonas expuestas a salinización y mal drenaje, así como los asesores técnicos que acompañan la gestión de parcelas agrícolas. Estos segmentos necesitan una solución que combine monitoreo frecuente, bajo costo, facilidad de uso y criterios técnicos suficientes para orientar decisiones.

Sabremos que OsoSense tiene éxito cuando los productores consulten el estado de sus parcelas de forma recurrente, comprendan el nivel de riesgo indicado por la plataforma, ejecuten acciones correctivas o preventivas a partir de las alertas recibidas y los asesores técnicos utilicen la información histórica para sustentar recomendaciones de manejo del suelo.

#### 1.2.2.2. Lean UX Assumptions

#### 1.2.2.3. Lean UX Hypothesis Statements

#### 1.2.2.4. Lean UX Canvas

## 1.3. Segmentos objetivo
