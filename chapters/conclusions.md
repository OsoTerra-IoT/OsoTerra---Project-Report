<div style="page-break-before: always; break-before: page;"></div>

# Conclusiones

## Conclusiones y recomendaciones

Hasta el TB1, el equipo completó el Lean UX Process, el análisis de competidores y las seis primeras entrevistas de needfinding (tres por segmento), diseñó la solución en los Capítulos IV y V, y publicó la primera versión del Landing Page y de la Web App en el Sprint 1. Esto permite un primer contraste, todavía parcial, entre lo asumido en el Capítulo I y lo observado en el Capítulo II.

Las entrevistas confirman varios de los User Assumptions y User Outcome Assumptions planteados: dos de los tres productores entrevistados no comprenden del todo los resultados de un análisis de suelo, y los tres detectan la salinidad tarde o sin certeza de su causa, confundiéndola con problemas de riego o de otro tipo, lo que respalda la necesidad de un motor de umbrales por cultivo y de alertas en lenguaje simple (Feature Assumptions 2 y 3). También surgió un hallazgo no anticipado en los assumptions originales: uno de los tres productores pidió explícitamente recibir la alerta en el celular y reenviarla por WhatsApp a su familia, y dos de ellos siguen la parcela a distancia desde Lima, por lo que dependen de un familiar o encargado para actuar, necesidad que ya se incorporó como User Story en el Capítulo III.

Del lado de los asesores técnicos, las tres entrevistas confirman el Business Outcome Assumption sobre el costo de desplazamiento como principal restricción de su capacidad de atención, y el User Outcome Assumption sobre la necesidad de sustentar recomendaciones con evidencia histórica. Ninguno de los tres asesores entrevistados usa hoy un sensor de bajo costo para monitorear salinidad, lo que deja abierta —y no confirmada— la hipótesis HS-09 sobre la calibración como mecanismo suficiente para generar confianza en el dispositivo.

En el TB1 varias Feature Assumptions pasaron de enunciado a producto. El Landing Page está publicado en inglés y español (https://osoterra-iot.github.io/OsoTerra---Landing-Page/) y lleva a cada segmento desde los planes hasta el registro en la Web App. La Web App (https://osoterra-iot.github.io/OsoTerra---Web-Application/) muestra a productores y asesores el estado de salinidad de cada parcela frente al umbral de su cultivo (palto, uva de mesa y arándano, con umbrales tomados de fuentes citadas) y permite registrar acciones correctivas, lo que materializa el motor de umbrales por cultivo de HS-02 y el tablero de HS-04. El RESTful API ya expone los endpoints de autenticación de Identity and Access Management. Diseñar estas vistas obligó además a precisar supuestos que en el Capítulo I eran generales, como qué información necesita ver primero un productor para identificar su parcela en riesgo.

Aun así, ningún Hypothesis Statement puede darse por validado ni refutado todavía. Lo construido demuestra que las funcionalidades son factibles, pero no que los segmentos objetivo cambien su comportamiento al usarlas, que es lo que miden los criterios de éxito del Lean UX Canvas. Esa evidencia vendrá de las Validation Interviews (sección 6.3), en las que productores y asesores usarán el Landing Page y la Web App desplegados. Además, la Web App todavía funciona con datos de demostración y no consume el RESTful API, por lo que la experiencia evaluada en el TB1 aún no refleja lecturas reales de un dispositivo.

**Recomendaciones para la siguiente entrega.** Para el AV2 el equipo recomienda: (1) conectar la Web App y la Mobile App con el RESTful API desplegado, para que la validación use datos que pasen por la plataforma; (2) programar con anticipación las entrevistas de validación con al menos tres entrevistados por segmento, dado que el registro de entrevistas de needfinding fue la actividad que más tiempo tomó por depender de la disponibilidad de terceros; (3) grabar los videos de navegación de los prototipos y del Sprint 1, que quedaron pendientes en el TB1; y (4) distribuir de forma más equitativa el trabajo del informe y de los productos, de modo que cada integrante registre commits propios en ambos, tal como se acordó en la sección Student Outcome.

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

Ver la sección [Student Outcome](../outcome.md#student-outcome).

### Anexo B. Informe de participación

**Final Project Participant Performance Report — AV1:** [ver documento](https://docs.google.com/document/d/1cFr2_S4dEEv7AGe631bPAs0QlOgPQmGn/edit?usp=drivesdk&ouid=108953082663085846265&rtpof=true&sd=true)

### Anexo C. Videos de Exposiciones

**Video de Exposición — AV1:** [ver video](https://upcedupe-my.sharepoint.com/:v:/g/personal/u20211g491_upc_edu_pe/IQDVCrvLYWWkT73bHtQrAT8FAbVIPh1q838lp9DUTX9KrDI?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=ihMbhP)
