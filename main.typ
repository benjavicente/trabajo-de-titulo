// Formato
#set page(
  paper: "us-letter",
  margin: (bottom: 2.5cm, right: 2.5cm),
  numbering: "1",
)
#set par(leading: 1.25em, justify: true)
#set text(lang: "es", font: "Arial", size: 12pt)

// Figuras con texto más chico, pero no en su título
#show figure: set text(size: 10pt)
#show figure.caption: set text(size: 12pt)

// Espaciado
#show par: set block(spacing: 2em)
#show heading: set block(above: 1.4em, below: 1em)

// Adicionales
#import "@preview/codly:1.0.0": *
#show: codly-init.with()
#codly(zebra-fill: none, lang-stroke: none, stroke: 1pt + black.lighten(75%))

// Inicio del documento

= Trabajo de título?

Aquí va el contenido del documento con párrafos, tablas, imágenes, etc. Aquí va
el contenido del documento con párrafos, tablas, imágenes, etc. Aquí va el
contenido del documento con párrafos, tablas, imágenes, etc. Aquí va el
contenido del documento con párrafos, tablas, imágenes, etc. Aquí va el
contenido del documento con párrafos, tablas, imágenes, etc. Aquí va el
dasdkasdhjkashdajk asdasd adscontenido del documento con párrafos, tablas,
imágenes, etc.a dasdsaasdsad

Mira, una cita @react-server-components

#figure(```tsx
console.log("Hola mundo");

function Componente() {
  return <div>Hola mundo</div>;
}
```, caption: "Código de ejemplo")

#figure(
  table(columns: 4, [1], [2], [3], [4], [A], [B], [C], [D]),
  caption: "Tabla de ejemplo",
)

Los cambios compilan super rápido.

#bibliography("./bibliography.yml", style: "apa")
