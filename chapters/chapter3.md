# Capítulo III: Requirements Specification

## 3.1. User Stories

## 3.2. Impact Mapping

En esta sección se presenta el Impact Mapping de OsoSense, el cual permite alinear los objetivos estratégicos del proyecto con las funcionalidades técnicas desarrolladas. Siguiendo la metodología de cinco niveles, cada mapa nace de un Objetivo de Negocio (Why), identifica a los actores clave (Who), define el impacto o cambio de comportamiento necesario (How), establece los entregables técnicos (What) y los desglosa en Historias de Usuario (User Stories).

Se han desarrollado tres mapas de impacto correspondientes a los tres objetivos principales del producto:

#### Impact Map 1: Adopción Tecnológica y Monitoreo Continuo

**Business Goal 1 (WHY):** Lograr la adopción activa de la plataforma OsoSense en 50 parcelas agrícolas en la costa norte del Perú durante los primeros seis meses tras el lanzamiento, validando la viabilidad del monitoreo continuo.

*   **Persona (WHO): Diego Ramos (Productor)**
    *   **Impact (HOW):** Reducir la incertidumbre y monitorear el suelo a distancia, abandonando las decisiones empíricas y gastos a ciegas.
    *   **Deliverables (WHAT):** Dispositivo IoT de campo con servicio de borde.
        *   *User Story:* Como productor agrícola, quiero que el dispositivo lea automáticamente la conductividad eléctrica y humedad para no tener que medirlas manualmente.
        *   *User Story:* Como productor agrícola, quiero que los datos se guarden localmente cuando no hay internet y se sincronicen después para no perder mi historial.

*   **Persona (WHO): María Fernanda Salazar (Asesora Técnica)**
    *   **Impact (HOW):** Agilizar la consulta remota del estado de las parcelas de sus clientes para recomendar el uso de la plataforma.
    *   **Deliverables (WHAT):** Dashboard móvil simplificado.
        *   *User Story:* Como asesora técnica, quiero ver el estado actual de la parcela desde mi celular para saber si debo agendar una visita urgente a mi cliente.

Figura. *Impact Map 1 - Adopción Tecnológica y Monitoreo Continuo*

![](https://i.imgur.com/AbJjYJO.png)

<p>

#### Impact Map 2: Prevención y Reacción Temprana

**Business Goal 2 (WHY):** Lograr que el 80% de los productores ejecuten una acción correctiva dentro de las 48 horas posteriores a la recepción de una alerta de salinidad alta, reduciendo la dependencia de síntomas visuales tardíos.

*   **Persona (WHO): Diego Ramos (Productor)**
    *   **Impact (HOW):** Reaccionar de manera preventiva ante niveles críticos de salinidad antes de que el cultivo sufra daño físico visible.
    *   **Deliverables (WHAT):** Sistema de notificaciones móviles.
        *   *User Story:* Como productor agrícola, quiero recibir notificaciones push de severidad alta para enterarme de inmediato si mi cultivo está en peligro.
    *   **Deliverables (WHAT):** Motor de umbrales personalizados por cultivo.
        *   *User Story:* Como productor agrícola, quiero ver el estado de mi suelo con un sistema de semáforos (Riesgo Alto/Medio/Bajo) para entender fácilmente el nivel de urgencia.
        *   *User Story:* Como productor agrícola, quiero registrar el tipo de cultivo de mi parcela para que las alertas de tolerancia a la salinidad sean precisas.

Figura. *Impact Map 2 - Prevención y Reacción Temprana.*

![](https://i.imgur.com/QOYvKYP.png)

<p>

#### Impact Map 3: Escalabilidad y Eficiencia Operativa

**Business Goal 3 (WHY):** Lograr que el 90% de los asesores técnicos gestionen activamente al menos 5 parcelas en paralelo, reduciendo sus visitas físicas de diagnóstico a ciegas en un 30% durante el primer trimestre.

*   **Persona (WHO): María Fernanda Salazar (Asesora Técnica)**
    *   **Impact (HOW):** Supervisar un mayor volumen de parcelas de forma remota y sustentar sus recomendaciones con datos irrefutables.
    *   **Deliverables (WHAT):** Tablero administrativo multiparcela.
        *   *User Story:* Como asesora técnica, quiero ver una lista de todos mis clientes ordenada por nivel de alerta para priorizar mis visitas de la semana.
    *   **Deliverables (WHAT):** Módulo generador de reportes.
        *   *User Story:* Como asesora técnica, quiero visualizar gráficos de tendencia histórica de salinidad para analizar si el problema está empeorando con el tiempo.
        *   *User Story:* Como asesora técnica, quiero exportar reportes de diagnóstico en PDF para enviarlos a los productores y justificar mis recomendaciones de tratamiento.

Figura. *Impact Map 3 - Escalabilidad y Eficiencia Operativa.*

![](https://i.imgur.com/qo7G1Bf.png)

## 3.3. Product Backlog
