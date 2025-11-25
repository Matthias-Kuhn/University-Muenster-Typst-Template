#import "../translations.typ": translations

#let declaration_of_independent_processing() = {
  heading(
    outlined: true,
    numbering: none,
    bookmarked: true,
    translations.declaration-of-independent-processing,
  )

  text(translations.declaration-of-independent-processing-content)

  v(60pt)



  grid(
    columns: 1,
    gutter: 10pt,
    line(length: 200pt, stroke: 1pt),
    align(center, text([Matthias Kuhn, Münster, #datetime.today().display("[day].[month].[year]")], size: 9pt)),
  )

  v(40pt)

  text("I consent to having my thesis cross-checked with other texts to identify possible similarities and to having it stored in a database for this purpose. I confirm that I have not submitted the following thesis in part or whole as an examination paper before.")

  
  v(60pt)



  grid(
    columns: 1,
    gutter: 10pt,
    line(length: 200pt, stroke: 1pt),
    align(center, text([Matthias Kuhn, Münster, #datetime.today().display("[day].[month].[year]")], size: 9pt)),
  )
}