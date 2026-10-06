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
            api = container "Modular Monolith" "Backend de negocio: implementa los seis bounded contexts como módulos de un único despliegue y atiende a los clientes y al Edge Service." "Spring Boot, Java, Spring Data JPA" {
                iamModule = component "Identity and Access Management" "Módulo del monolito: cuentas y vinculaciones asesor-productor." "Módulo" "Module"
                billingModule = component "Subscription and Billing" "Módulo del monolito: planes, suscripciones y cupo de parcelas." "Módulo" "Module"
                farmModule = component "Farm Management" "Módulo del monolito: fincas, parcelas, cultivos y dispositivos." "Módulo" "Module"
                soilModule = component "Soil Monitoring" "Módulo del monolito: ingesta y consulta de lecturas del suelo." "Módulo" "Module"
                alertModule = component "Salinity Alerting" "Módulo del monolito: evaluación de umbrales y alertas." "Módulo" "Module"
                analyticsModule = component "Analytics and Reporting" "Módulo del monolito: tendencias, tableros y reportes." "Módulo" "Module"
                authController = component "Authentication Controller" "Endpoints de registro, autenticación y recuperación de contraseña." "Spring MVC"
                googleController = component "Google OAuth Controller" "Recibe el ID Token del inicio de sesión federado." "Spring MVC"
                advisoryController = component "Advisory Link Controller" "Endpoints de vinculación asesor-productor." "Spring MVC"
                userCmd = component "User Command Handlers" "Orquestación de casos de uso de identidad." "Spring Service"
                advisoryCmd = component "Advisory Link Command Handlers" "Orquestación del ciclo de vinculación." "Spring Service"
                userQuery = component "User Query Service" "Resolución de consultas de cuentas y vinculaciones." "Spring Service"
                iamDomain = component "Identity Domain Model" "UserAccount, AdvisoryLink y sus invariantes." "POJO"
                emailAcl = component "Email Notification ACL" "Traduce el envío de correo al proveedor SMTP." "Spring Mail"
                googleAcl = component "Google Token Verifier ACL" "Verifica el ID Token emitido por Google." "Adapter"
                jwtService = component "JWT Token Service" "Emisión y validación de tokens de acceso." "Spring Security"
                hashingService = component "Password Hashing Service" "Hasheo de contraseñas." "BCrypt"
                userRepo = component "User Account Repository" "Persistencia del agregado UserAccount." "Spring Data JPA"
                linkRepo = component "Advisory Link Repository" "Persistencia del agregado AdvisoryLink." "Spring Data JPA"
                subController = component "Subscription Controller" "Selección de plan, estado, renovación y cancelación." "Spring MVC"
                planController = component "Subscription Plan Controller" "Catálogo público de planes." "Spring MVC"
                webhookController = component "Payment Webhook Controller" "Recibe confirmaciones asíncronas de Stripe." "Spring MVC"
                expirationScheduler = component "Expiration Scheduler" "Evalúa periodos vencidos y dispara la suspensión." "Spring Scheduling"
                subCmd = component "Subscription Command Handlers" "Contratación, pago, renovación y cancelación." "Spring Service"
                quotaCmd = component "Quota Command Handlers" "Consumo y liberación de cupo de parcelas." "Spring Service"
                subQuery = component "Subscription Query Service" "Resolución de consultas de estado y catálogo." "Spring Service"
                billingDomain = component "Billing Domain Model" "Subscription, PlotQuota, SubscriptionPlan." "POJO"
                stripeAcl = component "Stripe Payment Gateway ACL" "Traduce el cobro hacia Stripe." "Adapter"
                subRepo = component "Subscription Repository" "Persistencia del agregado Subscription." "Spring Data JPA"
                farmController = component "Farm Controller" "Registro, consulta, actualización y baja de fincas." "Spring MVC"
                plotController = component "Plot Controller" "Gestión de parcelas y asignación de cultivo." "Spring MVC"
                cropController = component "Crop Controller" "Consulta del catálogo de cultivos y umbrales." "Spring MVC"
                deviceController = component "Device Controller" "Registro, vinculación y estado de dispositivos." "Spring MVC"
                farmCmd = component "Farm Command Handlers" "Orquestación de alta de fincas y parcelas." "Spring Service"
                farmQuery = component "Farm Query Service" "Resolución de consultas de fincas y parcelas." "Spring Service"
                cropQuery = component "Crop Query Service" "Resolución de consultas del catálogo de cultivos." "Spring Service"
                deviceCmd = component "Device Command Handlers" "Orquestación de alta y vinculación de dispositivos." "Spring Service"
                plotRegistration = component "Plot Registration Service" "Coordina el registro de parcela verificando cupo." "Domain Service"
                quotaAcl = component "Subscription Quota ACL" "Verifica el cupo hacia Subscription and Billing." "Adapter"
                farmDomain = component "Farm Domain Model" "Farm, Plot, Crop, Device y sus invariantes." "POJO"
                farmRepo = component "Farm Repository" "Persistencia del agregado Farm." "Spring Data JPA"
                cropRepo = component "Crop Repository" "Persistencia del catálogo de cultivos." "Spring Data JPA"
                deviceRepo = component "Device Repository" "Persistencia del agregado Device." "Spring Data JPA"
                readingController = component "Soil Reading Controller" "Consulta de última lectura y series." "Spring MVC"
                calibrationController = component "Calibration Controller" "Registro y consulta de calibraciones." "Spring MVC"
                telemetryController = component "Telemetry Ingestion Controller" "Open Host Service de ingesta de lotes." "Spring MVC"
                readingQuery = component "Soil Reading Query Service" "Resolución de consultas de última lectura y series." "Spring Service"
                calibrationHandler = component "Register Calibration Handler" "Calcula y persiste el factor de corrección." "Spring Service"
                staleHandler = component "Stale Device Detection Handler" "Evalúa dispositivos sin lecturas recientes." "Spring Scheduling"
                ingestHandler = component "Ingest Batch Handler" "Descarta duplicados y persiste lecturas nuevas." "Spring Service"
                soilDomain = component "Monitoring Domain Model" "SoilReading, ReadingBatch, CalibrationRecord." "POJO"
                readingRepo = component "Soil Reading Repository" "Persistencia del agregado SoilReading." "Spring Data JPA"
                batchRepo = component "Reading Batch Repository" "Persistencia del agregado ReadingBatch." "Spring Data JPA"
                readingPublisher = component "Soil Reading Event Publisher" "Publica SoilReadingStoredEvent." "Spring Events"
                prefController = component "Notification Preference Controller" "Consulta y actualización de preferencias." "Spring MVC"
                alertController = component "Salinity Alert Controller" "Centro de notificaciones, reconocimiento y acción correctiva." "Spring MVC"
                readingConsumer = component "Soil Reading Event Consumer" "Consume SoilReadingStoredEvent." "Spring Events"
                evaluateHandler = component "Evaluate Reading Handler" "Orquesta la evaluación de una lectura." "Spring Service"
                alertQuery = component "Alert Query Service" "Resuelve consultas del centro de notificaciones." "Spring Service"
                alertCmd = component "Alert Command Handlers" "Reconocimiento y acción correctiva." "Spring Service"
                alertGenerated = component "Alert Generated Event Handler" "Determina destinatarios y despacha." "Spring Service"
                thresholdService = component "Threshold Evaluation Service" "Determina exceso y nivel de severidad." "Domain Service"
                cropThresholdAcl = component "Crop Threshold ACL" "Consulta el umbral hacia Farm Management." "Adapter"
                prefRepo = component "Notification Preference Repository" "Persistencia de preferencias." "Spring Data JPA"
                alertRepo = component "Salinity Alert Repository" "Persistencia del agregado SalinityAlert." "Spring Data JPA"
                pushAcl = component "Push Notification ACL" "Traduce el despacho hacia el proveedor push." "Adapter"
                alertDomain = component "Alerting Domain Model" "SalinityAlert, CorrectiveAction." "POJO"
                advisoryAcl = component "Advisory Link ACL" "Consulta asesores hacia Identity and Access Management." "Adapter"
                trendController = component "Salinity Trend Controller" "Consulta de tendencia por parcela y periodo." "Spring MVC"
                dashboardController = component "Dashboard Controller" "Tablero del productor y multiparcela del asesor." "Spring MVC"
                reportController = component "Plot Report Controller" "Generación y exportación de reportes." "Spring MVC"
                comparisonController = component "Plot Comparison Controller" "Comparación entre parcelas." "Spring MVC"
                computeTrend = component "Compute Trend Handler" "Orquesta el cálculo de tendencia." "Spring Service"
                farmerDashboard = component "Farmer Dashboard Query" "Resuelve el tablero del productor." "Spring Service"
                generateReport = component "Generate Report Handler" "Compone el reporte de parcela." "Spring Service"
                multiDashboard = component "Multi-Plot Dashboard Query" "Resuelve el tablero del asesor." "Spring Service"
                exportReport = component "Export Report Handler" "Delega la exportación al formato solicitado." "Spring Service"
                trendService = component "Trend Computation Service" "Regresión lineal sobre la serie de lecturas." "Domain Service"
                trendRepo = component "Salinity Trend Repository" "Persistencia de tendencias calculadas." "Spring Data JPA"
                analyticsDomain = component "Analytics Domain Model" "SalinityTrend, PlotReport." "POJO"
                reportRepo = component "Plot Report Repository" "Persistencia de reportes generados." "Spring Data JPA"
                seriesAcl = component "Soil Reading Series ACL" "Consulta series hacia Soil Monitoring." "Adapter"
                plotStructureAcl = component "Plot Structure ACL" "Consulta estructura hacia Farm Management." "Adapter"
                alertHistoryAcl = component "Alert History ACL" "Consulta histórico hacia Salinity Alerting." "Adapter"
                weatherAcl = component "Weather Service ACL" "Traduce la respuesta del servicio meteorológico." "Adapter"
                pdfExporter = component "PDF Report Exporter" "Produce el documento en formato PDF." "Library"
            }
            db = container "Platform Database" "Cuentas, suscripciones, fincas, parcelas, lecturas y alertas." "PostgreSQL" "Database"
            edge = container "Edge Service" "Valida, compensa a 25 °C y sincroniza las lecturas; reenvía los lotes pendientes al recuperar la conexión." "Flask, Python, Peewee ORM" {
                telemetryConsumer = component "Telemetry Consumer" "Recibe las tramas de lectura del dispositivo." "Flask Blueprint"
                serialAdapter = component "Serial Sensor Adapter" "ACL que traduce la trama del sensor al modelo de dominio." "pySerial"
                captureHandler = component "Capture Reading Handler" "Valida, compensa y decide transmitir o almacenar." "Python Service"
                validationService = component "Reading Validation Service" "Verifica el rango físico admisible del sensor." "Python"
                compensationService = component "Temperature Compensation Service" "Compensa la conductividad eléctrica a 25 °C." "Python"
                edgeDomain = component "Monitoring Domain Model" "SoilReading, CompensationResult, SensorRange." "Python"
                localRepo = component "Local Soil Reading Repository" "Persiste lecturas y su estado de sincronización." "Peewee ORM"
                connectivityMonitor = component "Connectivity Monitor" "Determina si existe conexión con la plataforma." "Python"
                syncHandler = component "Synchronize Buffered Readings Handler" "Transmite en orden cronológico las lecturas pendientes." "APScheduler"
                syncClient = component "Platform Sync Client" "Remite lotes de lecturas al endpoint de ingesta." "requests"
            }
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

        # Component level (relaciones explícitas; las implícitas están desactivadas para no alterar las vistas de nivel superior)
        !impliedRelationships false
        ososense.web -> ososense.api.authController "" "JSON/HTTPS"
        ososense.mobile -> ososense.api.authController "" "JSON/HTTPS"
        ososense.web -> ososense.api.googleController "" "JSON/HTTPS"
        ososense.mobile -> ososense.api.googleController "" "JSON/HTTPS"
        ososense.web -> ososense.api.advisoryController "" "JSON/HTTPS"
        ososense.mobile -> ososense.api.advisoryController "" "JSON/HTTPS"
        ososense.api.authController -> ososense.api.userCmd "Delega"
        ososense.api.authController -> ososense.api.userQuery "Delega"
        ososense.api.googleController -> ososense.api.userCmd "Delega"
        ososense.api.advisoryController -> ososense.api.advisoryCmd "Delega"
        ososense.api.advisoryController -> ososense.api.userQuery "Delega"
        ososense.api.userCmd -> ososense.api.iamDomain "Invoca"
        ososense.api.advisoryCmd -> ososense.api.iamDomain "Invoca"
        ososense.api.userCmd -> ososense.api.emailAcl "Usa"
        ososense.api.userCmd -> ososense.api.googleAcl "Usa"
        ososense.api.userCmd -> ososense.api.jwtService "Usa"
        ososense.api.userCmd -> ososense.api.hashingService "Usa"
        ososense.api.userCmd -> ososense.api.userRepo "Usa"
        ososense.api.advisoryCmd -> ososense.api.linkRepo "Usa"
        ososense.api.userQuery -> ososense.api.userRepo "Usa"
        ososense.api.userQuery -> ososense.api.linkRepo "Usa"
        ososense.api.emailAcl -> notify "Envía correos" "SMTP"
        ososense.api.googleAcl -> google "Verifica ID Token" "HTTPS"
        ososense.api.userRepo -> ososense.db "" "JDBC"
        ososense.api.linkRepo -> ososense.db "" "JDBC"
        ososense.web -> ososense.api.subController "" "JSON/HTTPS"
        ososense.web -> ososense.api.planController "" "JSON/HTTPS"
        stripe -> ososense.api.webhookController "Webhook" "JSON/HTTPS"
        ososense.api.subController -> ososense.api.subCmd "Delega"
        ososense.api.subController -> ososense.api.subQuery "Delega"
        ososense.api.planController -> ososense.api.subQuery "Delega"
        ososense.api.webhookController -> ososense.api.subCmd "Delega"
        ososense.api.expirationScheduler -> ososense.api.subCmd "Dispara"
        ososense.api.subCmd -> ososense.api.billingDomain "Invoca"
        ososense.api.quotaCmd -> ososense.api.billingDomain "Invoca"
        ososense.api.subCmd -> ososense.api.stripeAcl "Usa"
        ososense.api.stripeAcl -> stripe "" "JSON/HTTPS"
        ososense.api.subCmd -> ososense.api.subRepo "Usa"
        ososense.api.quotaCmd -> ososense.api.subRepo "Usa"
        ososense.api.subQuery -> ososense.api.subRepo "Usa"
        ososense.api.subRepo -> ososense.db "" "JDBC"
        ososense.api.farmModule -> ososense.api.quotaCmd "Verifica y consume cupo"
        ososense.api.subCmd -> ososense.api.soilModule "SubscriptionSuspendedEvent"
        ososense.web -> ososense.api.farmController "" "JSON/HTTPS"
        ososense.web -> ososense.api.plotController "" "JSON/HTTPS"
        ososense.web -> ososense.api.cropController "" "JSON/HTTPS"
        ososense.mobile -> ososense.api.plotController "" "JSON/HTTPS"
        ososense.mobile -> ososense.api.deviceController "" "JSON/HTTPS"
        ososense.api.farmController -> ososense.api.farmCmd "Delega"
        ososense.api.plotController -> ososense.api.farmCmd "Delega"
        ososense.api.plotController -> ososense.api.farmQuery "Delega"
        ososense.api.cropController -> ososense.api.cropQuery "Delega"
        ososense.api.deviceController -> ososense.api.deviceCmd "Delega"
        ososense.api.farmCmd -> ososense.api.plotRegistration "Usa"
        ososense.api.plotRegistration -> ososense.api.quotaAcl "Usa"
        ososense.api.quotaAcl -> ososense.api.billingModule "Verifica cupo"
        ososense.api.farmCmd -> ososense.api.farmDomain "Invoca"
        ososense.api.farmCmd -> ososense.api.farmRepo "Usa"
        ososense.api.farmQuery -> ososense.api.farmRepo "Usa"
        ososense.api.cropQuery -> ososense.api.cropRepo "Usa"
        ososense.api.cropQuery -> ososense.api.alertModule "Provee CropThreshold"
        ososense.api.deviceCmd -> ososense.api.farmDomain "Invoca"
        ososense.api.deviceCmd -> ososense.api.deviceRepo "Usa"
        ososense.api.deviceCmd -> ososense.api.soilModule "DeviceInstalledInPlotEvent"
        ososense.api.farmRepo -> ososense.db "" "JDBC"
        ososense.api.cropRepo -> ososense.db "" "JDBC"
        ososense.api.deviceRepo -> ososense.db "" "JDBC"
        ososense.web -> ososense.api.readingController "" "JSON/HTTPS"
        ososense.web -> ososense.api.calibrationController "" "JSON/HTTPS"
        ososense.mobile -> ososense.api.readingController "" "JSON/HTTPS"
        ososense.edge -> ososense.api.telemetryController "POST lote" "JSON/HTTPS"
        ososense.api.readingController -> ososense.api.readingQuery "Delega"
        ososense.api.calibrationController -> ososense.api.calibrationHandler "Delega"
        ososense.api.telemetryController -> ososense.api.ingestHandler "Delega"
        ososense.api.readingQuery -> ososense.api.readingRepo "Usa"
        ososense.api.readingQuery -> ososense.api.analyticsModule "Provee series"
        ososense.api.calibrationHandler -> ososense.api.soilDomain "Invoca"
        ososense.api.staleHandler -> ososense.api.readingRepo "Usa"
        ososense.api.staleHandler -> ososense.api.farmModule "DeviceWentOfflineEvent"
        ososense.api.ingestHandler -> ososense.api.soilDomain "Invoca"
        ososense.api.ingestHandler -> ososense.api.readingRepo "Usa"
        ososense.api.ingestHandler -> ososense.api.batchRepo "Usa"
        ososense.api.ingestHandler -> ososense.api.readingPublisher "Usa"
        ososense.api.readingPublisher -> ososense.api.alertModule "SoilReadingStoredEvent"
        ososense.api.readingRepo -> ososense.db "" "JDBC"
        ososense.api.batchRepo -> ososense.db "" "JDBC"
        ososense.web -> ososense.api.prefController "" "JSON/HTTPS"
        ososense.web -> ososense.api.alertController "" "JSON/HTTPS"
        ososense.mobile -> ososense.api.alertController "" "JSON/HTTPS"
        ososense.api.soilModule -> ososense.api.readingConsumer "SoilReadingStoredEvent"
        ososense.api.readingConsumer -> ososense.api.evaluateHandler "Delega"
        ososense.api.alertController -> ososense.api.alertQuery "Delega"
        ososense.api.alertController -> ososense.api.alertCmd "Delega"
        ososense.api.prefController -> ososense.api.prefRepo "Usa"
        ososense.api.alertQuery -> ososense.api.alertRepo "Usa"
        ososense.api.alertQuery -> ososense.api.analyticsModule "Provee histórico"
        ososense.api.alertCmd -> ososense.api.alertRepo "Usa"
        ososense.api.alertCmd -> ososense.api.alertDomain "Invoca"
        ososense.api.evaluateHandler -> ososense.api.alertGenerated "Dispara"
        ososense.api.evaluateHandler -> ososense.api.thresholdService "Usa"
        ososense.api.evaluateHandler -> ososense.api.cropThresholdAcl "Usa"
        ososense.api.evaluateHandler -> ososense.api.alertRepo "Usa"
        ososense.api.evaluateHandler -> ososense.api.alertDomain "Invoca"
        ososense.api.alertGenerated -> ososense.api.pushAcl "Usa"
        ososense.api.alertGenerated -> ososense.api.prefRepo "Usa"
        ososense.api.alertGenerated -> ososense.api.advisoryAcl "Usa"
        ososense.api.cropThresholdAcl -> ososense.api.farmModule "Consulta umbral"
        ososense.api.advisoryAcl -> ososense.api.iamModule "Consulta asesores"
        ososense.api.pushAcl -> notify "Envía push" "JSON/HTTPS"
        ososense.api.prefRepo -> ososense.db "" "JDBC"
        ososense.api.alertRepo -> ososense.db "" "JDBC"
        ososense.web -> ososense.api.trendController "" "JSON/HTTPS"
        ososense.web -> ososense.api.dashboardController "" "JSON/HTTPS"
        ososense.web -> ososense.api.reportController "" "JSON/HTTPS"
        ososense.web -> ososense.api.comparisonController "" "JSON/HTTPS"
        ososense.mobile -> ososense.api.dashboardController "" "JSON/HTTPS"
        ososense.api.trendController -> ososense.api.computeTrend "Delega"
        ososense.api.dashboardController -> ososense.api.farmerDashboard "Delega"
        ososense.api.dashboardController -> ososense.api.multiDashboard "Delega"
        ososense.api.reportController -> ososense.api.generateReport "Delega"
        ososense.api.reportController -> ososense.api.exportReport "Delega"
        ososense.api.comparisonController -> ososense.api.multiDashboard "Delega"
        ososense.api.computeTrend -> ososense.api.trendService "Usa"
        ososense.api.computeTrend -> ososense.api.trendRepo "Usa"
        ososense.api.computeTrend -> ososense.api.analyticsDomain "Invoca"
        ososense.api.computeTrend -> ososense.api.seriesAcl "Usa"
        ososense.api.farmerDashboard -> ososense.api.seriesAcl "Usa"
        ososense.api.farmerDashboard -> ososense.api.plotStructureAcl "Usa"
        ososense.api.generateReport -> ososense.api.analyticsDomain "Invoca"
        ososense.api.generateReport -> ososense.api.reportRepo "Usa"
        ososense.api.generateReport -> ososense.api.seriesAcl "Usa"
        ososense.api.generateReport -> ososense.api.alertHistoryAcl "Usa"
        ososense.api.generateReport -> ososense.api.weatherAcl "Usa"
        ososense.api.multiDashboard -> ososense.api.plotStructureAcl "Usa"
        ososense.api.multiDashboard -> ososense.api.seriesAcl "Usa"
        ososense.api.exportReport -> ososense.api.pdfExporter "Usa"
        ososense.api.seriesAcl -> ososense.api.soilModule "Consulta series"
        ososense.api.plotStructureAcl -> ososense.api.farmModule "Consulta estructura"
        ososense.api.alertHistoryAcl -> ososense.api.alertModule "Consulta histórico"
        ososense.api.weatherAcl -> weather "Consulta el clima" "JSON/HTTPS"
        ososense.api.trendRepo -> ososense.db "" "JDBC"
        ososense.api.reportRepo -> ososense.db "" "JDBC"
        ososense.embedded -> ososense.edge.telemetryConsumer "Envía lecturas" "JSON/HTTP sobre WiFi"
        ososense.edge.telemetryConsumer -> ososense.edge.serialAdapter "Traduce trama"
        ososense.edge.telemetryConsumer -> ososense.edge.captureHandler "Delega"
        ososense.edge.captureHandler -> ososense.edge.validationService "Usa"
        ososense.edge.captureHandler -> ososense.edge.compensationService "Usa"
        ososense.edge.captureHandler -> ososense.edge.edgeDomain "Invoca"
        ososense.edge.captureHandler -> ososense.edge.localRepo "Guarda"
        ososense.edge.captureHandler -> ososense.edge.connectivityMonitor "Consulta"
        ososense.edge.syncHandler -> ososense.edge.localRepo "Lee pendientes"
        ososense.edge.syncHandler -> ososense.edge.connectivityMonitor "Consulta"
        ososense.edge.syncHandler -> ososense.edge.syncClient "Usa"
        ososense.edge.syncClient -> ososense.api.telemetryController "POST lote" "JSON/HTTPS"
        ososense.edge.localRepo -> ososense.edgeDb "" "SQL"

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

        component ososense.api "IAM-Components" "Component diagram - Identity and Access Management" {
            include ososense.web ososense.mobile ososense.api.authController ososense.api.googleController ososense.api.advisoryController ososense.api.userCmd ososense.api.advisoryCmd ososense.api.userQuery ososense.api.iamDomain ososense.api.emailAcl ososense.api.googleAcl ososense.api.jwtService ososense.api.hashingService ososense.api.userRepo ososense.api.linkRepo ososense.db notify google
            autoLayout lr 250 150
        }
        component ososense.api "Billing-Components" "Component diagram - Subscription and Billing" {
            include ososense.web stripe ososense.api.subController ososense.api.planController ososense.api.webhookController ososense.api.expirationScheduler ososense.api.subCmd ososense.api.quotaCmd ososense.api.subQuery ososense.api.billingDomain ososense.api.stripeAcl ososense.api.subRepo ososense.db ososense.api.farmModule ososense.api.soilModule
            autoLayout lr 250 150
        }
        component ososense.api "Farm-Components" "Component diagram - Farm Management" {
            include ososense.web ososense.mobile ososense.api.farmController ososense.api.plotController ososense.api.cropController ososense.api.deviceController ososense.api.farmCmd ososense.api.farmQuery ososense.api.cropQuery ososense.api.deviceCmd ososense.api.plotRegistration ososense.api.quotaAcl ososense.api.farmDomain ososense.api.farmRepo ososense.api.cropRepo ososense.api.deviceRepo ososense.db ososense.api.billingModule ososense.api.alertModule ososense.api.soilModule
            autoLayout lr 250 150
        }
        component ososense.api "SoilMonitoring-Components" "Component diagram - Soil Monitoring (Modular Monolith)" {
            include ososense.web ososense.mobile ososense.edge ososense.api.readingController ososense.api.calibrationController ososense.api.telemetryController ososense.api.readingQuery ososense.api.calibrationHandler ososense.api.staleHandler ososense.api.ingestHandler ososense.api.soilDomain ososense.api.readingRepo ososense.api.batchRepo ososense.api.readingPublisher ososense.db ososense.api.analyticsModule ososense.api.farmModule ososense.api.alertModule
            autoLayout lr 250 150
        }
        component ososense.api "SalinityAlerting-Components" "Component diagram - Salinity Alerting" {
            include ososense.web ososense.mobile ososense.api.soilModule ososense.api.prefController ososense.api.alertController ososense.api.readingConsumer ososense.api.evaluateHandler ososense.api.alertQuery ososense.api.alertCmd ososense.api.alertGenerated ososense.api.thresholdService ososense.api.cropThresholdAcl ososense.api.prefRepo ososense.api.alertRepo ososense.api.pushAcl ososense.api.alertDomain ososense.api.advisoryAcl ososense.db ososense.api.analyticsModule ososense.api.farmModule ososense.api.iamModule notify
            autoLayout lr 250 150
        }
        component ososense.api "AnalyticsReporting-Components" "Component diagram - Analytics and Reporting" {
            include ososense.web ososense.mobile ososense.api.trendController ososense.api.dashboardController ososense.api.reportController ososense.api.comparisonController ososense.api.computeTrend ososense.api.farmerDashboard ososense.api.generateReport ososense.api.multiDashboard ososense.api.exportReport ososense.api.trendService ososense.api.trendRepo ososense.api.analyticsDomain ososense.api.reportRepo ososense.api.seriesAcl ososense.api.plotStructureAcl ososense.api.alertHistoryAcl ososense.api.weatherAcl ososense.api.pdfExporter ososense.db ososense.api.soilModule ososense.api.farmModule ososense.api.alertModule weather
            autoLayout lr 250 150
        }
        component ososense.edge "SoilMonitoring-Edge-Components" "Component diagram - Soil Monitoring (Edge Service)" {
            include ososense.embedded ososense.edge.telemetryConsumer ososense.edge.serialAdapter ososense.edge.captureHandler ososense.edge.validationService ososense.edge.compensationService ososense.edge.edgeDomain ososense.edge.localRepo ososense.edge.connectivityMonitor ososense.edge.syncHandler ososense.edge.syncClient ososense.edgeDb ososense.api.telemetryController
            autoLayout lr 250 150
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
            element "Component" {
                background #85bbf0
                color #000000
            }
            element "Module" {
                background #999999
                color #ffffff
            }
            element "Hardware" {
                background #6b6b6b
                shape Box
            }
        }
    }
}
