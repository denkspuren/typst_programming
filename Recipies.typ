= Typst Recipies

#let renderLabel(label) = {
  locate(loc => {
      let res = query(label, loc)
      return eval(res.first().text, mode: "markup")
    }
  )
}

== Hyphenation

To force hyphenation in certain places, use `-?` for that. Example: `b-?ad hyp-?hen-?ation`

Source: #link("https://discord.com/channels/1054443721975922748/1171083569192501268")

== Vertical Bar left to some text

For this effect:

#renderLabel(<letsolution2>)

Use the stroke parameter for `rect`/`box`/`block` (whatever you want to use here) and only apply it on the left:

```typst
+ #lorem(10)\
  #rect(fill: luma(240), stroke: (left: 0.25em))[
    *Solution:* #lorem(10)

    $ a_(n+1)x^n = 2... $
  ]
```<letsolution2>

Source: https://discord.com/channels/1054443721975922748/1171244599268872274

