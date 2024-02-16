#import "../utils.typ": concealedText, columnGutter, rowGutter;
#import "constants.typ": defaultConjugationTextSize, defaultConjugationConcealedTextSize;

#let Conjugation(
  thirdPersonMasculineSingular: str,
  thirdPersonMasculineDual: str,
  thirdPersonMasculinePlural: str,
  thirdPersonFeminineSingular: str,
  thirdPersonFeminineDual: str,
  thirdPersonFemininePlural: str,
  secondPersonMasculineSingular: str,
  secondPersonMasculineDual: str,
  secondPersonMasculinePlural: str,
  secondPersonFeminineSingular: str,
  secondPersonFeminineDual: str,
  secondPersonFemininePlural: str,
  firstPersonSingular: str,
  firstPersonPlural: str,
  normalTextSize: defaultConjugationTextSize,
  concealedTextSize: defaultConjugationConcealedTextSize,
) = {
  let gridContent = (
    align(center, concealedText(thirdPersonMasculinePlural, "هُمْ", normalTextSize, concealedTextSize)),
    align(center, concealedText(thirdPersonMasculineDual, "هُمَا", normalTextSize, concealedTextSize)),
    align(center, concealedText(thirdPersonMasculineSingular, "هَوَ", normalTextSize, concealedTextSize)),
    align(center, concealedText(thirdPersonFemininePlural, "هُنَّ", normalTextSize, concealedTextSize)),
    align(center, concealedText(thirdPersonFeminineDual, "هُمَا", normalTextSize, concealedTextSize)),
    align(center, concealedText(thirdPersonFeminineSingular, "هِيَ", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPersonMasculinePlural, "أَنْتُمْ", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPersonMasculineDual, "أَنْتُمَا", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPersonMasculineSingular, "أَنْتَ", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPersonFemininePlural, "أَنْتُنَّ", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPersonFeminineDual, "أَنْتُمَا", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPersonFeminineSingular, "أَنْتِ", normalTextSize, concealedTextSize)),
    [],
    align(center, concealedText(firstPersonPlural, "نَحْنُ", normalTextSize, concealedTextSize)),
    align(center, concealedText(firstPersonSingular, "أَنَا", normalTextSize, concealedTextSize)),
  )

  grid(
    columns: (1fr, 1fr, 1fr),
    row-gutter: rowGutter,
    column-gutter: columnGutter,
    ..gridContent
  )
}
