#let renderLabel(label) = {
  locate(loc => {
      let res = query(label, loc)
      return eval(res.first().text, mode: "markup")
    }
  )
}

// #[Hello] #[World]
#{[Hello] + [ ] + [World 1]}<one>

#([Hello] + [ ] + [World 2])<two>

#([Hello], [ ], [World 3])<three>

#("name" : 3).name<four>

#let first = locate(loc => query(<one>, loc).first())

#let second = locate(loc => query(<two>, loc).first())

#{first + second}

#(first + second)

#first + #second

#[ #first \ #second ]

