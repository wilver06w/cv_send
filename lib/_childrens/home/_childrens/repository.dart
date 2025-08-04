import 'package:cv_send/_childrens/home/_childrens/info/models/item_experience.dart';
import 'package:cv_send/_childrens/home/_childrens/info/models/item_project.dart';
import 'package:cv_send/utils/xigo_ui.dart';

class Repository {
  List<ItemExperience> getExperiences() {
    return [
      const ItemExperience(
        title: InitProyectUiValues.pragma,
        profile: InitProyectUiValues.mobileDeveloper,
        date: InitProyectUiValues.twentyFourJunPresent,
        descriptionSpanish:
            'Desarrollador móvil y backend, encargado de despliegues en AWS, Kubernetes y microservicios, aportando también desde lo funcional en las definiciones.',
        description:
            'Mobile and backend developer, in charge of AWS deployments, Kubernetes and microservices, also contributing functionally in definitions.',
        resposabilitys: [
          'Desarrollo móvil iOS y Android con Flutter y tecnologías nativas.',
          'Desarrollo backend con microservicios y APIs REST.',
          'Despliegues en AWS utilizando servicios cloud.',
          'Gestión de contenedores con Kubernetes (kubectl).',
          'Arquitectura de microservicios y comunicación entre servicios.',
          'Aporte funcional en definiciones de requerimientos y arquitectura.',
          'Integración continua y despliegue continuo (CI/CD).',
          'Monitoreo y mantenimiento de aplicaciones en producción.',
          'Trabajo en equipo con metodologías ágiles.',
          'Optimización de rendimiento y escalabilidad.',
        ],
        urlSite: '',
      ),
      const ItemExperience(
        title: InitProyectUiValues.globalHitts,
        profile: InitProyectUiValues.mobileDeveloper,
        date: InitProyectUiValues.twentyFourFebJun,
        descriptionSpanish:
            'Desarrollador móvil en outsourcing para EPM, encargado del desarrollo y mantenimiento de 5 aplicaciones móviles en fase de empalme.',
        description:
            'Mobile developer in outsourcing for EPM, in charge of development and maintenance of 5 mobile applications in handover phase.',
        resposabilitys: [
          'Desarrollo y mantenimiento de aplicaciones móviles iOS y Android.',
          'Aplicaciones desarrolladas: Mi Bitácora, Talleres, Proveeduría, Alertas Hidroituango.',
          'Fase de empalme: Recibimiento y desarrollo de aplicaciones existentes.',
          'Tecnologías: Flutter, Dart, iOS, Android.',
          'Metodología ágil y trabajo en equipo.',
          'Integración con APIs y servicios backend.',
          'Mantenimiento de código legacy y nuevas funcionalidades.',
          'Testing y debugging de aplicaciones móviles.',
        ],
        urlSite: '',
      ),
      const ItemExperience(
        title: InitProyectUiValues.tulSas,
        profile: InitProyectUiValues.mobileDeveloper,
        date: InitProyectUiValues.twentyOneTwentyThree,
        descriptionSpanish:
            'Estuve a cargo del Core del negocio, incluyendo autenticación, perfil de inicio, servicios, desarrollando funcionalidades desde 0%.',
        description:
            'I was in charge of the Core of the business, including authentication, home profile, services, developing functionalities from 0%',
        resposabilitys: [
          'Metodología Scrum, establecimiento de objetivos OKR.',
          'Control de versiones: Git, BitBucket.',
          'Gestión de estado: BLOC, Riverpod, Provider.',
          'Diseño y colaboración: Figma, Slack.',
          'Frameworks multiplataforma: Dart: Flutter 3.',
          'Plataformas nativas: iOS y Android.',
          'Integración Firebase: Firebase Analytics, configuración remota.',
          'Integración Google Maps: mapas, GPS.',
          'Gestión de bases de datos: PostgreSQL, DBeaver.',
          'Visualización de datos: Redash.',
          'Documentación de API: Swagger.',
          'Principios de código limpio: SOLID.',
          'Arquitectura limpia: código modular y mantenible.',
          'Pruebas unitarias e integración: garantizar la funcionalidad del código.',
        ],
        urlSite:
            'https://play.google.com/store/apps/details?id=co.com.tul.ironmonger',
      ),
      const ItemExperience(
        title: 'Acacompro',
        profile: InitProyectUiValues.mobileDeveloper,
        date: '2020-2021',
        descriptionSpanish:
            'Esto era un ecommerce, aquí jugué el rol de líder, definiendo la tecnología y comunicándome con la parte de producto para descargar los requerimientos y diseños.',
        description:
            'This was an ecommerce, here I played the role of leader, defining the technology and communicating with the product part to download the requirements and designs.',
        resposabilitys: [
          'Desarrollo de la plataforma Acacompro.com',
          'Uso del lenguaje de programación Dart.',
          'Consumo de APIs RESTful',
          'Uso de integraciones con diferentes pasarelas de pago.',
          'Uso de bases de datos como: Mysql y MongoDB.',
          'Conexión al SDK de Facebook, para Login y obtener los datos del usuario.',
          'Firebase Analytics.',
          'Notificaciones Push en Firebase.',
          'Aplicación de Análisis Estático de Flutter.',
        ],
        urlSite:
            'https://play.google.com/store/apps/details?id=com.acacompro.acacompro',
      ),
      const ItemExperience(
        title: 'MotaxiGo',
        profile: InitProyectUiValues.mobileDeveloper,
        date: '2018-2020',
        descriptionSpanish:
            'Esto proyecto es una app de transporte, para servicios de taxis y motocicletas, aqui aporte en 3 aplicaciones por total, estuvo presente en bogota, y ciudades pequenias.',
        description:
            'This project is a transportation app, for taxi and motorcycle services, here I contributed in 3 applications in total, it was present in Bogota, and small cities.',
        resposabilitys: [
          'Desarrollo de la plataforma XiGo',
          'Uso de integraciones con diferentes pasarelas de pago.',
          'Uso de bases de datos como: Mysql y MongoDB.',
          'Uso de Frameworks como: Codeigniter, Creación de APIs REST.',
        ],
        urlSite:
            'https://play.google.com/store/apps/details?id=com.motaxisas.motaxigo',
      ),
      const ItemExperience(
        title: 'Dr Tecnology',
        profile: InitProyectUiValues.softwareDeveloper,
        date: '2019-2020',
        descriptionSpanish:
            'Desarrollador de software en plataformas de comercio electrónico como Vitrisur con el patrocinio de la cámara de comercio (https://vitrisur.com). con aplicación móvil.',
        description:
            'Software developer on e-commerce platforms such as Vitrisur being sponsored by the chamber of commerce (https://vitrisur.com). with mobile application.',
        resposabilitys: [
          'Uso de Frameworks como: Codeigniter, Creación de APIs REST.',
          'Uso de bases de datos como: Mysql y MongoDB.',
          'Creación de aplicación',
        ],
        urlSite: 'https://vitrisur.com/',
      ),
      const ItemExperience(
        title: 'Somos Junior',
        profile: InitProyectUiValues.mobileDeveloper,
        date: '2018-2021',
        descriptionSpanish:
            'Esta es una App de entretenimiento y noticias sobre un equipo de fútbol, Implementa los diseños y lo que se requiere',
        description:
            'This is an entertainment and news App about a soccer team, Implement the designs and what is required',
        resposabilitys: [
          'Desarrollo de la plataforma XiGo',
          'Uso de integraciones con diferentes pasarelas de pago.',
          'Uso de bases de datos como: Mysql y MongoDB.',
          'Uso de Frameworks como: Codeigniter, Creación de APIs REST.',
        ],
        urlSite:
            'https://play.google.com/store/apps/details?id=com.wfprogramador.somosjuniors',
      ),
    ];
  }

  List<ItemProject> getProjects() {
    return [
      //TODO: Descomentar, revisar
      // const ItemProject(
      //   title: InitProyectUiValues.proTiendasTitle,
      //   subtitle: InitProyectUiValues.proTiendasSubTitle,
      //   about: InitProyectUiValues.aplicacionMvpMarketPlace,
      //   technologies: [
      //     'Flutter',
      //     'Bloc',
      //     'Dart',
      //     'Modular',
      //     'Dio',
      //     'Singleton',
      //     'ListView Builder',
      //     'Inyeccion de dependencias',
      //     'Navigator',
      //   ],
      //   routeGif:  InitProyectUiValues.protiendasGif,
      //   urlSite: 'https://github.com/wilver06w/protiendas',
      // ),
      const ItemProject(
        title: InitProyectUiValues.breedsCat,
        subtitle: InitProyectUiValues.breedsCatSubTitle,
        about: InitProyectUiValues.aplicacionBreedCat,
        technologies: [
          'Flutter',
          'Clean Architecture',
          'Bloc',
          'Dart',
          'Modular',
          'Dio',
          'Singleton',
          'ListView Builder',
          'Inyeccion de dependencias',
          'Navigator',
        ],
        routeGif: InitProyectUiValues.breedcatGif,
        urlSite: 'https://github.com/wilver06w/breeds',
      ),
      const ItemProject(
        title: InitProyectUiValues.yuGiOhTitle,
        subtitle: InitProyectUiValues.yuGiOhSubTitle,
        about: InitProyectUiValues.yuGiOhDesc,
        technologies: ['Flutter', 'Bloc', 'Dart', 'Kotlin', 'Modular'],
        routeImage: InitProyectUiValues.yuGiOhJpg,
        urlSite: 'https://github.com/wilver06w/yugioh',
      ),
      const ItemProject(
        title: InitProyectUiValues.taskR5,
        subtitle: InitProyectUiValues.r5Title,
        about: InitProyectUiValues.r5Desc,
        technologies: [
          'Flutter',
          'Bloc',
          'Dart',
          'Kotlin',
          'Modular',
          'Firebase',
          'Firestore',
        ],
        routeImage: InitProyectUiValues.taskR5Jpg,
        urlSite: 'https://github.com/wilver06w/r5',
      ),
      const ItemProject(
        title: InitProyectUiValues.verifik,
        subtitle: InitProyectUiValues.verifikTitle,
        about: InitProyectUiValues.verifikDesc,
        technologies: ['Flutter', 'Bloc', 'Dart', 'Kotlin', 'Modular'],
        routeImage: InitProyectUiValues.verifikPng,
        urlSite: 'https://github.com/wilver06w/verifik',
      ),
      const ItemProject(
        title: InitProyectUiValues.tulSas,
        subtitle: InitProyectUiValues.theMarketplaceAppTul,
        about: InitProyectUiValues
            .wideRangeProductsAndMakePurchaseSelectionTheirPrefferedSellers,
        technologies: [
          'Flutter',
          'Bloc',
          'Dart',
          'Kotlin',
          'Micropackages',
          'Spring Boot',
          'Microservices',
        ],
        routeGif: InitProyectUiValues.tulGif,
        urlSite:
            'https://play.google.com/store/apps/details?id=co.com.tul.ironmonger',
      ),
      const ItemProject(
        title: 'Acacompro',
        subtitle: 'MarketPlace de productos',
        about: 'MarketPlace de productos, estilo Mercadolibre',
        technologies: ['Flutter', 'Provider', 'Dart', 'Laravel'],
        routeGif: InitProyectUiValues.acacomproGif,
        urlSite:
            'https://play.google.com/store/apps/details?id=com.acacompro.acacompro',
      ),
      const ItemProject(
        title: 'Acacompro Proveedores',
        subtitle: 'MarketPlace de productos para clientes internos',
        about: 'MarketPlace de productos para proveedores, tipo negocio B2B',
        technologies: ['Flutter', 'Provider', 'Dart', 'Laravel'],
        routeImage: InitProyectUiValues.acacomproProveedoresImage,
        urlSite:
            'https://play.google.com/store/apps/details?id=com.acacompro.proveedores',
      ),
      const ItemProject(
        title: 'XigoCliente',
        subtitle: 'Aplicación de transporte',
        about:
            'Más rápido en cada ciudad y localizar la ciudad efectivamente #Colombia #Mexico',
        technologies: [
          'Java',
          'Kotlin',
          'RxJava',
          'Retrofit',
          'MVC',
          'Laravel',
        ],
        routeGif: InitProyectUiValues.xigoClient,
        urlSite:
            'https://play.google.com/store/apps/details?id=com.motaxisas.motaxigo',
      ),
      const ItemProject(
        title: 'XigoConductor',
        subtitle: 'Aplicación de transporte',
        about:
            'Aplicación complementaria, que se utiliza para gestionar los servicios que salen de la App Cliente',
        technologies: ['Java - Kotlin', 'Retrofit', 'MVVM', 'Dart', 'Laravel'],
        routeGif: InitProyectUiValues.xigoConductor,
        urlSite:
            'https://play.google.com/store/apps/details?id=com.motaxisas.motaxigoconductor',
      ),
      const ItemProject(
        title: 'Somos Junior',
        subtitle: 'Aplicación de entretenimiento',
        about:
            'Esta es una App de entretenimiento y noticias sobre un equipo de fútbol, Implementa los diseños y lo que se requiere',
        technologies: ['Java', 'RxJava', 'Retrofit', 'MVC', 'Laravel'],
        routeImage: InitProyectUiValues.somosjuniorGif,
        urlSite:
            'https://play.google.com/store/apps/details?id=com.wfprogramador.somosjuniors',
      ),
    ];
  }
}
