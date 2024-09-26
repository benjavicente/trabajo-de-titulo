# Trabajo de título

Base para escribir el trabajo de título en [typst](https://typst.app/home/).

Esto no es un template [en el sentido de typst](https://typst.app/docs/tutorial/making-a-template/#toy-template). Solo entrega configuración requeridas y buenos defectos.

## Compilar

Instalar [typst](https://github.com/typst/typst?tab=readme-ov-file#installation)

```bash
# typst watch [input] [output]
typst watch main.typ main.pdf
```

## Setup recomendado en VSCOde

- Instalar una extensión de LSP para typst. [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) tiene buenos defectos, y [Typst LSP](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp) es minimalista, pero conviene deshabilitar que se compile automáticamente al guardar.
  ```json
    "typst-lsp.exportPdf": "never"
  ```
- Instala la extensión [PDF Viewer](https://marketplace.visualstudio.com/items?itemName=mathematic.vscode-pdf) si quieres ver el PDF al lado dentro del código. Otras extensiones y apps no actualizan el PDF automáticamente.
