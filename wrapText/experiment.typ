// Idee, Wrapping mit Aufzählungen zu realisieren


#set list(marker: align(bottom + right)[This is some text])

- #lorem(100)

#box()

#[#rect(width: 25%)[#par(justify:true)[#lorem(10)]]]

#{[#rect(width: 25%)[#par(justify:true)[#lorem(10)]]] + [#par(justify:true)[#lorem(100)]]}

#align(left + bottom)[Was ist das hier für ein Text und wo findet er sich wieder?]
#align(right + bottom)[#lorem(30)]