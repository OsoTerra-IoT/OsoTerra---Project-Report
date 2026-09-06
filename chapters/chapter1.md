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

Los assumptions se organizaron siguiendo las cinco categorías solicitadas en el enunciado del proyecto. Cada enunciado expresa una creencia que deberá validarse durante las entrevistas, el diseño de prototipos y las pruebas de uso del producto.

**Business Assumptions**

1. Creemos que existe en el Perú un mercado desatendido de monitoreo de suelo orientado al pequeño y mediano productor agrícola.
2. Creemos que la oferta actual de agricultura de precisión resulta costosa o compleja para productores que administran parcelas pequeñas.
3. Creemos que OsoSense puede diferenciarse mediante una solución IoT de bajo costo enfocada en salinidad, humedad y temperatura del suelo.
4. Creemos que el modelo de negocio puede combinar la venta o instalación del dispositivo con una suscripción accesible por parcela monitoreada.
5. Creemos que los asesores técnicos, cooperativas y programas de asistencia agrícola pueden funcionar como canales de adopción del producto.
6. Creemos que los datos históricos y georreferenciados del suelo pueden aportar valor para futuras decisiones agrícolas e investigaciones sobre salinidad.

**Business Outcome Assumptions**

1. Creemos que el éxito inicial se reflejará en una tasa de conversión de visitantes del Landing Page a usuarios registrados.
2. Creemos que la retención mensual aumentará si el productor percibe que las alertas ayudan a prevenir pérdidas en su campaña.
3. Creemos que el costo de adquisición será menor cuando la recomendación provenga de asesores técnicos o redes agrícolas de confianza.
4. Creemos que cada asesor técnico incorporado puede facilitar la llegada de OsoSense a varios productores.
5. Creemos que demostrar ahorro frente a diagnósticos frecuentes de laboratorio fortalecerá la disposición de pago por la solución.

**User Assumptions**

1. Creemos que el usuario principal es el pequeño o mediano productor agrícola de la costa peruana, especialmente de zonas expuestas a salinización.
2. Creemos que este usuario utiliza principalmente el teléfono móvil para consultar información digital.
3. Creemos que muchos productores no interpretan fácilmente valores técnicos como conductividad eléctrica en dS/m.
4. Creemos que el asesor técnico o ingeniero agrónomo requiere datos más detallados para sustentar sus recomendaciones.
5. Creemos que la confianza en un dispositivo de bajo costo será una barrera inicial de adopción.
6. Creemos que ambos segmentos valoran información histórica que permita observar tendencias y no solo mediciones aisladas.

**User Outcome and Benefit Assumptions**

1. Creemos que el productor busca evitar pérdidas de rendimiento mediante alertas tempranas sobre el estado del suelo.
2. Creemos que el productor obtiene valor al recibir recomendaciones claras para ajustar riego, lavado de sales o seguimiento de la parcela.
3. Creemos que el productor busca reducir decisiones basadas únicamente en intuición o síntomas visibles del cultivo.
4. Creemos que el asesor técnico busca supervisar varias parcelas sin desplazarse físicamente a cada una con la misma frecuencia.
5. Creemos que el asesor técnico obtiene valor al contar con reportes históricos que respalden sus recomendaciones ante el productor.
6. Creemos que ambos segmentos se benefician al diferenciar entre un problema de salinidad y otros problemas agrícolas como fertilización o plagas.

**Feature Assumptions**

1. Creemos que un dispositivo IoT de campo que mida conductividad eléctrica, humedad y temperatura permite monitorear el suelo de forma continua.
2. Creemos que un motor de umbrales por cultivo permite generar alertas más pertinentes que un umbral único para todos los casos.
3. Creemos que las notificaciones móviles con niveles de severidad facilitan que el productor reaccione oportunamente.
4. Creemos que un tablero con histórico y tendencia por parcela ayuda a comprender la evolución del problema.
5. Creemos que un módulo de gestión de fincas, parcelas y cultivos es necesario para contextualizar cada lectura.
6. Creemos que un tablero multiparcela permite que el asesor técnico supervise a varios productores de manera ordenada.
7. Creemos que los reportes exportables permiten sustentar decisiones y recomendaciones técnicas.
8. Creemos que un servicio de borde con almacenamiento local y sincronización diferida reduce la pérdida de datos ante conectividad intermitente.
9. Creemos que un módulo de calibración contra referencias de laboratorio incrementa la confianza en las mediciones.
10. Creemos que integrar información meteorológica externa mejora la interpretación de cambios en el suelo.
11. Creemos que un Landing Page con mensajes diferenciados para productores y asesores mejora la conversión de usuarios.
12. Creemos que un plan gratuito limitado reduce la barrera de entrada para pequeños productores.

#### 1.2.2.3. Lean UX Hypothesis Statements

De acuerdo con las instrucciones del statement, se formula un Hypothesis Statement por cada Feature Assumption. Cada hipótesis conecta un resultado de negocio esperado, una persona o segmento, un beneficio de usuario y una característica concreta de la solución.

**HS-01 - Dispositivo IoT de campo**

Creemos que lograremos aumentar la adopción inicial de OsoSense si los productores agrícolas y asesores técnicos obtienen información continua del suelo con un dispositivo IoT de campo que mide conductividad eléctrica, humedad y temperatura.

**HS-02 - Motor de umbrales por cultivo**

Creemos que lograremos reducir alertas poco pertinentes si los productores y asesores reciben evaluaciones adaptadas al cultivo registrado en cada parcela con un motor de umbrales configurables.

**HS-03 - Notificaciones móviles**

Creemos que lograremos una respuesta más rápida ante niveles críticos de salinidad si los productores reciben avisos oportunos en su teléfono con un sistema de notificaciones móviles por severidad.

**HS-04 - Tablero con histórico y tendencia**

Creemos que lograremos una mayor frecuencia de consulta de la plataforma si los usuarios comprenden la evolución de la salinidad mediante un tablero con histórico y tendencia por parcela.

**HS-05 - Gestión de fincas, parcelas y cultivos**

Creemos que lograremos una interpretación más precisa de las mediciones si el productor registra el contexto agrícola de cada punto de medición con un módulo de gestión de fincas, parcelas y cultivos.

**HS-06 - Tablero multiparcela**

Creemos que lograremos que los asesores técnicos supervisen más parcelas desde la plataforma si pueden comparar el estado de varios clientes mediante un tablero multiparcela.

**HS-07 - Reportes exportables**

Creemos que lograremos fortalecer la utilidad percibida por asesores técnicos si pueden sustentar sus recomendaciones ante productores con reportes exportables por parcela y periodo.

**HS-08 - Servicio de borde con sincronización diferida**

Creemos que lograremos reducir la pérdida de lecturas en campo si los productores ubicados en zonas con conectividad intermitente conservan el registro de datos mediante un servicio de borde con almacenamiento local.

**HS-09 - Calibración y validación**

Creemos que lograremos aumentar la confianza en el dispositivo si productores y asesores pueden contrastar las mediciones de OsoSense con referencias de laboratorio mediante un módulo de calibración.

**HS-10 - Integración meteorológica externa**

Creemos que lograremos mejorar la interpretación del diagnóstico si los usuarios relacionan las variaciones del suelo con lluvia y condiciones ambientales mediante una integración meteorológica externa.

**HS-11 - Landing Page segmentado**

Creemos que lograremos incrementar el registro de usuarios si productores y asesores encuentran mensajes orientados a sus necesidades mediante un Landing Page con contenido diferenciado por segmento.

**HS-12 - Plan gratuito limitado**

Creemos que lograremos reducir la barrera de entrada si pequeños productores pueden probar la solución en una parcela mediante un esquema de suscripción con plan gratuito limitado.

#### 1.2.2.4. Lean UX Canvas

El Lean UX Canvas consolida en un solo artefacto visual los resultados de las secciones anteriores: el problema de negocio, los resultados esperados, los segmentos de usuario, los beneficios que estos obtienen, las soluciones propuestas, las hipótesis derivadas y los riesgos que el equipo necesita validar primero.

<img src="../assets/lean-ux-canvas/Lean%20UX%20Canvas%20IoT.png" alt="Lean UX Canvas OsoSense" width="800">

## 1.3. Segmentos objetivo

La solución se dirige a dos segmentos con roles claramente diferenciados dentro del mismo dominio: quien conduce la parcela y quien la asesora técnicamente. No se trata de variantes del mismo usuario. El productor monitorea su propia unidad agropecuaria y necesita una traducción accionable del dato; el asesor supervisa simultáneamente las parcelas de varios clientes y necesita el dato crudo, la comparación y la evidencia documentada.

### Segmento 1: Pequeños y medianos productores agropecuarios de la costa norte

**Tamaño del universo.** El IV Censo Nacional Agropecuario registró **2 260 973 productores agropecuarios** en el Perú, que ocupan 38 742 465 hectáreas de superficie total y aproximadamente 7,1 millones de hectáreas de superficie agrícola (INEI, 2013). De ese universo, el **81,9 % conduce unidades menores a cinco hectáreas**, condición que define a la pequeña agricultura. MIDAGRI complementa que el 85 % de los productores maneja menos de diez hectáreas, con un 33 % situado entre tres y diez hectáreas, rango que corresponde a la mediana agricultura.

**Distribución territorial.** Sesenta y cuatro de cada cien productores se ubican en la sierra, y los departamentos de Cajamarca, Puno y Cusco concentran el 32 % del total (INEI, 2013). El foco inicial de OsoSense, sin embargo, se sitúa en la costa norte por la severidad documentada del problema de salinización en los sistemas Chira-Piura y Chancay-Lambayeque, y por la coincidencia geográfica con los cultivos de mayor extensión de la región: el arroz, con 57 545 hectáreas sembradas en Piura durante la campaña 2024-2025, y la caña de azúcar, con 25 595 hectáreas cosechadas en Lambayeque.

**Perfil demográfico.** Según la Encuesta Nacional Agropecuaria más reciente, el productor agropecuario peruano tiene una **edad promedio de 54,5 años**, con una tendencia sostenida al envejecimiento —53,9 años en 2023 y 54,3 en 2024—. El **37,9 % tiene 60 años o más** y apenas el 0,9 % se ubica entre los 15 y 24 años. En cuanto a género, el **31,2 % son mujeres y el 68,8 % hombres**, con una participación femenina en descenso. El nivel educativo es determinante para el diseño de la interfaz: el **57,7 % alcanzó únicamente educación primaria**, el 32,9 % secundaria y solo el 9,4 % educación superior. Respecto de la lengua materna, el 56,4 % declara castellano y el 36,3 % quechua.

**Situación económica y capacidad de pago.** Los hogares agropecuarios registraron una **incidencia de pobreza del 49,3 % en 2020**, seis puntos porcentuales por encima del año previo. El acceso al financiamiento formal constituye la restricción más severa: **solo alrededor del 8 % de los productores agropecuarios —unos 186 mil— accede a crédito en el sistema financiero nacional** (INEI, IV CENAGRO), lo que equivale a decir que más del 91 % de las unidades agropecuarias no accede a financiamiento formal. El ticket promedio del crédito al pequeño productor se sitúa entre S/ 8 000 y S/ 9 000. Este dato impone una restricción directa al modelo de negocio: cualquier desembolso inicial significativo excluye al grueso del segmento.

**Adopción tecnológica.** Aquí el panorama es favorable y contraintuitivo. El **97,2 % de los hogares peruanos cuenta con al menos un dispositivo móvil** y el acceso a internet mediante dispositivo móvil en el ámbito rural pasó del 41,5 % en 2019 al **85,8 % en 2025** (OSIPTEL, ERESTEL). Debe distinguirse, sin embargo, entre acceso móvil y acceso fijo: el **acceso domiciliario a internet en el área rural alcanza solo el 23,6 %**, mientras el **88 % de los hogares rurales dispone de al menos un celular** (INEI, ENAHO). La implicación de diseño es inequívoca: la solución debe concebirse como *mobile-first* y operar sobre datos móviles con tolerancia a la intermitencia, no sobre banda ancha fija.

**Prácticas actuales.** Solo el **14,9 % de los pequeños y medianos productores bajo riego emplea riego tecnificado**, frente al 56,5 % de los grandes productores. Únicamente el **2,5 % realiza análisis de suelo** de sus parcelas. El 44,2 % de quienes venden su producción a grandes productores recibe de estos algún tipo de asistencia técnica o capacitación.

**Perfil resumido del segmento.** Un hombre de alrededor de 55 años, con educación primaria completa, que conduce menos de cinco hectáreas de arroz o maíz en un valle de Piura o Lambayeque, riega por gravedad, no ha hecho nunca un análisis de suelo, no accede a crédito formal, y tiene un teléfono con conexión de datos que usa principalmente para mensajería.

### Segmento 2: Ingenieros agrónomos y asesores técnicos agrícolas independientes

**Tamaño del universo.** El Capítulo de Ingeniería Agronómica y Zootecnia del Colegio de Ingenieros del Perú, Consejo Departamental de Lima, registra alrededor de **6 000 profesionales** entre ambas especialidades. Los ingenieros agrónomos figuran entre los fundadores del CIP en 1962. El propio Colegio reconoce que la empleabilidad de estas especialidades atraviesa un momento desfavorable, situación más marcada entre las profesionales mujeres, lo que sugiere una masa de profesionales disponible para el ejercicio independiente.

**Perfil laboral.** El asesor técnico agrícola se desempeña en empresas agroexportadoras, consultoría independiente, cooperativas y asociaciones de productores, el sector público y las tiendas de agroinsumos. En el ejercicio independiente, su modelo de trabajo consiste en atender simultáneamente a varios productores mediante visitas periódicas, lo que convierte el desplazamiento en su principal costo operativo y en el límite de su capacidad de atención.

**Herramientas actuales.** El asesor combina el análisis de laboratorio, los medidores portátiles de conductividad eléctrica y pH, y su propio criterio agronómico. Las plataformas de agricultura de precisión —sensores IoT, drones, imágenes satelitales— se emplean casi exclusivamente en clientes agroexportadores, por su costo.

**Contexto institucional.** Existe un conjunto de programas estatales de asistencia técnica y extensión: **AGROIDEAS**, que cofinancia planes de negocio de organizaciones agrarias incluyendo asistencia técnica y activos productivos; **AGRO RURAL**; el **PNIA** y el **INIA** como ente rector del Sistema Nacional de Innovación Agraria; el **Fondo Sierra Azul**; y el **PSI**. El propio INIA reconoce, sobre la base del CENAGRO 2012 y la ENA 2018, que los servicios de extensión agraria no alcanzan a todos quienes los necesitan, que su cobertura es desigual según el tamaño de la unidad y que dependen de la vigencia de proyectos específicos. Esa brecha de cobertura pública es precisamente el espacio en el que opera el asesor independiente y en el que OsoSense puede insertarse.

**Perfil resumido del segmento.** Un ingeniero agrónomo colegiado, de entre 30 y 45 años, con formación superior completa, que atiende de forma independiente a un conjunto de productores en uno o varios valles, cobra por visita o por servicio de asesoría, dispone de smartphone y computadora, interpreta sin dificultad una lectura en dS/m, y necesita sustentar técnicamente cada recomendación que emite ante un cliente que costea sus decisiones.

### Justificación de la selección de ambos segmentos

La elección conjunta responde a tres razones. Primera, los roles son estructuralmente distintos: uno conduce una parcela y otro supervisa muchas, lo que genera necesidades de producto genuinamente diferentes y no variantes de la misma. Segunda, el asesor resuelve la restricción de capacidad de pago del productor: dado que solo el 8 % de los productores accede a crédito formal, un modelo que dependa exclusivamente de la venta directa al pequeño agricultor enfrenta un techo estructural, mientras que el asesor cobra por su servicio profesional y puede internalizar el costo de la herramienta. Tercera, el asesor actúa como canal de distribución y como validador técnico: su respaldo reduce la barrera de desconfianza del productor hacia un dispositivo de bajo costo.

> **⚠️ Nota sobre vacíos de datos:** no se hallaron fuentes públicas oficiales para el número nacional de agrónomos colegiados —solo el dato de ~6 000 del Consejo Departamental de Lima—, el número de egresados por año, los rangos salariales específicos ni el número típico de clientes o hectáreas que atiende un asesor independiente. Estos datos deben levantarse mediante las entrevistas de needfinding y declararse como información primaria del equipo.
