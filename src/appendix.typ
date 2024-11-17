
#let ok = (content: sym.checkmark) => table.cell(content, fill: green.lighten(80%))
#let bad = (content: [x]) => table.cell(content, fill: red.lighten(80%))
#let partial = (content: [\~]) => table.cell(content, fill: yellow.lighten(80%))

#page(
  flipped: true,
  margin: (top: 2cm, bottom: 2cm, left: 1.5cm, right: 1.5cm),
  [
  = Comparativa de Backend as a Service
  #figure(
    table(
      columns: 6,
      table.cell([Funcionalidad], colspan: 2), table.cell([Backend as a Service (BaaS)], colspan: 4),
      [Categoría], [Nombre], [Supabase], [Firebase], [Cloudflare DO #footnote[DO es un primitivo para contruir un backend, y no entrega todas las heramientas comunes de un BaaS]], [Convex],

      table.cell([Descipción], rowspan: 3),
      [Creación servicio], [Firestore (2017)], [Supabase (2020)], [Durable Objects (2021)], [Convex (2021)],
      [Lenguaje], partial(content: [SQL]), ok(content: [JS]), ok(content: [JS/TS, estándares web]), ok(content: [JS/TS, estándares web]),
      [BDD], ok(content: [PostgreSQL]), partial(content: [Firestore, no ralacional]), ok(content: [SQLite]), ok(content: [Documentos, relacional]),

      table.cell([Funcionalidades], rowspan: 5),
      [Real Time], ok(), ok(), ok(content: [WebSockets diracto]), ok(),
      [Tareas], bad(), ok(content: [Google Tasks]), partial(content: [Impl. propia]), ok(),
      [Subir imágenes], ok(), ok(), ok(content: [R2]), ok(),
      [Integración Autentificación], ok(), ok(), bad(), ok(),
      [Permisos #footnote[Que sistema de permisos se asume en las funcionalidades que otorga el Backend as a Service]], partial(content: [RLP (polizas en la BDD)]), partial(content: [Security Rules]), ok(content: [Impl. Propia]), ok(content: [Impl. Propia]),

      table.cell([Agilizantes de desarrollo], rowspan: 5),
      [Servidor local], partial(content: [Complejo]), partial(content: "Distinto produción"), partial(content: "Levemente diferente"), ok(),
      [Dashboard], ok(), partial(content: [Complejo de usar]), bad(), ok(),
      [Buena documentación], ok(), partial(), partial(), ok(),
      [Integración cliente], ok(), partial(content: [Deprecada]), bad(content: [Implementación propia]), ok(),
      [Testing], partial(content: [Basado en SQL]), partial(content: [Deprecada]), partial(content: [Complejo]), ok(content: [Bien integrado]),

      table.cell([Nice to have], rowspan: 4),
      [Sin cold start], ok(), partial(content: [x]), ok(), ok(),
      [Deploy automatico], ok(), ok(), ok(), ok(),
      [Previews], ok(), ok(), ok(), ok(),
      [Self hosteable ], ok(), partial(content: [x]), ok(), ok(),

      table.cell([Escalabilidad], rowspan: 2),
      [Fuerza buenas prácticas], partial(content: [Accesso directo a BDD]), partial(content: [Accesso directo a BDD]), partial(content: [Libre]), ok(),
      [Conexiones Cloud], partial(content: [Por SQL]), ok(content: [Google Cloud]), ok(content: [Servicios de Cloudflare]), partial(content: [Cloud aparte]),

      table.cell([Costos], rowspan: 2),
      [Plan gratis], [Sí], [Sí, por uso], [No], [Sí],
      [Siguiente plan], [\$25/mes], ok(content: [Solo basado en uso]), [\$5/mes], partial(content: [\$25/mes/persona]),
    ),
    caption: "Compartiva de Backend as a Service.",
  )
  ]
)

= a
== adios
=== asdas
==== sadas