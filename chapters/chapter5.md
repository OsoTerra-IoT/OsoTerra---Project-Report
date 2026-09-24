# Capítulo V: Solution UI/UX Design

Este capítulo traduce el análisis de los usuarios (Capítulo II) y el diseño de software (Capítulo IV) en la experiencia visual y de interacción de OsoSense. Se parte de una guía de estilo única, que fija la identidad, los tokens de diseño y las reglas de interacción para todos los productos, y sobre esa base se desarrollan la arquitectura de información, el Landing Page, las aplicaciones web y móvil, su prototipo y el diseño del dispositivo IoT.

## 5.1. Style Guidelines

Las guías de estilo de Oso Terra buscan que el Landing Page, la Web App, la Mobile App y el dispositivo de campo se perciban como un solo producto. Por eso todas las decisiones visuales se expresan como **tokens de diseño** (colores, tipografía, espaciado, formas y movimiento) que se declaran una sola vez y se usan en cada plataforma: como variables CSS en el Landing Page, como tema de Angular Material en la Web App, como `ColorScheme` y `Typography` de Material 3 en Jetpack Compose y como colores y patrones de destello del LED en el dispositivo.

La guía toma como fuente el **Landing Page implementado**, que es el primer producto publicado de OsoSense: sus colores, su tipografía, sus radios y sus espaciados son los valores fijos de la marca. A eso se suman el logo oficial de Oso Terra, los niveles de salinidad que ya calcula la Web App y los hallazgos de las entrevistas (sección 2.2.3) y del perfil de usuarios (sección 1.3). Las decisiones se contrastaron con una base de conocimiento de diseño de interfaces (paletas, combinaciones tipográficas y reglas de UX por tipo de producto), que para productos de tecnología agrícola recomienda un verde de acción con texto blanco solo cuando el contraste es suficiente y, para productos SaaS cercanos, una sola familia tipográfica. Siguiendo esa revisión, el Landing Page pasó sus botones con texto al tono `#047857` de su propia paleta.

Todas las figuras de esta sección se diseñaron en Figma, en seis páginas de Style Guidelines (Marca, Color, Tipografía y espacio, Íconos y componentes, Mobile e IoT, y Datos y accesibilidad). Cada figura muestra un solo tema, con los valores anotados debajo de cada muestra, y se explica en el texto que la acompaña.

### 5.1.1. General Style Guidelines

Esta sección define lo que es común a todos los productos: los principios de diseño, la marca, los colores, la tipografía, el espaciado y la forma, la iconografía y el tono de comunicación.

#### Principios de diseño

Los usuarios principales de OsoSense son productores agrícolas de 54,5 años de edad promedio (sección 1.3) que revisan su información sobre todo desde el celular, muchas veces en campo, y asesores técnicos que necesitan datos precisos para sustentar recomendaciones. Cinco principios ordenan la guía a partir de esa realidad.

| Principio | Qué significa en OsoSense | Decisión que lo aplica |
|---|---|---|
| **Claridad antes que densidad** | El productor debe entender en segundos si su parcela está bien y qué hacer. | Texto base de 16 px, estados con etiqueta cualitativa («Muy alto») y la cifra en dS/m bajo demanda. |
| **El color nunca es el único mensaje** | La salinidad se comunica con color, ícono y texto a la vez. | Píldoras de estado con ícono; número de destellos además del color en el LED. |
| **Consistencia entre productos** | Una misma acción se ve y se llama igual en Landing Page, Web y Mobile. | Tokens únicos y vocabulario oficial del producto. |
| **Accesible por defecto** | Contraste, foco visible y objetivos táctiles amplios desde el diseño. | Contraste mínimo AA (4,5 : 1), objetivos de 44 px en web y 48 dp en Android. |
| **Sereno y accionable** | Una alerta informa el hecho y la acción; no alarma. | Tono sereno y colores de estado sobrios, con el rojo reservado al nivel más alto. |

#### Branding

El logo de Oso Terra combina la silueta de un oso dentro de un círculo, con montañas y colinas en su interior. El oso expresa vigilancia y resistencia; el paisaje, la tierra que se protege. El wordmark usa dos tonos: «Oso» en casi negro y «Terra» en verde oliva. Hay tres versiones del logo.

<div align="center">
<img src="../assets/style-guidelines/sg-01-logo-principal.png" alt="Logo principal de Oso Terra" width="486">
<p><em>Figura 5.1. Logo principal.</em></p>
</div>

El **logo principal** apila el símbolo sobre el wordmark «OsoTerra». Es la firma de la startup: se usa en documentos, en la carátula de este informe, en presentaciones y en todo lo que habla de la empresa y no de un producto.

<div align="center">
<img src="../assets/style-guidelines/sg-01-simbolo.png" alt="Símbolo del logo" width="486">
<p><em>Figura 5.2. Símbolo.</em></p>
</div>

El **símbolo** es solo el círculo con el oso. Se usa donde el espacio es cuadrado o pequeño: favicon, ícono de la aplicación, avatar de notificaciones y grabado del dispositivo.

<div align="center">
<img src="../assets/style-guidelines/sg-01-lockup.png" alt="Lockup de producto OsoSense" width="486">
<p><em>Figura 5.3. Lockup de producto.</em></p>
</div>

El **lockup de producto** pone el símbolo a la izquierda y el nombre «OsoSense» en Plus Jakarta Sans Bold, con una separación de un cuarto del diámetro del símbolo. Es la versión del encabezado y del pie de página del Landing Page y de la barra superior de las aplicaciones.

<div align="center">
<img src="../assets/style-guidelines/sg-01-contexto.png" alt="Logo en la pestaña del navegador, en el encabezado, como ícono de app y grabado en el dispositivo" width="900">
<p><em>Figura 5.4. Logo en contexto.</em></p>
</div>

La figura anterior muestra el logo en sus cuatro soportes reales, de izquierda a derecha: el favicon de 32 px en la pestaña del navegador junto al título de la página; el lockup de 40 px en el encabezado del Landing Page (captura real); el ícono de la aplicación en la pantalla de inicio de un teléfono, sobre fondo blanco y con esquinas de 16 px; y el símbolo en versión blanca grabado en la carcasa del dispositivo, de 12 mm.

<div align="center">
<img src="../assets/style-guidelines/sg-01-fondos.png" alt="Lockup sobre cuatro fondos permitidos" width="900">
<p><em>Figura 5.5. Fondos permitidos.</em></p>
</div>

Solo se admiten cuatro fondos: **blanco** `#FFFFFF` y **verde claro** `#F0FDF4`, con el logo a color y el nombre en casi negro; y **verde oscuro** `#065F46` y **casi negro** `#111827`, con la versión monocromática blanca, porque el logo a color pierde contraste sobre fondos oscuros.

<div align="center">
<img src="../assets/style-guidelines/sg-01-construccion.png" alt="Construcción del símbolo y zona de seguridad del lockup" width="800">
<p><em>Figura 5.6. Construcción y zona de seguridad.</em></p>
</div>

A la izquierda, la **construcción** del símbolo sobre una cuadrícula de 20 px: el círculo exterior, los ejes que lo centran y dos circunferencias guía que marcan hasta dónde llega el oso. A la derecha, la **zona de seguridad** del lockup: un margen libre igual a la mitad del diámetro del símbolo en los cuatro lados (el recuadro punteado); ningún texto, borde ni imagen entra en esa zona.

<div align="center">
<img src="../assets/style-guidelines/sg-01-tamanos.png" alt="Símbolo en seis tamaños" width="484">
<p><em>Figura 5.7. Tamaños del símbolo.</em></p>
</div>

| Tamaño | Uso |
|---|---|
| 96 px | Portadas, pantallas de bienvenida y estados vacíos. |
| 64 px | Ícono de la aplicación en la tienda y avatar de notificación. |
| 48 px | Pie de página del Landing Page. |
| 40 px | Encabezado del Landing Page y barras superiores. |
| 32 px | Mínimo en pantalla; por debajo se pierden las montañas interiores. |
| 16 px | Solo favicon (marcado en rojo en la figura); el Landing Page entrega además 64 y 180 px para pantallas de alta densidad. |

<div align="center">
<img src="../assets/style-guidelines/sg-01-usos-incorrectos.png" alt="Seis usos incorrectos del logo" width="900">
<p><em>Figura 5.8. Usos incorrectos.</em></p>
</div>

Los seis usos no permitidos, de izquierda a derecha: deformar el símbolo; recolorearlo fuera de la paleta; rotarlo o agregarle sombras; usar la versión a color sobre un fondo oscuro, donde se pierde; colocarlo sobre una fotografía que compite con él; y escribir el nombre con otra tipografía, otro color o en cursiva.

#### Colors

La paleta es la del Landing Page y tiene tres capas: el **verde esmeralda**, que es el color de acción de todos los productos; los **neutros**, que ocupan la mayor parte de cada pantalla; y los **colores del logo**, que solo viven dentro del logo. Se suman los colores de los niveles de salinidad. Las escalas se presentan como estratos de una muestra de suelo, del tono más claro al más oscuro.

<div align="center">
<img src="../assets/style-guidelines/sg-02-primario.png" alt="Escala de verde esmeralda de 50 a 900" width="900">
<p><em>Figura 5.9. Escala del color primario.</em></p>
</div>

| Token | Hex | Uso en el Landing Page y las apps |
|---|---|---|
| `primary-50` | `#ECFDF5` | Fondos muy suaves. |
| `primary-100` | `#D1FAE5` | Contenedores y el indicador de la navegación inferior en Android. |
| `primary-200` a `primary-500` | `#A7F3D0` · `#6EE7B7` · `#34D399` · `#10B981` | Ilustraciones, bandas de gráficos y marcas de medida. |
| `primary-600` | `#059669` | Íconos, números de paso, viñetas, subrayado del menú y círculos de flecha. |
| `primary-700` | `#047857` | Botones con texto blanco, botones de contorno, idioma activo y etiqueta «Más Popular». |
| `primary-800` | `#065F46` | *Hover* y estado presionado de los botones; fondos oscuros de marca. |
| `primary-900` | `#064E3B` | Sombra del verde oscuro y texto sobre superficies verdes cuando se necesita más contraste. |

<div align="center">
<img src="../assets/style-guidelines/sg-02-neutros.png" alt="Escala de neutros" width="900">
<p><em>Figura 5.10. Escala de neutros.</em></p>
</div>

| Token | Hex | Uso |
|---|---|---|
| `neutral-0` | `#FFFFFF` | Fondo principal y tarjetas. |
| `neutral-50` | `#F9FAFB` | Pie de página y fondos alternos. |
| `neutral-100` | `#F3F4F6` | Botón del menú, botones secundarios y deshabilitados. |
| `neutral-200` | `#E5E7EB` | Bordes de tarjetas, divisores y campos. |
| `neutral-400` | `#9CA3AF` | Texto de ejemplo y elementos deshabilitados. |
| `neutral-500` | `#6B7280` | Texto secundario y bajadas. |
| `neutral-600` | `#4B5563` | Texto de apoyo en párrafos largos. |
| `neutral-900` | `#111827` | Títulos y texto principal. |
| `neutral-950` | `#030712` | Nombre del producto en el lockup. |

<div align="center">
<img src="../assets/style-guidelines/sg-02-marca.png" alt="Colores muestreados del logo" width="742">
<p><em>Figura 5.11. Colores del logo.</em></p>
</div>

Los dos colores del logo se muestrearon del propio símbolo (los puntos sobre la imagen): **Forest** `#263D29`, del aro y del wordmark, y **Olive** `#64663F`, de «Terra» y del relleno del oso. Solo se usan dentro del logo, para no competir con el verde de acción de la interfaz.

<div align="center">
<img src="../assets/style-guidelines/sg-02-roles.png" alt="Roles de color en la interfaz" width="742">
<p><em>Figura 5.12. Roles de color.</em></p>
</div>

La figura resume qué color cumple cada rol, en dos filas: **acción** `#047857`, **ícono** `#059669`, **presionado** `#065F46`, **superficie** `#F0FDF4` (tarjetas destacadas y plan recomendado) y **etiqueta** `#DCFCE7`; y **texto** `#111827`, **secundario** `#6B7280`, **borde** `#E5E7EB`, **fondo** `#FFFFFF` y **pie** `#F9FAFB`. Las muestras tienen forma de hoja, el motivo que acompaña a la paleta.

<div align="center">
<img src="../assets/style-guidelines/sg-02-proporcion.png" alt="Proporción 60-30-10" width="742">
<p><em>Figura 5.13. Proporción de uso.</em></p>
</div>

La **regla 60 · 30 · 10** equilibra cada pantalla: alrededor del 60 % es blanco o neutro, un 30 % son superficies verdes claras que agrupan contenido destacado y solo un 10 % es verde de acción. Así la mirada va directo a los botones.

<div align="center">
<img src="../assets/style-guidelines/sg-02-sombras.png" alt="Cuatro niveles de elevación" width="742">
<p><em>Figura 5.14. Elevación.</em></p>
</div>

La elevación es mínima y tiene cuatro niveles, de izquierda a derecha: **nivel 0**, borde de 1 px `#E5E7EB` sin sombra (tarjetas de datos, preguntas frecuentes); **nivel 1**, sombra verde suave de 40 px de desenfoque (plan recomendado); **nivel 2**, sombra corta de 4 a 6 px (botones y chips); y **nivel 3**, sombra de 24 px (indicador de salinidad sobre fotografía).

<div align="center">
<img src="../assets/style-guidelines/sg-02-contraste.png" alt="Siete combinaciones de texto y fondo con su ratio" width="900">
<p><em>Figura 5.15. Contraste WCAG 2.1.</em></p>
</div>

Los contrastes se calcularon con la fórmula de luminancia relativa de WCAG 2.1 (4,5 : 1 para texto normal y 3 : 1 para texto grande y componentes). La tabla sigue el orden de la figura:

| Texto sobre fondo | Ratio | Resultado | Uso |
|---|---|---|---|
| `#111827` sobre blanco | 17,74 : 1 | AAA | Títulos y texto principal. |
| `#4B5563` sobre blanco | 7,56 : 1 | AAA | Párrafos de apoyo. |
| `#6B7280` sobre blanco | 4,83 : 1 | AA | Bajadas y texto secundario. |
| Blanco sobre `#047857` | 5,48 : 1 | AA | Botones con texto. |
| Blanco sobre `#065F46` | 7,68 : 1 | AAA | Botón presionado y fondos oscuros. |
| `#047857` sobre `#F0FDF4` | 5,24 : 1 | AA | Etiquetas sobre superficie verde. |
| Blanco sobre `#059669` | 3,77 : 1 | AA texto grande | Solo íconos y flechas dentro de círculos, nunca texto normal. |

<div align="center">
<img src="../assets/style-guidelines/sg-02-estados.png" alt="Píldoras de los cinco niveles de salinidad" width="900">
<p><em>Figura 5.16. Colores de estado de salinidad.</em></p>
</div>

Los niveles de salinidad tienen colores propios, independientes del verde de marca, porque comunican riesgo. Se calculan como la relación entre la conductividad eléctrica del extracto de saturación (ECe) y el umbral de tolerancia del cultivo, según Maas y Hoffman (1977), y la Web App ya aplica esta regla.

| Nivel | Ícono | Texto | Fondo | Cuándo |
|---|---|---|---|---|
| Normal | círculo con check | `#1B6234` | `#E1F0E4` | ECe < 0,8 × umbral |
| En vigilancia | ojo | `#70510B` | `#FFF1C6` | 0,8 × umbral ≤ ECe ≤ 1,0 × umbral |
| Alto | triángulo | `#85440D` | `#FFF0DD` | 1,0 × umbral < ECe ≤ 1,25 × umbral |
| Muy alto | círculo con aspa | `#A12426` | `#FFEAEB` | ECe > 1,25 × umbral |
| Sin lectura | signo de pregunta | `#3E5150` | `#E6EBEA` | El dispositivo aún no reporta |

<div align="center">
<img src="../assets/style-guidelines/sg-02-estados-contexto.png" alt="Lista de parcelas con su nivel de salinidad" width="742">
<p><em>Figura 5.17. Estados en contexto.</em></p>
</div>

En contexto, cada parcela de la lista lleva una barra lateral con el color de su nivel, el valor de ECe en grande y la píldora con ícono y palabra. Los valores de ejemplo muestran que el nivel depende del cultivo: 3,4 dS/m es *muy alto* para el arándano (umbral 2,5) y 3,5 dS/m es *en vigilancia* para el palto (umbral 3,5).

<div align="center">
<img src="../assets/style-guidelines/sg-02-aplicacion.png" alt="Sección de planes del Landing Page" width="742">
<p><em>Figura 5.18. Aplicación en el Landing Page.</em></p>
</div>

La sección de planes del Landing Page (captura real) aplica la paleta: fondo blanco, tarjetas con borde neutro, el plan recomendado sobre superficie verde clara y un único botón lleno en `#047857`.

#### Typography

Se usa una sola familia: **Plus Jakarta Sans**, la del Landing Page, cargada desde Google Fonts. Es una sans-serif geométrica de trazo abierto, pensada para pantallas, con pesos de 200 a 800 y cobertura completa del español y del inglés. Una sola familia simplifica la carga, algo importante con conexiones rurales lentas, y la jerarquía se construye con tamaño y peso.

<div align="center">
<img src="../assets/style-guidelines/sg-03-familia.png" alt="Muestra de Plus Jakarta Sans" width="900">
<p><em>Figura 5.19. Familia tipográfica.</em></p>
</div>

A la izquierda, el nombre de la familia; a la derecha, el alfabeto con la eñe, las cifras, las tildes, los signos de apertura del español y las unidades del producto (dS/m y °C), y debajo los seis pesos disponibles, de Light 300 a ExtraBold 800.

<div align="center">
<img src="../assets/style-guidelines/sg-03-escala.png" alt="Escala tipográfica de diez estilos" width="900">
<p><em>Figura 5.20. Escala tipográfica.</em></p>
</div>

| Estilo | Peso | Tamaño / interlínea | Uso |
|---|---|---|---|
| Display | ExtraBold 800, −2,5 % | 58 / 64 px (30 px en móvil) | Titular del hero. |
| Heading 2 | Bold 700 | 36 / 44 px (28 px en móvil) | Título de sección. |
| Heading 3 | Bold 700 | 20 / 28 px | Título de beneficio o de plan. |
| Heading 4 | Bold 700 | 18 / 27 px | Título de dato, capacidad o pregunta. |
| Body Large | Regular 400 | 18 / 29 px | Texto destacado en tarjetas. |
| Body | Regular 400 | 16 / 26 px | Texto base. |
| Body Small | Regular 400 | 14 / 22 px | Bajadas, descripciones y pie de página. |
| Label | SemiBold 600 | 14 / 20 px | Botones, menú y etiquetas. |
| Eyebrow | Bold 700, mayúsculas, +5 % | 12 / 17 px | Rótulo sobre el título de un beneficio. |
| Price / Data | ExtraBold 800 | 36 / 40 px | Precios y cifras de salinidad. |

El cuerpo no baja de 16 px por la edad promedio del segmento 1; las líneas de texto corrido tienen entre 45 y 75 caracteres; y se reserva un 30 % de ancho extra en botones y etiquetas porque el español ocupa hasta un tercio más que el inglés.

<div align="center">
<img src="../assets/style-guidelines/sg-03-contexto.png" alt="Hero del Landing Page con el titular Display" width="742">
<p><em>Figura 5.21. Tipografía en contexto.</em></p>
</div>

En el hero del Landing Page (captura real), el Display blanco de 58 px se apoya en una capa verde oscura semitransparente sobre la fotografía; encima va el rótulo «Agricultura inteligente» en Heading 3 y debajo la bajada en Body.

#### Spacing

<div align="center">
<img src="../assets/style-guidelines/sg-03-espaciado.png" alt="Escala de espaciado de 4 a 96 px" width="742">
<p><em>Figura 5.22. Escala de espaciado.</em></p>
</div>

| Token | Valor | Uso |
|---|---|---|
| `space-1` | 4 px | Entre ícono y texto muy juntos. |
| `space-2` | 8 px | Entre título y bajada. |
| `space-3` | 12 px | Entre el texto del botón y su círculo; relleno de chips. |
| `space-4` | 16 px | Margen lateral en móvil y separación de columnas. |
| `space-5` | 24 px | Relleno interno de tarjetas. |
| `space-6` | 32 px | Entre tarjetas y relleno de tarjetas grandes. |
| `space-7` | 48 px | Entre el encabezado de sección y su contenido. |
| `space-8` | 64 px | Separación de secciones en móvil. |
| `space-9` | 96 px | Separación de secciones en escritorio. |

<div align="center">
<img src="../assets/style-guidelines/sg-03-espaciado-contexto.png" alt="Tarjeta de dato con las medidas de relleno marcadas" width="742">
<p><em>Figura 5.23. Espaciado en una tarjeta.</em></p>
</div>

Sobre una tarjeta real del Landing Page, las bandas verdes marcan el relleno de 28 px en los cuatro lados y la banda amarilla, los 20 px entre el ícono y el texto.

<div align="center">
<img src="../assets/style-guidelines/sg-03-radios.png" alt="Seis radios de borde" width="742">
<p><em>Figura 5.24. Radios de borde.</em></p>
</div>

| Radio | Valor | Uso |
|---|---|---|
| `radius-sm` | 8 px | Campos compactos e imágenes pequeñas. |
| `radius-md` | 12 px | Campos de formulario. |
| `radius-lg` | 20 px | Tarjetas de datos. |
| `radius-xl` | 28 px | Planes, hero y banners (32 px en el hero de escritorio). |
| `radius-pill` | 999 px | Botones, etiquetas y píldoras. |
| Círculo | 50 % | Íconos de fondo, avatar y símbolo. |

<div align="center">
<img src="../assets/style-guidelines/sg-03-grilla.png" alt="Grilla de 12 columnas sobre el Landing Page y grillas de tablet y móvil" width="900">
<p><em>Figura 5.25. Grilla.</em></p>
</div>

A la izquierda, la grilla de 12 columnas superpuesta a la sección de impacto del Landing Page; a la derecha, las grillas de tablet (8 columnas) y móvil (4 columnas).

| Ancho | Columnas | Gutter | Margen lateral |
|---|---|---|---|
| ≥ 1024 px | 12 | 24 px | 72 px (contenedor hasta 1440 px) |
| 640–1023 px | 8 | 24 px | 32 px |
| < 640 px | 4 | 16 px | 16 px |

Objetivos táctiles de 44 × 44 px como mínimo en web y 48 × 48 dp en Android, con al menos 8 px entre ellos.

#### Iconography

<div align="center">
<img src="../assets/style-guidelines/sg-04-iconos.png" alt="Veinticuatro íconos de línea con su nombre" width="900">
<p><em>Figura 5.26. Set de íconos.</em></p>
</div>

Se usan **íconos de línea** de 24 × 24 px con trazo de 2 px y extremos redondeados, el estilo del Landing Page. La figura reúne los 24 íconos del producto con su significado: alertas, cultivo, agua, pérdida, telemetría, sensor, celular, asesor, sin conexión, costos, parcela, temperatura, idioma, descargar, inicio, menú, incluido, abrir, cerrar, avanzar, ir a, cerrar menú, anterior y siguiente.

<div align="center">
<img src="../assets/style-guidelines/sg-04-iconos-tamanos.png" alt="Íconos en cuatro tamaños y en contenedores" width="900">
<p><em>Figura 5.27. Tamaños y contenedores.</em></p>
</div>

De izquierda a derecha: el ícono suelto en 16, 20, 24 y 32 px; dentro de un círculo verde claro de 40 y 48 px (datos y capacidades); dentro de un círculo verde de 52 px (beneficios destacados); la flecha en el círculo blanco de 34 px de los botones; y la viñeta de 22 px de las listas de planes.

Todo ícono con función lleva texto visible o `aria-label`; los decorativos llevan `aria-hidden="true"`; no se mezclan íconos rellenos con íconos de línea; y los íconos de estado siempre acompañan a la palabra del estado.

#### Tone of voice

Las cuatro dimensiones de tono que exige el enunciado se fijaron a partir de las entrevistas de la sección 2.2.3 y del perfil de usuarios de la sección 1.3.

| Dimensión | Posición | Sustento |
|---|---|---|
| Divertido / Serio | **Serio** | Se comunican riesgos de pérdida de cosecha, y el asesor sustenta recomendaciones profesionales. Sin bromas ni exclamaciones. |
| Formal / Casual | **Casual cercano** | Lenguaje cotidiano y frases cortas, sin jerga técnica; trato de «tú», como el Landing Page. Los productores entrevistados piden indicaciones claras y mediciones explicadas de forma simple. |
| Respetuoso / Irreverente | **Respetuoso** | Usuarios de mayor edad con desconfianza inicial hacia un sensor de bajo costo; nunca se culpa al usuario. |
| Entusiasta / Sereno | **Sereno** | Una alerta crítica no debe alarmar, sino informar el hecho y la acción a tomar. El entusiasmo se reserva para logros, como una salinidad que baja. |

El nivel de detalle cambia según quién lee: al **productor**, frases de hasta 20 palabras y valores cualitativos, con la medida en dS/m bajo demanda; al **asesor técnico**, lenguaje profesional y dato crudo (ECe, umbral, tendencia); y al **visitante del Landing Page**, titulares breves centrados en el beneficio («Suelo vivo, Cosecha segura.») y verbos de acción en los botones.

| Contexto | Así sí | Así no |
|---|---|---|
| Alerta crítica | «Salinidad muy alta en Lote Sur. Riega con agua de menor salinidad y revisa el drenaje hoy.» | «¡¡ALERTA!! EC 6.2 dS/m excede el umbral ECe del cultivo!!!» |
| Estado vacío | «Aún no hay lecturas. Conecta tu dispositivo para ver la salinidad de esta parcela.» | «Error 404: no se encontraron datos de telemetría.» |
| Error de formulario | «Usa al menos 12 caracteres.» | «Contraseña inválida.» |
| Logro | «La salinidad de La Quebrada bajó a nivel normal. El lavado de sales funcionó.» | «¡¡Felicidades, campeón!!» |

El producto usa **una sola palabra por concepto**: *parcela* (no lote ni terreno), *lectura* (no muestra), *dispositivo* (no nodo), *acción correctiva* y los estados *normal, en vigilancia, alto y muy alto*. Los botones llevan un verbo y, si hace falta, un objeto («Elegir Productor», «Registrar acción»), y la unidad se separa de la cifra con un espacio (3.5 dS/m).

### 5.1.2. Web, Mobile and IoT Style Guidelines

Sobre la base común de la sección 5.1.1, esta sección fija los estándares visuales y de interacción de cada plataforma.

#### Web: componentes

<div align="center">
<img src="../assets/style-guidelines/sg-04-botones.png" alt="Botones del Landing Page en sus estados" width="900">
<p><em>Figura 5.28. Botones y estados.</em></p>
</div>

En la fila superior, el botón principal en sus cuatro estados: **reposo** (píldora `#047857` con círculo blanco y flecha), **hover y presionado** (`#065F46`), **foco** (anillo azul `#2563EB` de 3 px por fuera) y **deshabilitado** (gris). En la fila inferior: el botón **claro sobre fotografía** (blanco con círculo `#059669`), el **botón de bloque** de los planes, el **botón de contorno** de los planes no recomendados y el **selector de idioma** con el idioma activo en `#047857`. Solo hay un botón con relleno por bloque.

<div align="center">
<img src="../assets/style-guidelines/sg-04-formularios.png" alt="Campos de formulario en cuatro estados" width="900">
<p><em>Figura 5.29. Campos de formulario.</em></p>
</div>

De izquierda a derecha: campo en **reposo** con borde `#D1D5DB` y texto de ejemplo gris; en **foco**, con borde `#047857` y halo verde claro de 4 px; con **error**, borde `#A12426`, ícono y un mensaje que explica cómo corregir; y **deshabilitado**, con fondo gris claro. La etiqueta siempre está visible arriba del campo, nunca solo como texto de ejemplo.

<div align="center">
<img src="../assets/style-guidelines/sg-04-etiquetas.png" alt="Etiquetas y píldoras de estado" width="742">
<p><em>Figura 5.30. Etiquetas y píldoras.</em></p>
</div>

Arriba, las tres etiquetas del Landing Page: destacada (verde lleno), de categoría (verde claro) y neutra (gris). Abajo, las cinco píldoras de estado, que combinan ícono, palabra y color.

<div align="center">
<img src="../assets/style-guidelines/sg-04-tarjetas.png" alt="Tarjeta de dato y acordeón cerrado y abierto" width="742">
<p><em>Figura 5.31. Tarjetas y acordeón.</em></p>
</div>

Arriba, la tarjeta de dato: ícono en círculo claro, título Heading 4 y descripción, con radio de 20 px, relleno de 28 px y borde de 1 px. Abajo, el acordeón de preguntas frecuentes cerrado (signo «+») y abierto (signo «−» y respuesta en texto secundario).

<div align="center">
<img src="../assets/style-guidelines/sg-04-plan.png" alt="Tarjeta del plan recomendado" width="742">
<p><em>Figura 5.32. Tarjeta de plan.</em></p>
</div>

La tarjeta del plan recomendado (captura real) combina los tokens: superficie `#F0FDF4` con borde `#BBF7D0` y sombra de nivel 1, etiqueta «Más Popular», precio en 36 px ExtraBold, viñetas de 22 px y botón de bloque a todo el ancho.

#### Web: navegación e interfaces responsive

<div align="center">
<img src="../assets/style-guidelines/sg-04-navegacion.png" alt="Encabezado, pie de página y menú móvil abierto" width="900">
<p><em>Figura 5.33. Navegación.</em></p>
</div>

A la izquierda, el **encabezado fijo** del Landing Page (logo, seis anclas con el subrayado activo en `#059669`, selector de idioma y botón principal) y el **pie de página** con la marca y tres columnas de navegación secundaria. A la derecha, el **menú móvil abierto**: el botón de hamburguesa se convierte en una «×» y despliega un panel con las seis anclas, la activa resaltada en verde claro, y el selector de idioma al final.

<div align="center">
<img src="../assets/style-guidelines/sg-04-responsive.png" alt="Landing Page en escritorio, tablet y móvil" width="900">
<p><em>Figura 5.34. Responsive.</em></p>
</div>

El mismo diseño en tres anchos reales, de izquierda a derecha: escritorio (1440 px), tablet (768 px) y móvil (390 px).

| Ancho | Comportamiento |
|---|---|
| ≥ 1200 px | Menú horizontal completo con selector de idioma y botón *Probar Gratis*; grillas de 2, 3 y 4 columnas. |
| 640–1199 px | El menú pasa a un botón de hamburguesa que despliega un panel; las grillas de 3 columnas pasan a 1 o 2. |
| < 640 px | Una columna; titular de 30 px; secciones a 64 px; selector de idioma dentro del menú. |

En la Web App, cuyo prototipo usa cortes de 700, 900 y 1100 px, la barra lateral pasa a un cajón deslizable por debajo de 900 px y las tablas se convierten en listas de tarjetas con la píldora de estado visible.

#### Mobile: aplicación Android

<div align="center">
<img src="../assets/style-guidelines/sg-05-app-pantallas.png" alt="Pantalla de inicio y detalle de parcela en Android" width="760">
<p><em>Figura 5.35. Aplicación Android.</em></p>
</div>

La Mobile App (Kotlin y Jetpack Compose con Material 3) usa los mismos tokens. A la izquierda, la **pantalla de inicio**: barra superior con el lockup y la campana; tarjeta principal verde oscuro con la parcela, la cifra en Data y la píldora de estado; lista de parcelas; botón principal a todo el ancho; y navegación inferior con cuatro destinos (Inicio, Parcelas, Alertas y Perfil), con el activo resaltado en `#D1FAE5`. A la derecha, el **detalle de parcela**: cifra actual con su píldora, mini gráfico con las bandas de nivel y el umbral, la acción recomendada sobre superficie verde clara y las lecturas de humedad y temperatura.

<div align="center">
<img src="../assets/style-guidelines/sg-05-app-tema.png" alt="Roles de color del tema Material 3" width="484">
<p><em>Figura 5.36. Tema Material 3.</em></p>
</div>

El tema de Compose asigna los tokens a los roles de Material 3: `primary` `#047857`, `onPrimary` blanco, `primaryContainer` `#D1FAE5`, `onPrimaryContainer` `#065F46`, `surface` blanco, `surfaceVariant` `#F9FAFB`, `onSurface` `#111827`, `onSurfaceVariant` `#6B7280`, `outline` `#E5E7EB` y `error` `#A12426`. Toda la escala tipográfica usa Plus Jakarta Sans en `sp` y el objetivo táctil es de 48 dp.

<div align="center">
<img src="../assets/style-guidelines/sg-05-notificaciones.png" alt="Tres notificaciones por severidad" width="742">
<p><em>Figura 5.37. Notificaciones por severidad.</em></p>
</div>

Cada notificación muestra el símbolo, un título con el hecho, un texto con la acción y la píldora del nivel. Cada severidad tiene su canal de Android: «Muy alto» con vibración y aviso emergente, «En vigilancia» con sonido discreto y «Sin lectura» como resumen.

<div align="center">
<img src="../assets/style-guidelines/sg-05-conexion.png" alt="Avisos sin conexión y conexión restablecida" width="742">
<p><em>Figura 5.38. Avisos de conexión.</em></p>
</div>

Sin red, una barra oscura fija indica desde cuándo son los datos que se muestran; al volver la conexión, una barra verde clara confirma cuántas lecturas se sincronizaron.

#### IoT: interfaz física del dispositivo

El dispositivo de campo (ESP32 con sonda de conductividad eléctrica, humedad y temperatura) no tiene pantalla: se comunica con un LED RGB, un botón y la carcasa.

<div align="center">
<img src="../assets/style-guidelines/sg-05-dispositivo.png" alt="Vista frontal y lateral del dispositivo" width="742">
<p><em>Figura 5.39. Dispositivo de campo.</em></p>
</div>

En la **vista frontal**, de arriba abajo: panel solar en la tapa, LED de estado bajo un difusor translúcido, botón único y el símbolo de Oso Terra grabado en blanco; debajo sale la sonda. La carcasa mide 90 × 60 mm, en plástico ABS/ASA estabilizado contra rayos UV color `#065F46`, con sellado IP65 y esquinas de 12 mm. En la **vista lateral** se ven el panel, el botón y la sonda de 150 mm; la línea discontinua marca el nivel del suelo.

<div align="center">
<img src="../assets/style-guidelines/sg-05-led.png" alt="Seis patrones de destello del LED en 20 segundos" width="900">
<p><em>Figura 5.40. Patrones del LED.</em></p>
</div>

Cada fila muestra 20 segundos de un estado: el color del LED a la izquierda y, en la franja oscura, los momentos en que se enciende. Cada estado se distingue por **color y número de destellos**, para reconocerlo con daltonismo o con sol intenso.

| Estado | Color | Patrón | Significado |
|---|---|---|---|
| Normal | Verde | 1 destello cada 10 s | Todo bien; ahorra batería. |
| En vigilancia | Ámbar | 1 destello cada 5 s | Conviene revisar el riego esta semana. |
| Alto | Naranja | 2 destellos cada 5 s | Reducir sales: riego de lavado y drenaje. |
| Muy alto | Rojo | 3 destellos rápidos cada 3 s | Requiere acción hoy; el aviso llega también a la app. |
| Sin conexión | Blanco | 1 destello largo cada 5 s | Guarda lecturas y las sincroniza después. |
| Emparejamiento | Azul | Parpadeo continuo | Vinculación con la app durante 2 minutos. |

<div align="center">
<img src="../assets/style-guidelines/sg-05-boton.png" alt="Tres duraciones de pulsación del botón" width="484">
<p><em>Figura 5.41. Botón único.</em></p>
</div>

La barra verde representa cuánto se mantiene pulsado el botón y el punto de color, la respuesta del LED: menos de 1 s toma una lectura y la envía (verde); 3 s activa el emparejamiento (azul); 10 s restablece la configuración de fábrica (rojo, con tres destellos de aviso).

<div align="center">
<img src="../assets/style-guidelines/sg-05-instalacion.png" alt="Cinco pasos de instalación con la respuesta del LED" width="900">
<p><em>Figura 5.42. Instalación en cinco pasos.</em></p>
</div>

La puesta en marcha se hace sin herramientas y cada paso tiene una respuesta visible del LED (el punto bajo cada ícono): ubicar un punto representativo de la parcela, clavar la sonda hasta la línea de suelo, encender con el botón (blanco), emparejar con la app (azul) y verificar la primera lectura (verde).

#### Visualización de datos

<div align="center">
<img src="../assets/style-guidelines/sg-06-grafico-linea.png" alt="Gráfico de línea de ECe con bandas de nivel y umbral" width="900">
<p><em>Figura 5.43. Serie de tiempo de ECe. Datos ilustrativos.</em></p>
</div>

El gráfico tipo de la plataforma muestra la ECe de una parcela durante un mes: línea `#047857` de 3 px; bandas de fondo con los colores de los cuatro niveles, para leer el nivel sin leyenda; umbral del cultivo como línea discontinua `#A12426` con su etiqueta; eje Y desde cero con la unidad; fechas cortas en el eje X; y la etiqueta directa del valor actual junto al último punto.

<div align="center">
<img src="../assets/style-guidelines/sg-06-grafico-barras.png" alt="Barras de ECe por parcela con umbral de cada cultivo" width="900">
<p><em>Figura 5.44. Comparación de parcelas. Datos ilustrativos.</em></p>
</div>

Para comparar parcelas en un instante se usan barras horizontales con el color del nivel de cada una y una línea negra que marca el umbral de su cultivo; a la derecha van el valor y la píldora. Nunca se usan gráficos circulares ni en 3D, se muestran como máximo cuatro series por gráfico y cada gráfico tiene una tabla alternativa (fecha, ECe y nivel) con un resumen en texto para lectores de pantalla.

#### Accesibilidad, idioma y movimiento

<div align="center">
<img src="../assets/style-guidelines/sg-06-accesibilidad.png" alt="Cinco patrones de accesibilidad" width="900">
<p><em>Figura 5.45. Patrones de accesibilidad.</em></p>
</div>

De izquierda a derecha: el **foco visible**, un anillo azul `#2563EB` en todo elemento interactivo al navegar con teclado; el **selector de idioma** en el encabezado, con `aria-pressed`; el **objetivo táctil** mínimo de 44 × 44 px (recuadro rojo) aunque el ícono sea más pequeño; el **estado con ícono y palabra**, nunca solo color; y el **texto sobre fotografía**, apoyado en una capa verde oscura.

| Principio WCAG 2.1 (AA) | Reglas |
|---|---|
| Perceptible | Contraste de 4,5 : 1 en texto y 3 : 1 en componentes; el estado nunca se comunica solo con color; texto ampliable al 200 %; texto alternativo en fotos informativas y `alt=""` en decorativas. |
| Operable | Todo se maneja con teclado; foco siempre visible; objetivos táctiles de 44 px; nada parpadea más de tres veces por segundo. |
| Comprensible | Idioma declarado en `lang`; mensajes de error que explican cómo corregir; etiquetas visibles; navegación igual en todas las páginas. |
| Robusto | HTML semántico con `aria-label`, `aria-labelledby`, `aria-expanded`, `aria-controls` y `aria-pressed`; cambios de estado anunciados con `aria-live` en las aplicaciones. |

El Landing Page ya aplica `aria-label` en la navegación y el menú, `aria-labelledby` en cada sección, `aria-expanded` y `aria-controls` en el menú móvil, `aria-pressed` en el selector de idioma, textos alternativos y `prefers-reduced-motion`. La Web App incorpora además un enlace «Saltar al contenido», `aria-current="page"` y `role="alert"` en los errores.

**Internacionalización.** Todos los productos se ofrecen en inglés (en_US) y español latinoamericano (es_419) con el selector EN / ES; los textos viven en archivos de traducción, las fechas siguen el formato de cada idioma y las unidades se mantienen (3.5 dS/m, 4.2 ha, 23.8 °C).

<div align="center">
<img src="../assets/style-guidelines/sg-06-movimiento.png" alt="Duraciones de las animaciones" width="900">
<p><em>Figura 5.46. Duraciones de movimiento.</em></p>
</div>

El movimiento explica cambios y nunca es decorativo. En el Landing Page, los cambios de color de *hover* y foco duran 150 ms con la curva `cubic-bezier(0.4, 0, 0.2, 1)`; el acordeón se abre en 360 ms; y las tarjetas aparecen al hacer scroll entre 750 y 900 ms con un leve desplazamiento vertical. Con la preferencia «reducir movimiento» del sistema, las apariciones se desactivan y el contenido se muestra directamente.

Diseño en Figma: [Marca](https://www.figma.com/design/w8ggl2291TtYEPmhJ70zrq/OsoSense-%E2%80%94-Landing-Page-UI-Design?node-id=13-17&t=zv0k9BZ0KNZ8WH8D-1), [Color](https://www.figma.com/design/w8ggl2291TtYEPmhJ70zrq/OsoSense-%E2%80%94-Landing-Page-UI-Design?node-id=13-18&t=zv0k9BZ0KNZ8WH8D-1), [Tipografía y espacio](https://www.figma.com/design/w8ggl2291TtYEPmhJ70zrq/OsoSense-%E2%80%94-Landing-Page-UI-Design?node-id=13-19&t=zv0k9BZ0KNZ8WH8D-1), [Íconos y componentes](https://www.figma.com/design/w8ggl2291TtYEPmhJ70zrq/OsoSense-%E2%80%94-Landing-Page-UI-Design?node-id=13-20&t=zv0k9BZ0KNZ8WH8D-1), [Mobile e IoT](https://www.figma.com/design/w8ggl2291TtYEPmhJ70zrq/OsoSense-%E2%80%94-Landing-Page-UI-Design?node-id=13-21&t=zv0k9BZ0KNZ8WH8D-1) y [Datos y accesibilidad](https://www.figma.com/design/w8ggl2291TtYEPmhJ70zrq/OsoSense-%E2%80%94-Landing-Page-UI-Design?node-id=13-22&t=zv0k9BZ0KNZ8WH8D-1).

## 5.2. Information Architecture

La arquitectura de información del Landing Page responde a una pregunta: ¿qué necesita saber un productor o un asesor técnico, y en qué orden, para decidir probar OsoSense? Las entrevistas (sección 2.2.3) mostraron que el productor desconfía de un sensor de bajo costo, no conoce la salinidad como un problema medible y quiere indicaciones claras; el asesor busca datos que sustenten sus recomendaciones. Por eso el contenido se ordena como un recorrido que primero hace visible el problema, luego muestra la solución y cómo se adopta, y al final da confianza antes de pedir una acción.

El Landing Page es una **sola página** de once bloques con anclas (`#id`). Esta decisión reduce la carga de navegación (no hay páginas internas que recordar), funciona bien con conexiones rurales lentas porque todo se carga una sola vez y permite enlazar directamente a cualquier bloque desde WhatsApp o desde la Web App. Los diagramas de esta sección se elaboraron en Figma, en la página «IA · Landing Page».

<div align="center">
<img src="../assets/information-architecture/ia-01-mapa-sitio.png" alt="Mapa del sitio del Landing Page" width="900">
<p><em>Figura 5.47. Mapa del sitio del Landing Page.</em></p>
</div>

El mapa del sitio muestra la raíz (`ososense.pe`), los tres elementos que acompañan a toda la página (encabezado fijo, hero y pie de página) y los ocho bloques de contenido agrupados en seis etapas del recorrido: **Problema**, **Beneficio**, **Solución**, **Adopción**, **Confianza** y **Acción**. Cada bloque tiene un ancla propia (por ejemplo `#planes`), que es el destino de los enlaces del menú.

### 5.2.1. Organization Systems

Se usan los tres sistemas de organización visual, cada uno en el grupo de información donde ayuda más.

**Organización secuencial (paso a paso).** Es el sistema principal de la página: los bloques siguen un orden fijo, de modo que cada uno responde la pregunta que deja el anterior.

<div align="center">
<img src="../assets/information-architecture/ia-02-secuencia.png" alt="Seis etapas del recorrido con las miniaturas de cada bloque" width="900">
<p><em>Figura 5.48. Organización secuencial del recorrido.</em></p>
</div>

| Etapa | Bloque | Pregunta del visitante que responde |
|---|---|---|
| Problema | El impacto de la salinidad | ¿Por qué debería preocuparme la sal en mi suelo? |
| Beneficio | Protege tu inversión agrícola | ¿Qué gano con medirla? |
| Solución | Nuestras capacidades · Proceso de implementación | ¿Qué hace OsoSense y cómo se instala? |
| Adopción | Planes a tu medida | ¿Cuánto cuesta y cuál me conviene? |
| Confianza | Preguntas frecuentes · El equipo | ¿Funciona sin señal? ¿Quién está detrás? |
| Acción | Asegura tu cosecha | ¿Qué hago ahora? |

Dentro del bloque de proceso se repite el patrón secuencial: los cuatro pasos numerados (mapeo, instalación, umbrales y riego) se leen en orden, en zigzag alrededor de la foto en escritorio y en lista vertical en móvil.

**Organización jerárquica (jerarquía visual).** Dentro de cada bloque, el contenido se ordena por importancia con tamaño, peso y posición.

<div align="center">
<img src="../assets/information-architecture/ia-03-jerarquia.png" alt="Sección de impacto con los cuatro niveles de jerarquía marcados" width="742">
<p><em>Figura 5.49. Jerarquía visual de una sección.</em></p>
</div>

En el bloque de impacto, los marcadores indican el orden en que el ojo recorre el contenido: **(1)** el título H2 centrado de 36 px, **(2)** la bajada gris de 14 px, **(3)** los datos en tarjetas, con la cifra en negrita como primer elemento de cada una, y **(4)** la acción, un botón claro al final de la tarjeta de historia. Todos los bloques repiten esta estructura, lo que permite recorrer la página leyendo solo los títulos.

**Organización matricial.** Se usa donde el visitante compara opciones en varias dimensiones: los planes.

<div align="center">
<img src="../assets/information-architecture/ia-04-matriz.png" alt="Matriz de comparación de los tres planes" width="742">
<p><em>Figura 5.50. Organización matricial de los planes.</em></p>
</div>

Los tres planes se presentan como columnas paralelas con las mismas filas (precio, sensores, frecuencia de lectura, alertas, curvas, historial, informes y soporte), de modo que la comparación se hace de un vistazo. El plan recomendado se destaca con fondo verde claro, sombra y la etiqueta «Más Popular».

**Esquemas de categorización.** Además de la organización visual, el contenido se clasifica con estos esquemas:

<div align="center">
<img src="../assets/information-architecture/ia-05-esquemas.png" alt="Cuatro esquemas de categorización con ejemplos" width="900">
<p><em>Figura 5.51. Esquemas de categorización.</em></p>
</div>

| Esquema | Dónde se aplica | Por qué |
|---|---|---|
| **Por tópicos** | Menú principal (Ecosistema, Capacidades, Planes, FAQ, Equipo, Contacto) y columnas del pie de página. | El visitante busca por tema; cada tema es un bloque. |
| **Por audiencia** | Planes: Piloto para quien quiere probar, Productor para el productor con una parcela y Asesor Pro para asesores técnicos y agroindustria. | Los dos segmentos del Capítulo I tienen necesidades y presupuestos distintos. |
| **Cronológico** | Proceso de implementación (pasos 01 a 04). | La adopción ocurre en un orden temporal real. |
| **Alfabético** | No se usa en el Landing Page. | Con once bloques no aporta; se reserva para listas largas de las aplicaciones, como parcelas y cultivos. |

### 5.2.2. Labeling Systems

Las etiquetas usan el menor número de palabras posible y el vocabulario de los usuarios, no el técnico: «Planes» y no «Suscripciones», «Probar Gratis» y no «Registro». Cada etiqueta del menú coincide con el título del bloque al que lleva, para que el visitante confirme que llegó al lugar correcto.

<div align="center">
<img src="../assets/information-architecture/ia-06-etiquetado.png" alt="Etiquetas del menú y de los botones con su destino y lo que el visitante espera encontrar" width="900">
<p><em>Figura 5.52. Etiquetas y asociaciones.</em></p>
</div>

La figura relaciona cada etiqueta con su destino y con lo que el visitante espera encontrar. Las etiquetas se agrupan en tres tipos: de **menú** (tópicos, en gris), de **llamada a la acción** (verbos, en verde lleno) y de **utilidad** (idioma, con contorno).

| Etiqueta | Tipo | Destino | Asociación que genera |
|---|---|---|---|
| Ecosistema | Menú | `#ecosistema` (hero) | Qué es OsoSense y cómo se ve en campo. |
| Capacidades | Menú | `#capacidades` | Qué mide el sensor y qué hace la plataforma. |
| Planes | Menú | `#planes` | Precios y qué incluye cada plan. |
| FAQ | Menú | `#faq` | Respuestas a dudas de señal, instalación, batería y uso. |
| Equipo | Menú | `#equipo` | Quiénes son OsoTerra. |
| Contacto | Menú | `#contacto` | Cómo empezar, sin llenar el encabezado de teléfonos y correos. |
| Probar Gratis | Acción | `#planes` | El plan Piloto de 14 días sin costo. |
| Conocer solución | Acción | `#capacidades` | La solución explicada en cuatro capacidades. |
| Elegir Piloto · Elegir Productor · Elegir Asesor | Acción | Registro en la Web App con el plan elegido | Crear la cuenta con ese plan; los botones se enlazarán a la vista de registro cuando la Web App esté desplegada. |
| Conocer Más | Acción | `#capacidades` | Cómo la tecnología resuelve el problema recién mostrado. |
| Comenzar ahora | Acción | `#planes` | Volver a los planes para empezar. |
| EN \| ES | Utilidad | La misma página en el otro idioma | El contenido completo cambia de idioma sin recargar. |

Dentro de los bloques, los datos se etiquetan con la cifra primero y la explicación después («+300,000 ha afectadas en la costa», «Hasta 40% de pérdida en rendimiento»), y los niveles de salinidad siempre con palabra, color e ícono («Muy alto»), nunca solo con la medida en dS/m.

### 5.2.3. SEO Tags and Meta Tags

El Landing Page incluye en su `<head>` las etiquetas que piden los buscadores y las redes sociales. Se agregaron en la rama `feature/seo-meta-tags` del repositorio del Landing Page.

<div align="center">
<img src="../assets/information-architecture/ia-07-seo.png" alt="Vista previa en un buscador, tarjeta para redes sociales y código de las etiquetas" width="900">
<p><em>Figura 5.53. SEO y meta tags del Landing Page.</em></p>
</div>

A la izquierda, cómo aparece la página en un buscador: el título y la descripción son exactamente los valores de `title` y `description`. Al centro, la tarjeta que se genera al compartir el enlace por WhatsApp o redes sociales, a partir de las etiquetas Open Graph. A la derecha, el código.

| Etiqueta | Valor |
|---|---|
| `title` | OsoSense - Suelo vivo, Cosecha segura |
| `meta description` | OsoSense mide la salinidad del suelo con sensores IoT de bajo costo y envía alertas al celular para que los productores de la costa peruana protejan su cosecha. |
| `meta keywords` | salinidad del suelo, sensor IoT, conductividad eléctrica, CEe, agricultura inteligente, alertas de riego, palto, uva, arándano, Piura, Lambayeque, OsoSense |
| `meta author` | OsoTerra |
| `meta robots` | index, follow |
| `meta theme-color` | #047857 |
| `og:title` · `og:description` | Título de la página · «Monitoreo continuo de salinidad con sensores IoT de bajo costo y alertas móviles a pie de surco.» |
| `og:image` | Fotografía del hero (`hero-fields.webp`) |
| `og:locale` | es_PE, con `og:locale:alternate` en_US |
| `twitter:card` | summary_large_image |
| `link rel="icon"` | Favicon con el símbolo de Oso Terra (64 y 180 px) |

Criterios de los valores: el título tiene 37 caracteres, por debajo de los 60 que muestran los buscadores, y combina la marca con la promesa; la descripción tiene 160 caracteres, justo en el límite que muestran los buscadores, y nombra el problema (salinidad), la tecnología (sensores IoT), el beneficio (alertas al celular) y el público (productores de la costa); las palabras clave mezclan el problema, la tecnología, los cultivos del segmento y las regiones donde está.

### 5.2.4. Searching Systems

Con once bloques en una sola página, un buscador interno no aporta: el visitante encuentra lo que busca más rápido con las ayudas de la página que escribiendo una consulta.

<div align="center">
<img src="../assets/information-architecture/ia-09-busqueda.png" alt="Menú de anclas, preguntas frecuentes y pie de página como ayudas para encontrar" width="900">
<p><em>Figura 5.54. Ayudas para encontrar información.</em></p>
</div>

| Ayuda | Cómo ayuda a encontrar | Cómo se ve el resultado |
|---|---|---|
| **Menú de anclas** | Seis destinos de una palabra, visibles siempre en el encabezado. | La página se desplaza hasta el bloque y el ancla activa queda subrayada. |
| **Preguntas frecuentes** | Reúne las dudas más repetidas en las entrevistas: señal, instalación, batería y conocimientos técnicos. | La pregunta se abre en el lugar y muestra la respuesta, sin salir de la página. |
| **Pie de página** | Agrupa los enlaces de ayuda: preguntas frecuentes, contacto, guías de instalación y soporte. | Enlaces directos a cada tema. |

El navegador conserva además su búsqueda de texto (Ctrl + F), que funciona sobre todo el contenido porque está en una sola página y en texto real, no en imágenes.

### 5.2.5. Navigation Systems

La navegación combina siete sistemas, cada uno con un propósito distinto. La figura los ubica sobre la página completa: cada punto de color marca dónde aparece cada tipo.

<div align="center">
<img src="../assets/information-architecture/ia-08-navegacion.png" alt="Página completa del Landing Page con los siete sistemas de navegación marcados" width="900">
<p><em>Figura 5.55. Sistemas de navegación.</em></p>
</div>

| Sistema | Dónde está | Cómo guía al visitante |
|---|---|---|
| **Global** (verde) | Encabezado fijo | El logo vuelve al inicio y las seis anclas llevan a cada bloque; el ancla del bloque visible se subraya en `#059669` (y se marca con `aria-current`), así el visitante sabe dónde está. |
| **Utilidad** (azul) | Encabezado | El selector de idioma y el botón *Probar Gratis* siguen visibles durante todo el recorrido. |
| **Local** (verde claro) | Dentro de los bloques | *Conocer solución* en el hero y *Conocer Más* en el impacto llevan a las capacidades; las flechas del carrusel cambian la foto del hero. |
| **Contextual** (naranja) | Planes | Los botones *Elegir* conectan la decisión con el registro. |
| **Ayuda** (morado) | Preguntas frecuentes | El acordeón resuelve dudas sin salir de la página. |
| **Llamada final** (rojo) | Banner de contacto | *Comenzar ahora* cierra el recorrido y devuelve a los planes. |
| **Pie de página** (gris) | Final de la página | Navegación secundaria en Empresa, Soluciones y Ayuda. |

El recorrido principal va de arriba abajo con el scroll; los atajos del menú permiten saltar a cualquier bloque; y el desplazamiento entre anclas es suave para que el visitante vea que se movió dentro de la misma página. En móvil, las anclas y el idioma pasan al menú de hamburguesa, el botón *Probar Gratis* sigue visible junto a él y, al tocar un ancla, el menú se cierra y la página se desplaza hasta el bloque (ver la figura de navegación de la sección 5.1.2).

Diagramas en Figma: [OsoSense — Arquitectura de información](https://www.figma.com/design/w8ggl2291TtYEPmhJ70zrq/OsoSense-%E2%80%94-Landing-Page-UI-Design?node-id=29-2&t=zv0k9BZ0KNZ8WH8D-1).

## 5.3. Landing Page UI Design

El Landing Page es el primer contacto de productores y asesores técnicos con OsoSense, por lo que su propuesta de UI se pensó como un recorrido de persuasión: primero el problema (la salinidad), después la respuesta (el sensor y la plataforma), luego la forma de adoptarla (proceso y planes) y, al final, la confianza (preguntas frecuentes y equipo) antes del llamado a la acción. Las decisiones de diseño y de arquitectura de información se tradujeron en tres reglas:

- **Una sola página con anclas.** Cada destino del menú (Ecosistema, Capacidades, Planes, FAQ, Equipo y Contacto) es una sección de la misma página; así el visitante nunca pierde el contexto y el menú funciona como índice.
- **Un bloque, una idea.** Cada sección responde una pregunta del visitante con un título H2, una bajada corta y un único patrón de contenido (datos, tarjetas, pasos, planes o acordeón).
- **La acción siempre a la vista.** El botón *Probar Gratis* permanece en el encabezado fijo y cada tramo del recorrido termina en un botón de avance (*Conocer solución*, *Conocer Más*, *Elegir plan*, *Comenzar ahora*).

El diseño se elaboró en Figma en tres páginas: **Design System** (estilos de color y de texto, y componentes), **Wireframes** y **Mock-ups**, cada una con la versión Desktop Web Browser (1440 px) y Mobile Web Browser (390 px). El contenido es el mismo que muestra el Landing Page implementado en su versión en español (es_419).

### 5.3.1. Landing Page Wireframe

Los wireframes fijan la estructura, la jerarquía y el orden de lectura sin distraer con color ni fotografía: todo está en escala de grises, las imágenes se representan con cajas punteadas y se retiraron sombras y degradados. La página se organiza en once bloques, siempre en el mismo orden en ambos anchos:

| # | Bloque | Pregunta del visitante que responde | Patrón de contenido |
|---|---|---|---|
| 0 | Encabezado | ¿Dónde estoy y a dónde puedo ir? | Logo, menú de anclas, selector EN / ES y botón *Probar Gratis* |
| 1 | Hero | ¿Qué es OsoSense? | Carrusel de fotos con eyebrow, titular H1, bajada y botón principal |
| 2 | El impacto de la salinidad | ¿Por qué me debería importar? | Tres datos con ícono y una tarjeta de historia con foto |
| 3 | Protege tu inversión agrícola | ¿Qué gano? | Tres beneficios en un bloque dividido: alertas, ahorro y respaldo sin conexión |
| 4 | Nuestras capacidades | ¿Qué hace la solución? | Foto del sensor con el indicador de CEe y cuatro capacidades en grilla 2 × 2 |
| 5 | Proceso de implementación | ¿Cómo empiezo? | Cuatro pasos numerados alrededor de una foto de campo |
| 6 | Planes a tu medida | ¿Cuánto cuesta? | Tres tarjetas de plan con el plan recomendado destacado |
| 7 | Preguntas frecuentes | ¿Y si…? | Acordeón de cuatro preguntas |
| 8 | Equipo | ¿Quién está detrás? | Tarjetas con los siete integrantes |
| 9 | Llamado a la acción | ¿Qué hago ahora? | Banner con titular y botón *Comenzar ahora* |
| 10 | Pie de página | ¿Dónde encuentro lo demás? | Marca, descripción y tres columnas de enlaces |

<div align="center">
<img src="../assets/landing-page-wireframes/landing-wireframe-desktop-1.png" alt="Wireframe desktop del Landing Page: encabezado, hero e impacto de la salinidad" width="800">
<p><em>Figura 5.56. Wireframe Desktop Web Browser (1/4): encabezado, hero y bloque de impacto de la salinidad.</em></p>
</div>

<div align="center">
<img src="../assets/landing-page-wireframes/landing-wireframe-desktop-2.png" alt="Wireframe desktop del Landing Page: beneficios, capacidades y proceso" width="800">
<p><em>Figura 5.57. Wireframe Desktop Web Browser (2/4): beneficios, capacidades y proceso de implementación.</em></p>
</div>

<div align="center">
<img src="../assets/landing-page-wireframes/landing-wireframe-desktop-3.png" alt="Wireframe desktop del Landing Page: planes y preguntas frecuentes" width="800">
<p><em>Figura 5.58. Wireframe Desktop Web Browser (3/4): planes y preguntas frecuentes.</em></p>
</div>

<div align="center">
<img src="../assets/landing-page-wireframes/landing-wireframe-desktop-4.png" alt="Wireframe desktop del Landing Page: equipo, llamado a la acción y pie de página" width="800">
<p><em>Figura 5.59. Wireframe Desktop Web Browser (4/4): equipo, llamado a la acción y pie de página.</em></p>
</div>

**Principios y elementos de diseño aplicados**

- **Jerarquía:** un único H1 en el hero; cada sección abre con un H2 centrado y una bajada en gris, y dentro de las tarjetas el título pesa más que la descripción. El ojo encuentra primero el titular, luego el dato y al final el detalle.
- **Proximidad y agrupación:** los elementos relacionados comparten tarjeta (ícono, título y texto de cada dato; precio y lista de cada plan) y las secciones se separan con 96 px de aire vertical, de modo que el cambio de tema se percibe sin necesidad de líneas.
- **Alineación y grilla:** contenedor de 1296 px con márgenes de 72 px y columnas que se reparten en 2, 3 o 4 tarjetas según el bloque. El proceso usa una composición simétrica (pasos 01 y 03 a la izquierda, 02 y 04 a la derecha) para que la lectura siga el orden numérico.
- **Contraste y énfasis:** solo un botón por bloque tiene relleno; los secundarios van con contorno. En los planes, el plan *Productor* se destaca con fondo, sombra y la etiqueta *Más Popular*.
- **Repetición:** el mismo botón en píldora con círculo de flecha, las mismas tarjetas redondeadas y el mismo encabezado de sección se repiten en toda la página, lo que reduce la carga de aprendizaje.

**Diseño inclusivo**

- Texto base de 16 px y bajadas de 14 px como mínimo, pensando en la edad del segmento de productores (sección 1.3).
- Objetivos táctiles de al menos 40 px (botones, flechas del carrusel y menú) y separación suficiente entre enlaces del menú móvil.
- Los íconos siempre van acompañados de texto; ningún dato depende solo del color o de una imagen.
- El selector de idioma EN / ES está en el encabezado desde la primera vista, porque el producto se ofrece en en_US y es_419.
- En la implementación, la navegación usa `aria-label`, `aria-labelledby` por sección, `aria-expanded` y `aria-controls` en el menú móvil, `aria-pressed` en el selector de idioma, texto alternativo en las fotos informativas y `alt=""` en las decorativas, y respeta `prefers-reduced-motion`.

**Arquitectura de información**

- **Organización:** esquema por tópicos en secuencia narrativa (problema → beneficio → solución → proceso → precio → dudas → confianza → acción).
- **Etiquetado:** etiquetas de una palabra en el menú, iguales al título de la sección a la que llevan, y verbos de acción en los botones (*Conocer*, *Elegir*, *Comenzar*, *Probar*).
- **Navegación:** menú global de anclas en un encabezado fijo, botón de llamada a la acción siempre visible y un pie de página con navegación secundaria agrupada en Empresa, Soluciones y Ayuda.

**Versión Mobile Web Browser**

En 390 px la estructura se conserva y solo cambia la disposición: el menú se convierte en un botón de hamburguesa junto a *Probar Gratis*, el selector de idioma pasa al menú desplegable, todas las grillas se apilan en una columna, el titular baja de 58 a 30 px, los pasos del proceso se leen en lista vertical debajo de la foto y los planes, el equipo y el pie de página se muestran uno debajo de otro. Los márgenes laterales se reducen a 16 px para ganar ancho útil.

<div align="center">
<img src="../assets/landing-page-wireframes/landing-wireframe-mobile.png" alt="Wireframe mobile del Landing Page en tres tramos" width="800">
<p><em>Figura 5.60. Wireframe Mobile Web Browser (390 px), leído de izquierda a derecha en tres tramos.</em></p>
</div>

### 5.3.2. Landing Page Mock-up

Los mock-ups llevan los wireframes a alta fidelidad con el **Design System** del Landing Page, construido en Figma como estilos reutilizables a partir de los valores de la página implementada:

| Categoría | Tokens |
|---|---|
| Color de acción | Primary/700 `#047857` (botones con texto y etiqueta destacada), Primary/600 `#059669` (íconos, números del proceso y círculos de flecha), Primary/800 `#065F46` (*hover* y presionado) |
| Superficies verdes | Primary/50 `#F0FDF4` (tarjetas destacadas y plan recomendado), Primary/100 `#DCFCE7` (etiquetas) |
| Neutros | Neutral/900 `#111827` (títulos), Neutral/600 `#4B5563` y Neutral/500 `#6B7280` (texto secundario), Neutral/200 `#E5E7EB` (bordes), Neutral/50 `#F9FAFB` (pie de página), blanco |
| Marca | Brand/Forest `#263D29` y Brand/Olive `#64663F`, presentes en el logo |
| Tipografía | Plus Jakarta Sans: Display 58 px ExtraBold, H2 36 px Bold, H3 20 px Bold, H4 18 px Bold, cuerpo 18 / 16 / 14 px Regular, botón 14 px SemiBold, eyebrow 12 px Bold en mayúsculas, precio 36 px ExtraBold |
| Forma | Botones en píldora con círculo de flecha, tarjetas con radio de 20 a 28 px y borde de 1 px, hero y banner con radio de 32 px |
| Fotografía | Paisajes de valles costeros, sensor en campo y trabajo de agrónomos, con una capa verde oscura sobre la foto para asegurar la lectura del texto blanco |

<div align="center">
<img src="../assets/landing-page-mockups/landing-design-system.png" alt="Design System del Landing Page: colores, tipografía y componentes" width="800">
<p><em>Figura 5.61. Design System del Landing Page: estilos de color, escala tipográfica y componentes.</em></p>
</div>

<div align="center">
<img src="../assets/landing-page-mockups/landing-mockup-desktop-1.png" alt="Mock-up desktop del Landing Page: encabezado con logo, hero e impacto" width="800">
<p><em>Figura 5.62. Mock-up Desktop Web Browser (1/4): encabezado con el logo de Oso Terra, hero con fotografía del valle y bloque de impacto.</em></p>
</div>

<div align="center">
<img src="../assets/landing-page-mockups/landing-mockup-desktop-2.png" alt="Mock-up desktop del Landing Page: beneficios, capacidades y proceso" width="800">
<p><em>Figura 5.63. Mock-up Desktop Web Browser (2/4): beneficios, capacidades con el indicador de CEe y proceso de implementación.</em></p>
</div>

<div align="center">
<img src="../assets/landing-page-mockups/landing-mockup-desktop-3.png" alt="Mock-up desktop del Landing Page: planes y preguntas frecuentes" width="800">
<p><em>Figura 5.64. Mock-up Desktop Web Browser (3/4): planes con el plan recomendado destacado y preguntas frecuentes.</em></p>
</div>

<div align="center">
<img src="../assets/landing-page-mockups/landing-mockup-desktop-4.png" alt="Mock-up desktop del Landing Page: equipo, llamado a la acción y pie de página" width="800">
<p><em>Figura 5.65. Mock-up Desktop Web Browser (4/4): equipo, banner de llamado a la acción y pie de página.</em></p>
</div>

**Cómo se aplican los principios en el mock-up**

- **El color guía la acción.** El verde esmeralda se reserva para lo que se puede pulsar o lo que conviene notar (botones, íconos, números de paso, plan recomendado); el resto de la página es blanco y gris, por lo que la mirada va directo a las acciones.
- **La fotografía cuenta la historia.** El hero muestra el valle costero con el sensor instalado; el bloque de impacto contrapone suelo salinizado y cultivo sano; el proceso muestra a agrónomos en campo. Son escenas que el productor reconoce como propias.
- **El dato técnico se vuelve legible.** El indicador *CEe 4.0 dS/m — Nivel de Salinidad* sobre la foto del sensor anticipa lo que el usuario verá en la aplicación, con el número grande y la explicación corta.
- **La marca da confianza.** El logo de Oso Terra aparece en el encabezado fijo y en el pie de página, y la sección de equipo presenta a los siete integrantes.

**Diseño inclusivo en el mock-up**

Los contrastes medidos (WCAG 2.1) son: títulos `#111827` sobre blanco 17,74:1; texto secundario `#4B5563` 7,56:1 y `#6B7280` 4,83:1 sobre blanco; etiquetas `#047857` sobre `#F0FDF4` 5,24:1, todos por encima de AA. Los botones con texto usan Primary/700 `#047857`, con 5,48:1 para el texto blanco; Primary/600 `#059669` (3,77:1) queda solo para íconos y flechas dentro de círculos. Sobre las fotografías, el texto blanco se apoya en una capa verde oscura semitransparente.

**Versión Mobile Web Browser**

El mock-up móvil aplica los mismos estilos con los ajustes de la sección anterior: encabezado compacto con logo, *Probar Gratis* y menú de hamburguesa; hero con titular de 30 px; tarjetas a ancho completo; y planes apilados, con el plan *Productor* igualmente destacado.

<div align="center">
<img src="../assets/landing-page-mockups/landing-mockup-mobile.png" alt="Mock-up mobile del Landing Page en tres tramos" width="800">
<p><em>Figura 5.66. Mock-up Mobile Web Browser (390 px), leído de izquierda a derecha en tres tramos.</em></p>
</div>

Diseño en Figma: [wireframes](https://www.figma.com/design/w8ggl2291TtYEPmhJ70zrq/OsoSense-%E2%80%94-Landing-Page-UI-Design?node-id=1-2&t=zv0k9BZ0KNZ8WH8D-1), [mock-ups](https://www.figma.com/design/w8ggl2291TtYEPmhJ70zrq/OsoSense-%E2%80%94-Landing-Page-UI-Design?node-id=1-3&t=zv0k9BZ0KNZ8WH8D-1) y [Design System](https://www.figma.com/design/w8ggl2291TtYEPmhJ70zrq/OsoSense-%E2%80%94-Landing-Page-UI-Design?node-id=0-1&t=zv0k9BZ0KNZ8WH8D-1) del Landing Page.

## 5.4. Applications UX/UI Design

### 5.4.1. Applications Wireframes

### 5.4.2. Applications Wireflow Diagrams

### 5.4.2. Applications Mock-ups

### 5.4.3. Applications User Flow Diagrams

## 5.5. Applications Prototyping

## 5.6. IoT Device Design
