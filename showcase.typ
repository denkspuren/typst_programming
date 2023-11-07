# Towards literate programming

This would get me closer to explanatory and literate programming: Show the code and demonstrate its effect when executed. The idea is to add a label to the code block, locate it, extract field `text` and render it as markup with `eval`.

Example typst markup:

```typst
$ a^2 + b^2 = c^2 $
```<note>"
)

The `locate` result is:

#locate(loc => query(<note>, loc))

On the console I get the "text" field with

```
> typst query showcase.typ "<note>" --field "text"
[
  "$ a^2 + b^2 = c^2 $"
]
```