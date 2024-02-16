#import "../utils.typ": concealedText, columnGutter, rowGutter;
#import "constants.typ": defaultConjugationTextSize, defaultConjugationConcealedTextSize;

#let ConjugationEmrNehi(
  secondPersonMasculineSingular: str,
  secondPersonMasculineDual: str,
  secondPersonMasculinePlural: str,
  secondPersonFeminineSingular: str,
  secondPersonFeminineDual: str,
  secondPersonFemininePlural: str,
  normalTextSize: defaultConjugationTextSize,
  concealedTextSize: defaultConjugationConcealedTextSize,
) = {
  let gridContent = (
    align(center, concealedText(secondPersonMasculinePlural, "أَنْتُمْ", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPersonMasculineDual, "أَنْتُمَا", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPersonMasculineSingular, "أَنْتَ", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPersonFemininePlural, "أَنْتُنَّ", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPersonFeminineDual, "أَنْتُمَا", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPersonFeminineSingular, "أَنْتِ", normalTextSize, concealedTextSize)),
  )

  grid(
    columns: (1fr, 1fr, 1fr),
    row-gutter: rowGutter,
    column-gutter: columnGutter,
    ..gridContent
  )
}
