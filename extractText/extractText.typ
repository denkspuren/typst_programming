// see https://github.com/typst/templates/issues/12#issuecomment-1793845765

#let extractText(element) = {
  if type(element) == content {
    if element == [ ] { return " " }
    return extractText(element.fields()).trim() }
  if type(element) == dictionary { return extractText(element.values()) }
  if type(element) == array {
    return element.fold("", (res, item) => res + extractText(item))
  }
  if type(element) == bool { return "" }
  return str(element)
}

#assert.eq(extractText("hey"), "hey")
#assert.eq(extractText(12), "12")
#assert.eq(extractText(12.0), "12")
#assert.eq(extractText(12.1), "12.1")
#assert.eq(extractText(false), "")
#assert.eq(extractText(version(1,2,3)), "1.2.3")
#assert.eq(extractText((1,2,3)), "123")
#assert.eq(extractText((4,(1,"Hey",12.0),(hey: 2))), "41Hey122")
#assert.eq(extractText([This is some text.]), "This is some text.")
#assert.eq(extractText([This is _some_ text.]), "This is some text.")
#assert.eq(extractText([ Is $x^2$ an _even_ Function? ]), "Is x2 an even Function?")
#assert.eq(extractText([Is $x^2$ an _even_ Function?]), "Is x2 an even Function?")
#assert.eq(extractText([[Hey] [you]]), "[Hey] [you]")

/*
#let title = [ Is $x^2$ an _even_ Function? ]

#title

#extractText(title)
*/

