# Typst Programming

My programming experiments with [Typst](https://typst.app/). Typst is a new programmable markup-based typesetting system.

By chance, I found Typst on Wikipedia. Typst is mentioned in an article on typesetting, see ["Other text formatters"](https://en.wikipedia.org/wiki/Typesetting#Other_text_formatters).

Typst is invented by Laurenz Mädje and presented in his Master's thesis titled "[A Programmable Markup Language for Typesetting](https://www.user.tu-berlin.de/laurmaedje/programmable-markup-language-for-typesetting.pdf)" (2022-09-08, TU Berlin).

## `extractText`

[extractText](extractText/extractText.typ) is my very first Typst programm. It fixes an [issue](https://github.com/typst/templates/issues/12#issuecomment-1793845765) with titles in Typst's default templates.

## `wrapText`

Unfortunately, there is no solution in Typst to wrap text around a textbox, see [wrapText](wrapText/README.md). That's too bad!

## Literate Programming for Typst in Typst

Just an idea: I guess it is possible to write Typst programms as literate programms with an appropriate Typst template.

My first attempts towards this idea can be found in folder [LiterateProgramming](LiterateProgramming/)