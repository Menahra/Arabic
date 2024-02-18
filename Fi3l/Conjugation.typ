#import "../utils.typ": concealedText, columnGutter, rowGutter;
#import "constants.typ": defaultConjugationTextSize, defaultConjugationConcealedTextSize;

#let Conjugation(
  thirdPerson: (
    masculine: (
      singular: str,
      dual: str,
      plural: str,
    ),
    feminine: (
      singular: str,
      dual: str,
      plural: str,
    )
  ),
  secondPerson: (
    masculine: (
      singular: str,
      dual: str,
      plural: str,
    ),
    feminine: (
      singular: str,
      dual: str,
      plural: str,
    )
  ),
  firstPerson: (
    singular: str,
    plural: str
  ),
  normalTextSize: defaultConjugationTextSize,
  concealedTextSize: defaultConjugationConcealedTextSize,
) = {
  let gridContent = (
    align(center, concealedText(thirdPerson.masculine.plural, "هُمْ", normalTextSize, concealedTextSize)),
    align(center, concealedText(thirdPerson.masculine.dual, "هُمَا", normalTextSize, concealedTextSize)),
    align(center, concealedText(thirdPerson.masculine.singular, "هَوَ", normalTextSize, concealedTextSize)),
    align(center, concealedText(thirdPerson.feminine.plural, "هُنَّ", normalTextSize, concealedTextSize)),
    align(center, concealedText(thirdPerson.feminine.dual, "هُمَا", normalTextSize, concealedTextSize)),
    align(center, concealedText(thirdPerson.feminine.singular, "هِيَ", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPerson.masculine.plural, "أَنْتُمْ", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPerson.masculine.dual, "أَنْتُمَا", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPerson.masculine.singular, "أَنْتَ", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPerson.feminine.plural, "أَنْتُنَّ", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPerson.feminine.dual, "أَنْتُمَا", normalTextSize, concealedTextSize)),
    align(center, concealedText(secondPerson.feminine.singular, "أَنْتِ", normalTextSize, concealedTextSize)),
    [],
    align(center, concealedText(firstPerson.plural, "نَحْنُ", normalTextSize, concealedTextSize)),
    align(center, concealedText(firstPerson.singular, "أَنَا", normalTextSize, concealedTextSize)),
  )

  grid(
    columns: (1fr, 1fr, 1fr),
    row-gutter: rowGutter,
    column-gutter: columnGutter,
    ..gridContent
  )
}
