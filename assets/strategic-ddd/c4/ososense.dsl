workspace "OsoSense" "C4 Model de OsoSense (Oso Terra)" {

    !identifiers hierarchical

    model {
        visitor = person "Visitor" "Visitante del Landing Page que consulta la propuesta y elige un plan."
        producer = person "Agricultural Producer" "Registra parcelas, consulta el estado del suelo y atiende alertas."
        advisor = person "Agronomist Advisor" "Supervisa parcelas vinculadas, calibra dispositivos y genera reportes."

        sensors = softwareSystem "Soil Sensing Hardware" "Placa ESP32 con sondas de conductividad eléctrica, humedad y temperatura del suelo, LED de estado y botón." "Hardware"
        stripe = softwareSystem "Stripe" "Procesa las transacciones de suscripción." "External"
        google = softwareSystem "Google OAuth2" "Verifica el ID token del inicio de sesión federado." "External"
        notify = softwareSystem "Push / Email provider" "Entrega notificaciones push y correos transaccionales." "External"
        weather = softwareSystem "Weather Service API" "Provee precipitación y temperatura por coordenadas." "External"
        lab = softwareSystem "Soil Laboratory" "Laboratorio acreditado que emite el análisis de ECe de referencia." "External"

        ososense = softwareSystem "OsoSense" "Captura, sincroniza e interpreta la salinidad del suelo según el cultivo; gestiona parcelas, alertas, reportes y suscripciones." {
            landing = container "Landing Page" "Sitio estático que presenta el modelo de negocio y los planes." "HTML5, CSS3, JavaScript"
            web = container "Web Application" "Interfaz responsive de gestión, tableros y reportes (asesor y productor)." "Angular, TypeScript, Angular Material"
            mobile = container "Mobile Application" "App nativa de consulta en campo y recepción de alertas (productor)." "Kotlin / Android"
            api = container "RESTful API" "Monolito modular que expone los seis bounded contexts." "Spring Boot, Java, Spring Data JPA"
            db = container "Platform Database" "Cuentas, suscripciones, fincas, parcelas, lecturas y alertas." "PostgreSQL" "Database"
            edge = container "Edge Service" "Valida, compensa a 25 °C y sincroniza las lecturas; reenvía los lotes pendientes al recuperar la conexión." "Flask, Python, Peewee ORM"
            edgeDb = container "Edge Local Database" "Persiste las lecturas pendientes de sincronización." "SQLite" "Database"
            embedded = container "Embedded Application" "Firmware que muestrea los sensores, controla el LED y el botón y envía las lecturas." "C++ / Arduino Framework"
        }

        visitor -> ososense.landing "Consulta la propuesta y los planes" "HTTPS"
        producer -> ososense.web "Gestiona parcelas y atiende alertas" "HTTPS"
        producer -> ososense.mobile "Consulta lecturas y recibe alertas en campo"
        producer -> sensors "Instala el dispositivo en la parcela"
        advisor -> ososense.web "Supervisa parcelas, calibra y genera reportes" "HTTPS"
        advisor -> lab "Envía muestras de suelo"

        ososense.landing -> ososense.web "Redirige mediante call-to-action" "HTTPS"
        ososense.web -> ososense.api "Consume" "JSON/HTTPS"
        ososense.mobile -> ososense.api "Consume" "JSON/HTTPS"
        ososense.api -> ososense.db "Lee y escribe" "JDBC"
        ososense.embedded -> sensors "Lee CE, humedad y temperatura; enciende el LED" "GPIO / ADC / 1-Wire"
        ososense.embedded -> ososense.edge "Envía lecturas" "JSON/HTTP sobre WiFi"
        ososense.edge -> ososense.edgeDb "Lee y escribe" "SQL"
        ososense.edge -> ososense.api "Sincroniza lotes de lecturas" "JSON/HTTPS"
        ososense.api -> ososense.edge "Envía factor de calibración y umbrales" "JSON/HTTPS"
        ososense.api -> stripe "Procesa pagos" "JSON/HTTPS"
        ososense.api -> google "Verifica el ID token" "HTTPS"
        ososense.api -> notify "Envía notificaciones" "JSON/HTTPS, SMTP"
        ososense.api -> weather "Consulta el clima" "JSON/HTTPS"

        production = deploymentEnvironment "Production" {
            deploymentNode "Parcela agrícola" {
                deploymentNode "ESP32" "Soil Sensing Hardware" {
                    containerInstance ososense.embedded
                }
                deploymentNode "Gateway local" "Raspberry Pi / PC" {
                    containerInstance ososense.edge
                    containerInstance ososense.edgeDb
                }
            }
            deploymentNode "Dispositivos del usuario" {
                deploymentNode "Navegador web" {
                    containerInstance ososense.landing
                    containerInstance ososense.web
                }
                deploymentNode "Dispositivo Android" {
                    containerInstance ososense.mobile
                }
            }
            deploymentNode "Proveedor cloud" {
                deploymentNode "Application Server" "JVM" {
                    containerInstance ososense.api
                }
                deploymentNode "Database Server" {
                    containerInstance ososense.db
                }
            }
        }
    }

    views {
        systemLandscape "Landscape" {
            include *
            autoLayout lr
        }
        systemContext ososense "Context" {
            include *
            autoLayout lr
        }
        container ososense "Containers" {
            include *
            exclude "producer -> sensors"
            autoLayout tb 300 200
        }
        deployment ososense production "Deployment" {
            include *
            autoLayout lr 300 300
        }

        styles {
            element "Element" {
                color #ffffff
            }
            element "Person" {
                background #08427b
                shape Person
            }
            element "Software System" {
                background #1168bd
            }
            element "Container" {
                background #438dd5
            }
            element "Database" {
                shape Cylinder
            }
            element "External" {
                background #999999
            }
            element "Deployment Node" {
                color #1e1e1e
            }
            element "Hardware" {
                background #6b6b6b
                shape Box
            }
        }
    }
}
