#import "../utils.typ": columnGutter, rowGutter;

#let genderColumnGutter = 20pt;

#let MasdarZharfChart(
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
  textSize: 16pt,
) = {
  grid(
      columns: (1fr, 1fr, 1fr),
      row-gutter: rowGutter,
      column-gutter: columnGutter,
      align(center, text(textSize)[#plural.rafa]),
      align(center, text(textSize)[#dual.rafa]),
      align(center, text(textSize)[#singular.rafa]),
      align(center, text(textSize)[#plural.nasb]),
      align(center, text(textSize)[#dual.nasb]),
      align(center, text(textSize)[#singular.nasb]),
      align(center, text(textSize)[#plural.jarr]),
      align(center, text(textSize)[#dual.jarr]),
      align(center, text(textSize)[#singular.jarr]),
  );
};
