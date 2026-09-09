# Capítulo II: Requirements Elicitation & Analysis

## 2.1. Competidores

El mercado de monitoreo de suelo agrícola en el Perú está ocupado por tres tipos de oferta. En primer lugar, las plataformas internacionales de agricultura de precisión, que ofrecen sondas multiparamétricas con conectividad y suscripción, dirigidas a la agroexportación. En segundo lugar, los laboratorios de análisis de suelo, que entregan un diagnóstico preciso pero puntual y diferido. En tercer lugar, los medidores portátiles de conductividad eléctrica, que resuelven el costo pero no el monitoreo continuo. OsoTerra IoT se sitúa deliberadamente en el espacio que ninguno de los tres ocupa.

**Competidores directos identificados:**

- **CropX** (Estados Unidos e Israel, fundada en 2013), líder global en sensores de suelo multiparamétricos con medición de conductividad eléctrica.
- **WiseConn** (Chile, fundada en 2006), con presencia comercial verificada en el Perú, especializada en telemetría de riego y fertirriego con medición de pH y CE.
- **Teralytic** (Estados Unidos, 2019), fabricante de la sonda inalámbrica más completa del mercado, con 26 sensores incluyendo salinidad y NPK.

**Competidores directos complementarios:** Sensoterra (Países Bajos) y Sentek (Australia) en el plano internacional; Kilimo (Argentina) e Instacrops (Chile) en el plano regional; y **Smelpro** en el plano local peruano, con sensores de suelo y riego automatizado.

**Competidores indirectos:** los laboratorios de análisis de suelo —SGS Perú, AGQ Labs Perú, LASPAF-UNALM, INIA-LABSAF— y los medidores portátiles de conductividad eléctrica de marcas como Hanna Instruments, Bluelab, Extech y Milwaukee.

### 2.1.1. Análisis competitivo

#### Competitive Analysis Landscape

| **¿Por qué llevar a cabo este análisis?** | Determinar si existe un espacio de mercado no atendido en el monitoreo de salinidad de suelos para el pequeño y mediano productor peruano, e identificar en qué dimensiones —precio, complejidad, especificidad del caso de uso y canal— la oferta actual deja una brecha aprovechable para una solución de bajo costo. |
|---|---|

| | **OsoTerra**<br>*(OsoTerra IoT)* | **CropX** | **WiseConn**<br>*(DropControl)* | **Teralytic** |
|---|---|---|---|---|
| **PERFIL** | | | | |
| **Overview** | Startup peruana fundada en 2026. Solución IoT de bajo costo para monitoreo continuo y detección temprana de salinización, orientada específicamente a la pequeña y mediana agricultura de la costa peruana. | Empresa fundada en 2013 con operación global. Plataforma de agricultura de precisión basada en sondas de suelo multiprofundidad integradas a un sistema de recomendación agronómica. | Empresa chilena fundada en 2006, especializada en automatización y telemetría de riego. Opera con más de 15 000 equipos en más de 2 500 campos en Chile, **Perú**, México, Estados Unidos, España, Italia y Australia, con cerca de 200 000 hectáreas automatizadas. | Empresa estadounidense que lanzó en 2019 la primera sonda inalámbrica de suelo con medición de NPK. Integra 26 sensores en tres profundidades. |
| **Ventaja competitiva**<br>*(¿Qué valor ofrece a los clientes?)* | Precio de acceso al menos un orden de magnitud inferior al de las sondas comerciales, especialización en el caso de uso de salinización, y traducción del dato técnico a lenguaje accionable para un usuario de baja alfabetización digital. Umbrales contextualizados por cultivo. | Precisión y madurez del algoritmo agronómico. Integración directa con sistemas de riego. Cobertura de un sensor por cada 40 acres aproximadamente, lo que reduce la densidad de dispositivos necesaria. | Presencia y soporte técnico local en el Perú. Control efectivo del riego, no solo monitoreo. Robustez probada en operaciones agroexportadoras de gran escala. | Amplitud de variables medidas en un solo dispositivo: humedad, salinidad, temperatura, pH, NPK, aireación y respiración del suelo, en tres profundidades simultáneas. |
| **PERFIL DE MARKETING** | | | | |
| **Mercado objetivo** | Pequeños y medianos productores de la costa norte peruana con unidades menores a 10 ha, e ingenieros agrónomos y asesores técnicos independientes que los atienden. | Agricultura comercial de mediana y gran escala a nivel global. Agroexportación. | Agroexportación y agricultura de gran escala en Latinoamérica, Estados Unidos y Europa. Fundos con riego tecnificado. | Agricultura comercial de gran escala, principalmente en Estados Unidos. Investigación agronómica. |
| **Estrategias de marketing** | Marketing de contenido educativo sobre salinización dirigido al productor. Canal B2B2C mediante asesores técnicos y cooperativas. Articulación con programas estatales de asistencia técnica (AGROIDEAS, AGRO RURAL). Demostración de correspondencia con laboratorio acreditado como argumento de confianza. | Presencia en ferias internacionales de agtech. Alianzas con distribuidores de insumos y con fabricantes de sistemas de riego. Casos de estudio con grandes productores. | Fuerza de ventas directa con presencia local. Participación en medios especializados del sector, como Redagrícola. Demostraciones en campo con fundos de referencia. | Comunicación centrada en la innovación tecnológica —primera sonda NPK inalámbrica del mundo—. Prensa especializada en agricultura de precisión. |
| **PERFIL DE PRODUCTO** | | | | |
| **Productos y servicios** | Dispositivo IoT de campo basado en ESP32 (CE, humedad, temperatura). Edge Service con sincronización diferida. Plataforma web y aplicación móvil. Motor de alertas por cultivo. Reportes exportables. Landing Page informativo. | Sondas de suelo Apex y Vertex. Plataforma en la nube con aplicación móvil. Recomendaciones de riego y fertilización. Integración con equipos de riego. | Nodos de campo, estaciones meteorológicas, sensores de humedad, pH y CE. Plataforma DropControl. Control automatizado de riego y fertirriego. Gestión de pozos. | Sonda de suelo con 26 sensores. Red LoRa con gateway. Plataforma de análisis. Servicio de reemplazo de componentes incluido en la suscripción. |
| **Precios y costos** | Modelo objetivo: dispositivo a precio de acceso significativamente inferior al rango comercial internacional, más suscripción mensual por parcela, con un plan gratuito limitado a una parcela. *(Estructura de precios en definición.)* | Sensores entre **USD 600 y USD 899** por unidad, más **USD 275 anuales por sensor** de suscripción. El modelo Vertex V4 alcanza aproximadamente **USD 2 398**. El modelo Apex requiere telemetría adquirida por separado. | Precio bajo cotización. No publica tarifario. Proyecto llave en mano dimensionado por hectárea y por complejidad del sistema de riego. | Paquete inicial de 10 sondas por **USD 5 000**; **USD 500** por sonda adicional. Modelo de suscripción que incluye el reemplazo de piezas. |
| **Canales de distribución**<br>*(Web y/o Móvil)* | Landing Page con call-to-action diferenciado por segmento, aplicación web responsive y aplicación móvil nativa. Canal indirecto mediante asesores técnicos y organizaciones de productores. | Tienda en línea propia, aplicación web y móvil. Red de distribuidores e integradores. | Venta directa con oficinas y soporte en los países donde opera, incluido el Perú. Plataforma web y móvil. | Venta directa en línea. Plataforma web. |

#### Análisis SWOT

**OsoTerra (OsoTerra IoT)**

| Fortalezas | Debilidades |
|---|---|
| Especialización en un caso de uso concreto —la salinización— que ningún competidor aborda como propuesta central. | Marca inexistente y ausencia total de historial comercial o casos de referencia. |
| Estructura de costos que permite un precio de acceso incompatible con el modelo de los competidores internacionales. | Precisión del sensor de bajo costo inferior a la de las sondas comerciales y a la del laboratorio acreditado. |
| Conocimiento del contexto local: perfil demográfico, restricciones de conectividad y capacidad de pago del productor peruano. | Ausencia de red de soporte técnico en campo y de capacidad logística de distribución. |
| Diseño explícitamente inclusivo, calibrado para un usuario de 55 años con educación primaria. | Equipo sin experiencia previa en manufactura ni en certificación de hardware. |
| Contextualización de alertas por cultivo, apoyada en umbrales agronómicos reconocidos. | Dependencia de la validación contra laboratorio para construir confianza, lo que introduce un costo y un plazo. |

| Oportunidades | Amenazas |
|---|---|
| Brecha de diagnóstico masiva: solo el 2,5 % de los pequeños y medianos productores realiza análisis de suelo. | Baja capacidad de pago del segmento principal: pobreza del 49,3 % en hogares agropecuarios y acceso a crédito formal de solo el 8 %. |
| Crecimiento acelerado de la conectividad móvil rural: del 41,5 % en 2019 al 85,8 % en 2025. | Envejecimiento del productor —edad promedio 54,5 años— y baja alfabetización digital como barreras de adopción. |
| Ausencia de un inventario nacional reciente de salinidad, que otorga valor a los datos agregados de la plataforma. | Medidores portátiles de conductividad eléctrica importados a bajo precio que compiten por costo, aunque no por continuidad. |
| Existencia de programas estatales que cofinancian asistencia técnica y activos productivos (AGROIDEAS, AGRO RURAL). | Entrada de un competidor establecido, como WiseConn, con una línea económica dirigida al mismo segmento. |
| Cobertura insuficiente de los servicios públicos de extensión agraria, reconocida por el propio INIA. | Conectividad móvil variable en campo, que puede degradar la experiencia de uso. |

**CropX**

| Fortalezas | Debilidades |
|---|---|
| Madurez tecnológica y precisión validada del algoritmo agronómico. | Precio prohibitivo para el pequeño productor: USD 600 a 899 por sensor más USD 275 anuales. |
| Marca consolidada internacionalmente y ecosistema de integraciones. | Ausencia de foco específico en salinización; la CE es una variable más dentro de un conjunto. |
| Cobertura amplia por sensor, que reduce la densidad de dispositivos requerida. | Interfaz y comunicación diseñadas para un usuario técnico, no para un agricultor de baja alfabetización digital. |
| Modelo de negocio recurrente y probado. | Sin presencia comercial ni soporte local dedicado en el Perú. |

| Oportunidades | Amenazas |
|---|---|
| Expansión hacia mercados emergentes con líneas de producto de menor costo. | Erosión de su mercado medio por soluciones locales de bajo costo. |
| Integración con sistemas de riego de terceros. | Presión regulatoria y arancelaria sobre hardware importado. |

**WiseConn (DropControl)**

| Fortalezas | Debilidades |
|---|---|
| Presencia comercial y soporte técnico verificados en el Perú. | Propuesta dimensionada para fundos con riego tecnificado, del que solo dispone el 14,9 % de los pequeños y medianos productores. |
| Trayectoria desde 2006 y escala probada: más de 15 000 equipos y cerca de 200 000 hectáreas. | Precio bajo cotización, sin transparencia, lo que dificulta el acceso del pequeño productor. |
| Capacidad de control efectivo del riego, no solo de monitoreo. | Complejidad de instalación y de operación que exige personal técnico. |
| Conocimiento del contexto agrícola latinoamericano. | La salinidad es una función secundaria dentro de una plataforma de gestión de riego. |

| Oportunidades | Amenazas |
|---|---|
| Expansión hacia la mediana agricultura peruana mediante productos simplificados. | Concentración de su cartera en agroexportación, vulnerable a ciclos del mercado externo. |
| Aprovechamiento de proyectos de irrigación estatales en ejecución. | Entrada de competidores de bajo costo en el segmento medio. |

**Teralytic**

| Fortalezas | Debilidades |
|---|---|
| Amplitud de variables medidas sin equivalente en el mercado: 26 sensores en tres profundidades. | Barrera de entrada muy alta: paquete inicial de USD 5 000 por diez sondas. |
| Modelo de suscripción con reemplazo de piezas incluido, que reduce el riesgo del cliente. | Requiere infraestructura de red LoRa con gateway propio. |
| Posicionamiento como referente de innovación en agricultura de precisión. | Orientación al mercado estadounidense, sin presencia ni soporte en el Perú. |

| Oportunidades | Amenazas |
|---|---|
| Aplicación en investigación agronómica y en agricultura regenerativa. | Complejidad del dispositivo como factor de fragilidad en campo. |
| Valorización de los datos agregados de suelo. | Competencia de soluciones especializadas y más simples por caso de uso. |

**Competidores indirectos: laboratorios y medidores portátiles**

| Fortalezas | Debilidades |
|---|---|
| **Laboratorios:** precisión, trazabilidad y acreditación INACAL, que los hace referencia legal y técnica. | **Laboratorios:** costo de S/ 80 a S/ 600 por muestra y demora de 7 a 15 días hábiles; el resultado es un dato puntual, no una serie. |
| **Medidores portátiles:** bajo costo relativo, lectura instantánea y ausencia de dependencia tecnológica. | **Medidores portátiles:** medición manual y puntual, sin registro histórico, sin alertas, sin conectividad y sin contextualización por cultivo. Exigen que alguien esté físicamente en la parcela. |

| Oportunidades | Amenazas |
|---|---|
| Los laboratorios pueden convertirse en aliados de validación y no solo en competidores. | La percepción de que "el laboratorio es lo confiable" puede frenar la adopción de un sensor de bajo costo. |
| Los medidores portátiles pueden ser complemento de la solución en la fase de calibración. | La disponibilidad de medidores importados muy económicos compite directamente por presupuesto. |

### 2.1.2. Estrategias y tácticas frente a competidores

**Estrategia 1 — Competir por especificidad, no por amplitud.**
Frente a competidores que miden más variables y con mayor precisión, OsoTerra IoT no intenta igualarlos: resuelve un problema que ellos tratan como función secundaria. *Tácticas:* posicionar toda la comunicación en torno a la salinización y no al monitoreo genérico de suelo; construir el motor de umbrales por cultivo como diferenciador funcional visible; producir contenido educativo sobre reconocimiento temprano de sales dirigido al productor.

**Estrategia 2 — Convertir la restricción de precio en la barrera de entrada del competidor.**
El rango de USD 500 a 2 398 por sonda que manejan CropX y Teralytic no puede reducirse sin canibalizar su propio mercado. *Tácticas:* diseñar el dispositivo sobre componentes de bajo costo y disponibilidad local; ofrecer un plan gratuito limitado a una parcela que elimine la barrera de desembolso inicial; estructurar la suscripción por parcela y no por finca, de modo que el costo escale con el beneficio percibido.

**Estrategia 3 — Usar al asesor técnico como canal y como aval.**
La desconfianza hacia un dispositivo económico es la principal amenaza de adopción, y el asesor técnico es quien puede disolverla. *Tácticas:* diseñar funcionalidades específicas para el asesor —tablero multiparcela, reportes exportables— que le den razones propias para adoptar la plataforma; establecer un esquema de referidos por productor incorporado; entregar al asesor el dato crudo además de la interpretación, porque su credibilidad profesional depende de poder auditarlo.

**Estrategia 4 — Neutralizar la ventaja de precisión del laboratorio convirtiéndolo en aliado.**
No se compite contra el laboratorio en exactitud; se compite en frecuencia y en costo. *Tácticas:* publicar la comparación entre las lecturas del dispositivo y las de un laboratorio acreditado como evidencia de confiabilidad; comunicar explícitamente que OsoTerra IoT es un instrumento de detección temprana y seguimiento de tendencia, no un sustituto del análisis certificado; permitir el registro manual de resultados de laboratorio dentro de la plataforma para calibrar el dispositivo.

**Estrategia 5 — Superar a los medidores portátiles en aquello que estructuralmente no pueden ofrecer.**
Un medidor de mano requiere presencia física y produce un dato aislado. *Tácticas:* enfatizar la continuidad del monitoreo y la alerta proactiva como diferencial; mostrar la línea de tendencia como el artefacto que un medidor portátil nunca puede producir; destacar el ahorro en desplazamientos para el asesor.

**Estrategia 6 — Aprovechar el financiamiento público como sustituto del crédito privado.**
Dado que solo el 8 % de los productores accede a crédito formal, la vía de adopción masiva pasa por la compra agregada. *Tácticas:* documentar la solución en el formato exigido por AGROIDEAS para planes de negocio de organizaciones agrarias; desarrollar una modalidad de dispositivo compartido por asociación de productores; establecer contacto con agencias agrarias regionales de Piura y Lambayeque.

## 2.2. Entrevistas

### 2.2.1. Diseño de entrevistas

### 2.2.2. Registro de entrevistas

### 2.2.3. Análisis de entrevistas

## 2.3. Needfinding

### 2.3.1. User Personas

### 2.3.2. User Task Matrix

### 2.3.3. User Journey Mapping

### 2.3.4. Empathy Mapping

## 2.4. Big Picture EventStorming

## 2.5. Ubiquitous Language
