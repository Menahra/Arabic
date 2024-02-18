#import "../utils.typ": concealedText, columnGutter, rowGutter;
#import "constants.typ": defaultConjugationTextSize, defaultConjugationConcealedTextSize;

#let ConjugationEmrNehi(
  masculine: (
    singular: str,
    dual: str,
    plural: str
  ),
  feminine: (
    singular: str,
    dual: str,
    plural: str
  ),
  normalTextSize: defaultConjugationTextSize,
  concealedTextSize: defaultConjugationConcealedTextSize,
) = {
  let gridContent = (
    align(center, concealedText(masculine.plural, "أَنْتُمْ", normalTextSize, concealedTextSize)),
    align(center, concealedText(masculine.dual, "أَنْتُمَا", normalTextSize, concealedTextSize)),
    align(center, concealedText(masculine.singular, "أَنْتَ", normalTextSize, concealedTextSize)),
    align(center, concealedText(feminine.plural, "أَنْتُنَّ", normalTextSize, concealedTextSize)),
    align(center, concealedText(feminine.dual, "أَنْتُمَا", normalTextSize, concealedTextSize)),
    align(center, concealedText(feminine.singular, "أَنْتِ", normalTextSize, concealedTextSize)),
  )

  grid(
    columns: (1fr, 1fr, 1fr),
    row-gutter: rowGutter,
    column-gutter: columnGutter,
    ..gridContent
  )
}
