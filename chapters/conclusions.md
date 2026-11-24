<div style="page-break-before: always; break-before: page;"></div>

# Conclusiones

## Conclusiones y recomendaciones

Al cierre del Sprint 3 (TB2), OsoSense es una solución IoT completa en su primera versión: un dispositivo que mide la conductividad eléctrica, la humedad y la temperatura del suelo, un Edge Service que valida, compensa y sincroniza las lecturas, un RESTful API que las interpreta según el cultivo y genera alertas, y una Web App y una Mobile App que permiten actuar sobre ellas. Todos los productos cerraron el proyecto con la versión 0.4.0 (sección 6.2.3.8).

**Resultados frente al Problem Statement.** El Problem Statement (sección 1.2.2.1) planteó que el pequeño y mediano productor no cuenta con un monitoreo continuo, asequible e interpretable de la salinidad, y que el asesor técnico necesita sustentar sus recomendaciones con datos. La solución construida atiende las dos necesidades: el productor ve el estado de cada parcela con el nivel de salinidad de su cultivo, recibe alertas con qué hacer y registra la acción que tomó; el asesor supervisa las parcelas de los productores que aceptaron su vínculo, las compara, calibra el sensor con un análisis de laboratorio y entrega reportes en PDF. Lo que todavía no se pudo medir es el criterio de éxito del Problem Statement: que los productores consulten el estado de sus parcelas de forma recurrente y ejecuten acciones a partir de las alertas. Eso solo se observa con un piloto en campo, que queda como primer paso del roadmap.

**Assumptions frente al comportamiento observado.** Las entrevistas de needfinding (Capítulo II) y las seis sesiones de validación (sección 6.3) confirmaron varias creencias del Lean UX Process (sección 1.2.2.2) y matizaron otras:

- *Confirmado:* los productores no interpretan con facilidad la conductividad en dS/m (User Assumption 3). En las sesiones, el porcentaje del umbral y las siglas de conductividad costaron al inicio (hallazgos 11 y 12), por lo que el Sprint 3 agregó la lectura en dS/m junto al umbral y una acción recomendada en palabras simples.
- *Confirmado:* el asesor técnico necesita datos más detallados para sustentar sus recomendaciones (User Assumption 4). El asesor de la entrevista 5 pidió la CE del agua de riego y la lámina aplicada (hallazgo 14).
- *Confirmado:* la confianza es una barrera de adopción (User Assumption 5). Las cifras del Landing Page sin fuente y un umbral de ejemplo alto para palto, uva y arándano restaron credibilidad (hallazgos 15 y 16); el Sprint 3 citó las fuentes y aclaró que el umbral se ajusta a cada cultivo.
- *Por confirmar:* que el teléfono móvil es el medio principal de consulta (User Assumption 2). Las tareas de la Mobile App no se evaluaron en ninguna sesión de validación.
- *Por confirmar:* las Business Outcome Assumptions de conversión, retención y disposición de pago. No hubo usuarios reales en un periodo suficiente para medirlas.

**Hypothesis Statements frente a sus criterios de éxito.** La tabla contrasta cada Hypothesis Statement (sección 1.2.2.3) con la evidencia que se obtuvo. *Validada en prueba técnica* indica que el criterio se cumplió en pruebas automatizadas o de punta a punta, sin usuarios; *validada parcialmente* indica que hubo evidencia con participantes, pero en pocas sesiones o con ayuda del entrevistador.

| Hipótesis | Criterio de éxito | Evidencia | Resultado |
|---|---|---|---|
| HS-01. Dispositivo IoT de campo | Los usuarios piloto consultan las lecturas del dispositivo de forma recurrente. | El firmware lee conductividad, humedad y temperatura y las envía al Edge Service (secciones 5.6 y 6.2.2); no hubo piloto en campo. | Sin evidencia suficiente |
| HS-02. Umbrales por cultivo | Las alertas corresponden a la tolerancia de cada cultivo en escenarios de prueba. | Escenarios de Cucumber de US31 y pruebas de integración con cultivos distintos (sección 6.2.2.5); en la entrevista 3 el participante reconoció la parcela en riesgo por su color. | Validada en prueba técnica |
| HS-03. Notificaciones por severidad | El productor identifica la alerta crítica y elige una acción correctiva sin explicación adicional. | En la entrevista 3 el participante identificó la alerta y la atendió (P-T3); los participantes pidieron recibir las alertas críticas como mensaje (hallazgo 17). La acción recomendada se agregó en el Sprint 3 y no se probó con usuarios. | Validada parcialmente |
| HS-04. Histórico y tendencia | Los usuarios explican si el suelo mejora, empeora o se mantiene a partir de la visualización. | La Web App y la Mobile App muestran el histórico y la tendencia; las tareas que los usan no se evaluaron en las sesiones. | Sin evidencia suficiente |
| HS-05. Gestión de fincas, parcelas y cultivos | Cada dispositivo se vincula con una finca, una parcela y un cultivo en la prueba funcional. | `MainFlowIntegrationTest` recorre el flujo completo; en la entrevista 3 el registro de la parcela se completó con ayuda (hallazgo 10). | Validada en prueba técnica |
| HS-06. Tablero multiparcela | El asesor identifica las parcelas prioritarias sin revisar cada una. | En la entrevista 5 el asesor decidió qué parcela visitar primero desde el inicio (A-T5). | Validada parcialmente |
| HS-07. Reportes exportables | Los asesores generan un reporte con lecturas, tendencia y recomendación. | La Web App genera el reporte en PDF y lo guarda en la plataforma (sección 6.2.3.6); no se evaluó con asesores. | Sin evidencia suficiente |
| HS-08. Servicio de borde | Las lecturas sin conexión se conservan y se sincronizan al volver la conectividad. | Prueba de punta a punta del 22 de octubre y pruebas del Edge Service (sección 6.2.2.6). | Validada en prueba técnica |
| HS-09. Calibración con laboratorio | Los usuarios revisan la comparación y declaran confiable la lectura. | La calibración guarda el factor en el dispositivo (sección 6.2.3.5); la comparación de la entrevista 5 se completó con ayuda y no hubo un análisis de laboratorio con el prototipo. | Sin evidencia suficiente |
| HS-10. Información meteorológica | Los usuarios relacionan un cambio en las lecturas con un evento meteorológico. | US42 quedó en el Product Backlog y no se implementó. | No evaluada |
| HS-11. Landing Page por segmento | Los visitantes identifican la propuesta de valor de su rol y se registran o piden contacto. | En las cuatro sesiones con tareas se entendió la propuesta y el precio (P-T1 y A-T1), dos de ellas con ayuda; la conversión no se midió. | Validada parcialmente |
| HS-12. Plan gratuito | Los productores prueban la solución sin pago recurrente y completan el registro y el monitoreo. | El plan Free permite dos parcelas y el límite se controla en el API (sección 6.2.3.7); no se midió la activación con productores reales. | Validada parcialmente |

En resumen, las hipótesis de funcionalidad (HS-02, HS-05 y HS-08) se cumplen en pruebas técnicas, y las de valor para el usuario tienen evidencia parcial o todavía no tienen evidencia, porque la validación se hizo con seis sesiones remotas, sobre datos de demostración y sin la Mobile App. Las calificaciones de 4 y 5 sobre 5 que dieron los participantes de las entrevistas 1, 3 y 5 sugieren una buena recepción, pero no reemplazan la medición de los criterios de éxito.

**Recomendaciones y roadmap.** Los siguientes pasos para los productos digitales de OsoSense, en orden de prioridad:

1. **Piloto en campo (corto plazo).** Instalar el prototipo físico en dos o tres parcelas de la costa norte durante una campaña, comparar sus lecturas con un análisis de laboratorio y medir cuántas veces los productores consultan la plataforma y qué acciones registran. Este piloto da la evidencia que falta para HS-01, HS-04, HS-07 y HS-09 y para los criterios de éxito del Problem Statement.
2. **Avisos fuera de la aplicación (corto plazo).** Implementar la notificación móvil de alertas críticas (US32) y un resumen diario para el asesor, como pidieron los participantes (hallazgo 17), y validar la Mobile App con usuarios en su propio teléfono.
3. **Datos del asesor (mediano plazo).** Agregar al detalle de la parcela la CE del agua de riego y la lámina aplicada (hallazgo 14), la comparación de parcelas por fechas (hallazgo 18) y un mapa con el estado de todas las parcelas (hallazgo 19).
4. **Funcionalidades pendientes del backlog (mediano plazo).** Integrar la información meteorológica (US42, HS-10), invitar a un familiar a consultar la parcela (US14) y devolver los mensajes del API en el idioma del usuario (TS05).
5. **Modelo de negocio (mediano plazo).** Activar el cobro de los planes con Stripe, medir la conversión del Landing Page y probar el canal de asesores y cooperativas como vía de adopción (Business Assumptions 4 y 5).
6. **Operación (continuo).** Mantener el RESTful API desplegado desde `develop` con monitoreo de disponibilidad, firmar el APK con una clave de release para su publicación en Google Play y exigir que todo cambio pase por un pull request revisado por otro integrante.

<div style="page-break-before: always; break-before: page;"></div>

# Bibliografía

Las siguientes fuentes sustentan las cifras, las afirmaciones y los marcos de trabajo citados en el informe. Se presentan en orden alfabético según el formato APA 7.ª edición.

- Acosta-Rangel, A. M., Li, R., Celis, N., Suarez, D. L., Santiago, L. S., Arpaia, M. L., & Mauk, P. A. (2019). The physiological response of 'Hass' avocado to salinity as influenced by rootstock. *Scientia Horticulturae, 256*, 108629. https://doi.org/10.1016/j.scienta.2019.108629
- Aimituma-Franco, K. M., Llanqui-Ticona, S. E., & Fernández-Rojas, H. (2023). Biorremediación de suelos salinos con enmiendas orgánicas de estiércol de cuy y vacuno, Cusco-Perú. *Revista Amazónica de Ciencias Ambientales y Ecológicas, 2*(1), e388. https://doi.org/10.51252/reacae.v2i1.e388
- Ayers, R. S., & Westcot, D. W. (1985). *Water quality for agriculture* (FAO Irrigation and Drainage Paper 29 Rev. 1). FAO. https://www.fao.org/4/t0234e/t0234e00.htm
- Brown, S. (s.f.). *The C4 model for visualising software architecture*. https://c4model.com/
- Campoverde, L. (2012). *Evaluación de áreas agrícolas con problemas de salinización para uso potencial en acuicultura en el valle bajo del río Santa, Áncash-Perú* [Tesis de doctorado, Universidad Nacional de Trujillo]. http://dspace.unitru.edu.pe/handle/UNITRU/5928
- Colegio de Ingenieros del Perú, Consejo Departamental de Lima [CIP-CD Lima]. (s.f.). *Acerca del Capítulo*. Capítulo de Ingeniería Agronómica y Zootecnia. https://agronomica.cdlima.org.pe/acerca-del-capitulo/
- Congreso de la República del Perú. (2020). *Proyecto de Ley 7786/2020-CR, que declara de interés nacional la prevención de la salinización del suelo agrícola*.
- Dirección Regional de Agricultura Piura. (2025). *Piura supera las 534 mil toneladas de arroz en la Campaña Agrícola 2024–2025* [Nota de prensa]. https://www.gob.pe/institucion/regionpiura-dra/noticias/1368573-piura-supera-las-534-mil-toneladas-de-arroz-en-la-campana-agricola-2024-2025
- Evans, E. (2003). *Domain-driven design: Tackling complexity in the heart of software*. Addison-Wesley.
- Gothelf, J., & Seiden, J. (2021). *Lean UX: Designing great products with agile teams* (3.ª ed.). O'Reilly Media.
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
- Nielsen, J. (1994). *10 usability heuristics for user interface design*. Nielsen Norman Group. https://www.nngroup.com/articles/ten-usability-heuristics/
- Organismo Supervisor de Inversión Privada en Telecomunicaciones [OSIPTEL]. (2026). *Erestel 2025: aumenta a 96 % los hogares peruanos que tienen acceso a internet fijo o móvil* [Nota de prensa]. https://www.gob.pe/institucion/osiptel/noticias/1393824-erestel-2025-aumenta-a-96-los-hogares-peruanos-que-tienen-acceso-a-internet-fijo-o-movil
- Organización de las Naciones Unidas para la Alimentación y la Agricultura [FAO]. (2024). *Global status of salt-affected soils: Main report*. FAO. https://openknowledge.fao.org/handle/20.500.14283/cd3044en
- Quezada, X. (2020). *Evaluación de la pérdida de suelo por salinización en la costa peruana – el caso de los distritos de San Antonio y Mala, departamento de Lima* [Tesis de licenciatura, Pontificia Universidad Católica del Perú]. http://hdl.handle.net/20.500.12404/17864
- Rocha-Yupanqui, R., & Gomero, L. A. (2019). *Métodos para recuperar suelos afectados por la salinidad y/o sodicidad* [Trabajo de investigación de bachiller, Universidad Científica del Sur]. https://repositorio.cientifica.edu.pe/handle/20.500.12805/780
- Schwaber, K., & Sutherland, J. (2020). *The Scrum guide*. https://scrumguides.org/scrum-guide.html
- The Spoon. (2018). *CropX makes soil sensors to measure moisture, gets investment from ICL*. https://thespoon.tech/cropx-makes-soil-sensors-to-measure-moisture-gets-investment-from-icl/
- The Western Producer. (2020). *Independent probes take the measure of the soil*. https://www.producer.com/crops/independent-probes-take-the-measure-of-the-soil/
- World Wide Web Consortium [W3C]. (2018). *Web Content Accessibility Guidelines (WCAG) 2.1*. https://www.w3.org/TR/WCAG21/

<div style="page-break-before: always; break-before: page;"></div>

# Anexos

### Anexo A. Estructura para la sección Student Outcome

Ver la sección Student Outcome (<https://github.com/OsoTerra-IoT/OsoTerra---Project-Report/blob/develop/outcome.md#student-outcome>).

### Anexo B. Informe de participación

**Final Project Participant Performance Report — AV1:** <https://docs.google.com/document/d/1cFr2_S4dEEv7AGe631bPAs0QlOgPQmGn/edit>

**Final Project Participant Performance Report — TB1:** <https://docs.google.com/document/d/1j7n73BWaJEBUy44Y54L45U56YjGOs2wfVQAaF9Tb4f4/edit>

### Anexo C. Videos de Exposiciones

**Video de Exposición — AV1:** <https://upcedupe-my.sharepoint.com/:v:/g/personal/u20211g491_upc_edu_pe/IQDVCrvLYWWkT73bHtQrAT8FAbVIPh1q838lp9DUTX9KrDI>

**Video de Exposición — TB1:** <https://upcedupe-my.sharepoint.com/:v:/g/personal/u20211g491_upc_edu_pe/IQCuJlB6UOl2Q7WilSEdSIDMAQamml4g5y2GbhekkEvJ1cc>
