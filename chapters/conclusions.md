<div style="page-break-before: always; break-before: page;"></div>

# Conclusiones

## Conclusiones y recomendaciones

Al cierre del Sprint 2 (AV2), OsoSense dejó de ser un conjunto de vistas con datos de demostración y pasó a ser una plataforma que recibe, guarda e interpreta lecturas reales. Las conclusiones de esta entrega son las siguientes:

1. **El RESTful API corre en la nube.** Está desplegado en Railway con una base PostgreSQL gestionada (https://osoterra-backend-production.up.railway.app) y publica su documentación OpenAPI, con 52 operaciones agrupadas por bounded context, en Swagger UI. Es el primer producto de OsoSense que funciona en un proveedor cloud y el contrato contra el que se integran las demás piezas (secciones 6.2.2.7 y 6.2.2.8).
2. **La Web App y la Mobile App trabajan con datos reales.** Ambas consumen el API: el productor registra su finca y sus parcelas, asigna el cultivo, vincula el sensor con su código de activación, recibe la alerta cuando la salinidad supera el umbral del cultivo y registra la acción correctiva que la resuelve. Con esto se cumple el flujo que el Sprint 2 Goal fijó como prueba de éxito (sección 6.2.2.6).
3. **Cada usuario ve solo lo que le corresponde.** El API valida al propietario de cada finca y parcela, y el asesor técnico solo lee las fincas de los productores que aceptaron su vínculo; cualquier otro acceso responde `403`. Esto atiende la necesidad del asesor de supervisar a sus clientes sin exponer los datos de otros productores (US13).
4. **Existe la primera versión de la cadena del dispositivo a la nube.** El Edge Service valida las lecturas, compensa la conductividad a 25 °C, las guarda en SQLite y las sincroniza por lotes con el API, también después de una caída de conexión; la Embedded Application lee conductividad, humedad y temperatura en el ESP32 y muestra el nivel de salinidad en el LED RGB. El circuito se armó en Wokwi con las piezas que el equipo compró para el prototipo físico (sección 5.6).
5. **La validación con usuarios está diseñada, pero todavía no se ejecuta.** La sección 6.3.1 define las tareas y los criterios de éxito para cada segmento en el Landing Page, la Web App y la Mobile App. Por eso ningún Hypothesis Statement puede darse aún por validado ni refutado: lo construido muestra que las funcionalidades se pueden implementar, pero los criterios de éxito del Lean UX Canvas miden cambios de comportamiento que solo se observan con usuarios reales.

Las entrevistas de needfinding del Capítulo II siguen siendo la evidencia sobre los segmentos: confirmaron que los productores detectan la salinidad tarde y no siempre entienden un análisis de suelo, que dependen de un familiar o encargado cuando siguen la parcela desde Lima, y que para el asesor el costo de desplazamiento limita cuántas parcelas puede atender. Las alertas por umbral del cultivo, la Mobile App y el inicio del asesor ordenado por prioridad responden a esos hallazgos; las Validation Interviews dirán si los resuelven.

**Recomendaciones para el TB2.**

1. Realizar las Validation Interviews con tres a cinco participantes por segmento, grabarlas en video y completar las secciones 6.3.2 y 6.3.3; con esos resultados, contrastar cada Hypothesis Statement con su criterio de éxito.
2. Armar el prototipo físico con las piezas del circuito de Wokwi y probarlo en una parcela, para comparar sus lecturas con un análisis de laboratorio y obtener evidencia sobre la hipótesis HS-09 de calibración.
3. Configurar Railway para que despliegue desde `develop` una vez integradas por pull request las ramas del Sprint 2, de modo que lo publicado coincida con lo revisado.
4. Generar el APK firmado de la Mobile App y distribuirlo con Firebase App Distribution, para que los participantes de la validación la usen en su propio celular.
5. En el Sprint 3, implementar las User Stories que quedaron fuera del Sprint 2 (suscripción, reportes, calibración y notificación móvil), publicar las versiones finales de todos los productos y repartir el trabajo para que cada integrante registre commits propios en los repositorios, como se acordó en la retrospectiva.

<div style="page-break-before: always; break-before: page;"></div>

# Bibliografía

Las siguientes fuentes sustentan las cifras y afirmaciones citadas en los Capítulos I y II. Se presentan en orden alfabético según el formato APA 7.ª edición.

- Acosta-Rangel, A. M., Li, R., Celis, N., Suarez, D. L., Santiago, L. S., Arpaia, M. L., & Mauk, P. A. (2019). The physiological response of 'Hass' avocado to salinity as influenced by rootstock. *Scientia Horticulturae, 256*, 108629. https://doi.org/10.1016/j.scienta.2019.108629
- Aimituma-Franco, K. M., Llanqui-Ticona, S. E., & Fernández-Rojas, H. (2023). Biorremediación de suelos salinos con enmiendas orgánicas de estiércol de cuy y vacuno, Cusco-Perú. *Revista Amazónica de Ciencias Ambientales y Ecológicas, 2*(1), e388. https://doi.org/10.51252/reacae.v2i1.e388
- Ayers, R. S., & Westcot, D. W. (1985). *Water quality for agriculture* (FAO Irrigation and Drainage Paper 29 Rev. 1). FAO. https://www.fao.org/4/t0234e/t0234e00.htm
- Campoverde, L. (2012). *Evaluación de áreas agrícolas con problemas de salinización para uso potencial en acuicultura en el valle bajo del río Santa, Áncash-Perú* [Tesis de doctorado, Universidad Nacional de Trujillo]. http://dspace.unitru.edu.pe/handle/UNITRU/5928
- Colegio de Ingenieros del Perú, Consejo Departamental de Lima [CIP-CD Lima]. (s.f.). *Acerca del Capítulo*. Capítulo de Ingeniería Agronómica y Zootecnia. https://agronomica.cdlima.org.pe/acerca-del-capitulo/
- Congreso de la República del Perú. (2020). *Proyecto de Ley 7786/2020-CR, que declara de interés nacional la prevención de la salinización del suelo agrícola*.
- Dirección Regional de Agricultura Piura. (2025). *Piura supera las 534 mil toneladas de arroz en la Campaña Agrícola 2024–2025* [Nota de prensa]. https://www.gob.pe/institucion/regionpiura-dra/noticias/1368573-piura-supera-las-534-mil-toneladas-de-arroz-en-la-campana-agricola-2024-2025
- Instituto Nacional de Estadística e Informática [INEI]. (2013). *Resultados definitivos. IV Censo Nacional Agropecuario 2012*. https://proyectos.inei.gob.pe/web/DocumentosPublicos/ResultadosFinalesIVCENAGRO.pdf
- Instituto Nacional de Estadística e Informática [INEI]. (2021). *Pobreza monetaria alcanzó al 30,1 % de la población del país durante el año 2020* [Nota de prensa]. https://m.inei.gob.pe/prensa/noticias/pobreza-monetaria-alcanzo-al-301-de-la-poblacion-del-pais-durante-el-ano-2020-12875/
- Instituto Nacional de Estadística e Informática [INEI]. (2025). *Estadísticas de las tecnologías de información y comunicación en los hogares: Enero-febrero-marzo 2025* [Informe técnico]. https://www.inei.gob.pe/media/MenuRecursivo/boletines/informe-tecnico_tecnologiasdelainformacion_ene_feb_mar2025.pdf
- Instituto Nacional de Estadística e Informática [INEI]. (2026). *Encuesta Nacional Agropecuaria - ENA 2025*. https://www.gob.pe/institucion/inei/informes-publicaciones/4304991-encuesta-nacional-agropecuaria-ena-2025
- Instituto Nacional de Estadística e Informática [INEI]. (s.f.). *Pequeños y medianos productores agropecuarios destinan el 78% del volumen de su producción a la venta* [Nota de prensa, Encuesta Nacional Agropecuaria 2015]. https://m.inei.gob.pe/prensa/noticias/pequenos-y-medianos-productores-agropecuarios-destinan-el-78-del-volumen-de-su-produccion-a-la-venta-9153/
- Instituto Nacional de Innovación Agraria [INIA]. (2024). *Información técnica sobre salinidad de suelos agrícolas*.
- Maas, E. V., & Hoffman, G. J. (1977). Crop salt tolerance: Current assessment. *Journal of the Irrigation and Drainage Division, 103*(2), 115–134. https://doi.org/10.1061/JRCEA4.0001137
- Machado, R. M. A., Bryla, D. R., & Vargas, O. (2014). Effects of salinity induced by ammonium sulfate fertilizer on root and shoot growth of highbush blueberry. *Acta Horticulturae, 1017*, 407–414. https://doi.org/10.17660/ActaHortic.2014.1017.49
- Ministerio de Desarrollo Agrario y Riego [MIDAGRI]. (2026). *Midagri: INIA implementa moderno laboratorio para fortalecer la agricultura en Puno* [Nota de prensa]. https://www.gob.pe/institucion/inia/noticias/1376064-midagri-inia-implementa-moderno-laboratorio-para-fortalecer-la-agricultura-en-puno
- Ministerio de Desarrollo Agrario y Riego [MIDAGRI]. (s.f.). *Suelo*. https://www.midagri.gob.pe/portal/datero/43-sector-agrario/suelo
- Organismo Supervisor de Inversión Privada en Telecomunicaciones [OSIPTEL]. (2026). *Erestel 2025: aumenta a 96 % los hogares peruanos que tienen acceso a internet fijo o móvil* [Nota de prensa]. https://www.gob.pe/institucion/osiptel/noticias/1393824-erestel-2025-aumenta-a-96-los-hogares-peruanos-que-tienen-acceso-a-internet-fijo-o-movil
- Organización de las Naciones Unidas para la Alimentación y la Agricultura [FAO]. (2024). *Global status of salt-affected soils: Main report*. FAO. https://openknowledge.fao.org/handle/20.500.14283/cd3044en
- Quezada, X. (2020). *Evaluación de la pérdida de suelo por salinización en la costa peruana – el caso de los distritos de San Antonio y Mala, departamento de Lima* [Tesis de licenciatura, Pontificia Universidad Católica del Perú]. http://hdl.handle.net/20.500.12404/17864
- Rocha-Yupanqui, R., & Gomero, L. A. (2019). *Métodos para recuperar suelos afectados por la salinidad y/o sodicidad* [Trabajo de investigación de bachiller, Universidad Científica del Sur]. https://repositorio.cientifica.edu.pe/handle/20.500.12805/780
- The Spoon. (2018). *CropX makes soil sensors to measure moisture, gets investment from ICL*. https://thespoon.tech/cropx-makes-soil-sensors-to-measure-moisture-gets-investment-from-icl/
- The Western Producer. (2020). *Independent probes take the measure of the soil*. https://www.producer.com/crops/independent-probes-take-the-measure-of-the-soil/

<div style="page-break-before: always; break-before: page;"></div>

# Anexos

### Anexo A. Estructura para la sección Student Outcome

Ver la sección [Student Outcome](https://github.com/OsoTerra-IoT/OsoTerra---Project-Report/blob/develop/outcome.md#student-outcome).

### Anexo B. Informe de participación

**Final Project Participant Performance Report — AV1:** [ver documento](https://docs.google.com/document/d/1cFr2_S4dEEv7AGe631bPAs0QlOgPQmGn/edit?usp=drivesdk&ouid=108953082663085846265&rtpof=true&sd=true)

**Final Project Participant Performance Report — TB1:** [ver documento](https://docs.google.com/document/d/1j7n73BWaJEBUy44Y54L45U56YjGOs2wfVQAaF9Tb4f4/edit?usp=sharing)

### Anexo C. Videos de Exposiciones

**Video de Exposición — AV1:** [ver video](https://upcedupe-my.sharepoint.com/:v:/g/personal/u20211g491_upc_edu_pe/IQDVCrvLYWWkT73bHtQrAT8FAbVIPh1q838lp9DUTX9KrDI?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=ihMbhP)

**Video de Exposición — TB1:** [ver video](https://upcedupe-my.sharepoint.com/:v:/g/personal/u20211g491_upc_edu_pe/IQCuJlB6UOl2Q7WilSEdSIDMAQamml4g5y2GbhekkEvJ1cc?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=Vaz413)
