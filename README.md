# Trabajo de título

Template del Trabajo de título en [typst](https://typst.app/home/), junto a mi trabajo de título de referencia.
Todo mi informe fue realizado con typst, incluyendo figuras. Pueden usar este como punto de partida.

## Template

Esto está separado en 2 directorios, template y thesis. EL template incluye:

- Los estilos mínimos pedidos (y con arreglos que la plantilla de Word no tiene)
- Portada
- Tabla de contenidos
- Tabla de figuras
- Bibliografía APA que [lee BibLaTeX `.bib` o Hayagriva `.yml`](https://github.com/typst/hayagriva/blob/main/docs/file-format.md)
- Anexos

El template no incluye ningún paquete externo. Recomiendo revisar [codly](https://typst.app/universe/package/codly)
para el código y [fletcher](https://typst.app/universe/package/fletcher) para hacer diagramas, que uso en mi informe.

### Estructura básica

```typst
#import "/template/thesis.typ" as TT
#import "/template/cover.typ": cover
#cover(...)
#TT.main_outline(depth: 2)
#TT.figure_outline()
// Resumen y abstract aquí
#show: TT.content
// Contenido aquí
#TT.bibliography("path a la bibliografía")
#TT.appendix("path al apéndice si existe")
```

### Compilar

Instalar [typst](https://github.com/typst/typst?tab=readme-ov-file#installation)

```bash
# typst watch [input] [output]
typst watch --root . ./thesis/main.typ thesis.pdf
```

### Por qué no usar X

#### El template de Work que hay en Siding

1. Está mal el formato. La numeración es inconsistente (I. y 1.1) y no parte de la portada como se indica.
2. Está mal el template. No se usa el sistema de estilos de Word.

#### LaTeX

Más cacho de configurar el formato y más cacho el setup de compilación.
Eso si, es LaTeX es mucho más extensible (aunque más difícil), hay herramientas como (tectonic)[https://tectonic-typesetting.github.io/en-US/] que ayudan en la compilación, y muy buenos paquetes.

### Setup recomendado en VSCode

- Instalar una extensión de LSP para typst. [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) tiene buenos defectos, y [Typst LSP](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp) es minimalista, pero conviene deshabilitar que se compile automáticamente al guardar.
  ```json
    "typst-lsp.exportPdf": "never"
  ```
- Instala la extensión [PDF Viewer](https://marketplace.visualstudio.com/items?itemName=mathematic.vscode-pdf) si quieres ver el PDF al lado dentro del código. Otras extensiones y apps no actualizan el PDF automáticamente.
