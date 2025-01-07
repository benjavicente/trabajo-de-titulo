// Fix Typst first line indentation
// https://github.com/typst/typst/issues/311#issuecomment-2053953879
#let indent_hack(it) = {
  show par: set par(spacing: 0em)
  it; v(-1.25em); ""
}

#let indent_hack_list(it) = {
  show par: set par(spacing: 0em)
  it; v(-2.5em); ""
}

// Se fuerza que se aplique first-line-indent luego de cada heading, lista o tabla
// Esto no cubre todos los casos para evitar romper estilos
#let fix_indent(doc) = {
  show heading: indent_hack
  show list: indent_hack_list
  show enum: indent_hack_list
  show terms: indent_hack_list
  // show figure: indent_hack
  doc
}

