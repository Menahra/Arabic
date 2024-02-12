#let rowGutter = 26pt;
#let columnGutter = 3pt;

#let concealedText(
  normalText,
  grayText,
  normalTextSize,
  grayTextSize
) = {
  text(grayPartTextSize, gray)[#grayPart ]
  text(normalPartTextSize)[#normalPart]
};
