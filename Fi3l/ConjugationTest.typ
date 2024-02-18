#import "Conjugation.typ": Conjugation;

#show: document => Conjugation(
  thirdPerson: (
    masculine: (
      singular: "أَخْبَرَ",
      dual: "أَخْبَرَا",
      plural: "أَخْبَرُوا",
    ),
    feminine: (
      singular: "أَخْبَرَتْ",
      dual: "أَخْبَرَتَا",
      plural: "أَخْبَرْنَ",
    )
  ),
  secondPerson: (
    masculine: (
      singular: "أَخْبَرْتَ",
      dual: "أَخْبَرْتُمَا",
      plural: "أَخْبَرْتُمْ",
    ),
    feminine: (
      singular: "أَخْبَرْتِ",
      dual: "أَخْبَرْتُمَا",
      plural: "أَخْبَرْتُنَّ",
    )
  ),
  firstPerson: (
    singular: "أَخْبَرْتُ",
    plural: "نَخْبَرْنَا",
  )
);
