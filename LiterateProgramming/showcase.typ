= Towards literate programming

This gets me closer to explanatory and literate programming: Show the code and demonstrate its effect (or vice versa) when executed.

== First Solution: Work with strings

This solution requires to embed a solution into a string like this:

#let pythagoras = "
$ a^2 + b^2 = c^2 $
"

```typst
#let pythagoras = "
$ a^2 + b^2 = c^2 $
"
```

You might just show the markup using `eval`

```typst
#eval("\`\`\`typst " + pythagoras + " \`\`\`", mode: "markup")
```

having this effect

#eval("```typst " + pythagoras + " ```", mode: "markup")

To render the markup just write

```typst
#eval(pythagoras, mode: "markup")
```

having this effect

#eval(pythagoras, mode: "markup")


== Second Solution: Work with code blocks and labels

A more advanced solution is to embed the code in a code block and attach a label to it. The basic idea is to locate the label, get the code block, extract field `text` and render it as markup with `eval`.

#let renderLabel(label) = {
  locate(loc => {
      let res = query(label, loc)
      return eval(res.first().text, mode: "markup")
    }
  )
}

```typst
#let renderLabel(label) = {
  locate(loc => {
      let res = query(label, loc)
      return eval(res.first().text, mode: "markup")
    }
  )
}
```

== Example: Rendering first, markup second

Mathematical formulas can be beautifully typeset with Typst. Here is Pythagoras' theorem as an example.

#renderLabel(<pythagoras_theorem>)

The required markup to typeset Pythagoras' theorem looks like follows:

```typst
$ a^2 + b^2 = c^2 $
```<pythagoras_theorem>

== Example: Markup first, rendering second

The following markup

```typst
$ f(x) = x^2 $
```<fx_x2>

renders as

#renderLabel(<fx_x2>)

For the following code: `query()` always returns an array and `locate` always returns content.

/*
#let r_text = locate(loc => {
  let res = query(<note>, loc)
  return eval(res.first().text)
  }
)

#r_text

On the console I get the "text" field with

```
> typst query showcase.typ "<note>" --field "text"
[
  "$ a^2 + b^2 = c^2 $"
]
```
*/