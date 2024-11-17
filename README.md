# Trabajo de título

Mi informe de trabajo de título, usando [typst](https://typst.app/home/).

## Template

Próximamente pienso ordenarlo mejor para que sea más fácil usarlo como template.
Ahora que estoy probando temas de formato y como este se ve con lo que estoy escribiendo, lo estoy dejando todo junto.

Lo que tengo incluye:

- Los estilos mínimos pedidos (y con arreglos que la plantilla de Word no tiene).
- Portada.
- Tabla de contenidos.
- Tabla de figuras.
- Estilos para insertar código (con [codly](https://typst.app/universe/package/codly)).
- Bibliografía APA que [lee BibLaTeX `.bib` o Hayagriva `.yml`](https://github.com/typst/hayagriva/blob/main/docs/file-format.md)
- Anexos.

### Compilar

Instalar [typst](https://github.com/typst/typst?tab=readme-ov-file#installation)

```bash
# typst watch [input] [output]
typst watch ./src/main.typ main.pdf
```

### Por qué no usar X

#### El template de Work que hay en Siding

1. Está mal el formato. La numeración es inconsistente (I. y 1.1) y no parte de la portada como se indica.
2. Está mal el template. No se usa el sistema de estilos de Word.

#### LaTeX

Más cacho de configurar el formato y más cacho el setup de compilación.
Eso si, es LaTeX es mucho más extensible, hay herramientas como (tectonic)[https://tectonic-typesetting.github.io/en-US/] que ayudan en la compilación, y muy buenos paquetes en comparación a los de typst.

### Setup recomendado en VSCode

- Instalar una extensión de LSP para typst. [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) tiene buenos defectos, y [Typst LSP](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp) es minimalista, pero conviene deshabilitar que se compile automáticamente al guardar.
  ```json
    "typst-lsp.exportPdf": "never"
  ```
- Instala la extensión [PDF Viewer](https://marketplace.visualstudio.com/items?itemName=mathematic.vscode-pdf) si quieres ver el PDF al lado dentro del código. Otras extensiones y apps no actualizan el PDF automáticamente.
