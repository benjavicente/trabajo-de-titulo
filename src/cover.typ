// Cover simple con el logo de la universidad
// TODO: fix keyword arguments
#let cover(title: none, author: none, description: none, lead: none, header: none, date: none, uc-logo: none) = {
  set par(first-line-indent: 0pt)
  page(numbering: none, {
    set rect(width: 100%, height: 100%, fill: rgb("e4e5ea"))
    show par: set par(spacing: 1em)

    grid(
      columns: (1fr, 3fr),
      rows: (1fr, 6fr),
      inset: 8pt,
      grid.cell(align: right + horizon, image(uc-logo, width: 90%)),
      grid.vline(),
      grid.cell(
        align: left + horizon,
        block[
          #v(1em)
          #header
        ]
      ),
      grid.hline(),
      grid.cell[],
      grid.cell[
        #v(1fr)
        #pad(x: 1em, upper(align(center, text(size: 1.5em, weight: "bold", hyphenate: false, title)))),
        #v(1fr)
        #align(center, text(weight: "semibold", upper(author)))
        #v(1fr)
        #box(width: 75%, description)
        #v(1fr)
        #lead
        #v(1em)
        #date
      ]
    )
  })
}
