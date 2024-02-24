#import "../utils.typ": concealedText, columnGutter, rowGutter;

#let titleTextSize = 20pt
#let concealedTextSize = 11pt
#let normalTextSize = 18pt
#let captionTextSize = 9pt

#let SarfTable(
  familyName: str,
  pastTense: str,
  presentTense: str,
  masdar: str,
  ismFaail: str,
  pastPassive: none,
  presentPassive: none,
  ismMafuul: none,
  emr: str,
  nehi: str,
  zharf: (none, none, none)
) = {
  let gridContent = (
    align(center, concealedText(ismFaail, "فَهُوَ", normalTextSize, concealedTextSize)),
    align(center, text(normalTextSize)[#masdar]),
    align(center, text(normalTextSize)[#presentTense]),
    align(center, text(normalTextSize)[#pastTense]),
    [],
    align(center, concealedText(zharf.join(text(concealedTextSize, gray)[وَ ]), "الظَّرْفُ مِنْهُ", normalTextSize, concealedTextSize)),
    align(center, concealedText(nehi, "وَ النَّهِيُ عَنْهُ", normalTextSize, concealedTextSize)),
    align(center, concealedText(emr, "اَلْأَمْرُ مِنْهُ", normalTextSize, concealedTextSize))
  )

  if pastPassive != none and presentPassive != none and ismMafuul != none {
    gridContent.insert(
      4,
      align(center, concealedText(ismMafuul, "فَهُوَ", normalTextSize, concealedTextSize))
    )
    gridContent.insert(
      5,
      align(center, text(normalTextSize)[#masdar])
    )
    gridContent.insert(
      6,
      align(center, text(normalTextSize)[#presentPassive])
    )
    gridContent.insert(
      7,
      align(center, text(normalTextSize)[#pastPassive])
    )
  }

  rect[
    #align(center, text(titleTextSize)[بَاب #familyName])
    #grid(
      columns: (1fr, 1fr, 1fr, 1fr),
      row-gutter: rowGutter,
      column-gutter: columnGutter,
      ..gridContent
    )
    #v(6pt) // to keep rect below harakah of last line
  ]
  align(center, text(captionTextSize)[Sarf table for #familyName])
}
