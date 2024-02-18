#import "../utils.typ": columnGutter, rowGutter;

#let genderColumnGutter = 20pt;

#let IsmChart(
  masculine: (
    singular: (
      rafa: str,
      nasb: str,
      jarr: str,
    ),
    dual: (
      rafa: str,
      nasb: str,
      jarr: str,
    ),
    plural: (
      rafa: str,
      nasb: str,
      jarr: str,
    ),
  ),
  feminine: (
    singular: (
      rafa: str,
      nasb: str,
      jarr: str,
    ),
    dual: (
      rafa: str,
      nasb: str,
      jarr: str,
    ),
    plural: (
      rafa: str,
      nasb: str,
      jarr: str,
    ),
  ),
  textSize: 16pt,
  titleSize: 18pt,
) = {
  grid(
    columns: (1fr, 1fr),
    column-gutter: genderColumnGutter,
    row-gutter: 12pt,
    align(center, text(12pt)[feminine]),
    align(center, text(12pt)[masculine]),
    grid(
      columns: (1fr, 1fr, 1fr),
      row-gutter: rowGutter,
      column-gutter: columnGutter,
      align(center, text(textSize)[#feminine.plural.rafa]),
      align(center, text(textSize)[#feminine.dual.rafa]),
      align(center, text(textSize)[#feminine.singular.rafa]),
      align(center, text(textSize)[#feminine.plural.nasb]),
      align(center, text(textSize)[#feminine.dual.nasb]),
      align(center, text(textSize)[#feminine.singular.nasb]),
      align(center, text(textSize)[#feminine.plural.jarr]),
      align(center, text(textSize)[#feminine.dual.jarr]),
      align(center, text(textSize)[#feminine.singular.jarr]),
    ),
    grid(
      columns: (1fr, 1fr, 1fr),
      row-gutter: rowGutter,
      column-gutter: columnGutter,
      align(center, text(textSize)[#masculine.plural.rafa]),
      align(center, text(textSize)[#masculine.dual.rafa]),
      align(center, text(textSize)[#masculine.singular.rafa]),
      align(center, text(textSize)[#masculine.plural.nasb]),
      align(center, text(textSize)[#masculine.dual.nasb]),
      align(center, text(textSize)[#masculine.singular.nasb]),
      align(center, text(textSize)[#masculine.plural.jarr]),
      align(center, text(textSize)[#masculine.dual.jarr]),
      align(center, text(textSize)[#masculine.singular.jarr]),
    ),
  )
};
