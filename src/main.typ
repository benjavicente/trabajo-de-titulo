#import "template.typ" as TT
#import "cover.typ": cover

#let title = "Trabajo de título"
#let author = "Benjamín Vicente"

#show: TT.template

#set document(author: author, title: title)
#cover(
  uc-logo: "./logo-uc-negro.svg",
  header: [
    Escuela de Ingeniería.
    #parbreak()
    Departamento de Ciencia de la Computación
  ],
  title: title,
  author: author,
  description: [
    Trabajo de Título para optar al Título
    #linebreak()
    de Ingeniero Civil de Computación.
  ],
  lead: [
    Profesor guía:
    #linebreak()
    #text(weight: "semibold", upper("Jaime Navon"))
  ],
  date: "6 de enero del 2025",
)


#TT.main_outline()
#TT.figure_outline()

= Resumen

#lorem(200)

#lorem(200)

#lorem(200)

= Abstract


#show: TT.content


= Introducción

== Contexto de la empresa

== Meta del Trabajo de Título

Las competencias a demostrar en este trabajo son:

- Aplicar conocimientos avanzados de Ciencia de la Computación, Ingeniería de Software y Sistemas de Información para entender problemas complejos y abiertos.
- Diseñar aplicaciones de software complejas, siguiendo los estándares de la Ingeniería de Software, y tomando aspectos de seguridad y complejidad computacional.
- Desarrollar soluciones innovadoras basadas en conocimientos avanzados de Ingeniería de Computación.

La presentación del trabajo realizado seguirá una estructura basada en estas competencias, entendiéndolas como etapas continuas presentes en la ingeniería de software: analizar, diseñar y desarrollar.

Se determinaron 2 proyectos a realizar. El primero, es la creación de una plataforma _whitelabel_ para proyectos inmobiliarios, permitiendo la creación de páginas y recursos web personalizables a trabes de un gestor de contenido e inventario.

El segundo, es el desarrollo de herramientas para la gestión de clientes, con un _inbox_ de mensajes e integraciones, como añadir inteligencia artificial potenciar la atención a los clientes.

Además de estos 2 proyectos, se desarrolló un sistema interno de la empresa (_backend_), que permita desarrollar los proyectos mencionados anteriormente.


= Sistema interno

== Análisis de problemas y requerimientos

- El mercado es lento, llegan pocas cotizaciones y mensajes en comparación a otras industrias.
- Priorización de agilidad de desarrollo sobre performance y escalabilidad.
- 

= Sistema whitelabel para proyectos inmobiliarios

== Análisis de problemas y requerimientos

== Diseño de la solución

== Implementación

= Sistema de gestión de clientes

== Análisis de problemas y requerimientos



== Diseño de la solución

== Implementación

= Conclusiones


Mira, una cita @react-server-components

#figure(```tsx
console.log("Hola mundo");

function Componente() {
  return <div>Hola mundo</div>;
}
```, caption: "Código de ejemplo")

asda

#figure(
  table(
    columns: 4,
    [1], [2], [3], [4],
    [A], [B], [C], [D]
  ),
  caption: "Tabla de ejemplo",
)

Los cambios compilan super rápido.

#TT.bibliography("bibliography.yml")

#TT.appendix("appendix.typ")
