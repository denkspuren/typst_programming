# `extractText`

Diese Funktion ist mein erster Beitrag und löst ein Problem mit den standardmäßig ausgelieferten Typst-Templates, siehe

https://github.com/typst/templates/issues/12#issuecomment-1793845765

Man kann auch überlegen (so ein [Vorschlag auf Discord](https://discord.com/channels/1054443721975922748/1088371867913572452/1170843910281637898)), etwas vergleichbares zu [`\texorpdfstring`](https://tex.stackexchange.com/questions/699195/how-to-use-texorpdfstring-correctly-and-properly) umzusetzen. Denn was natürlich eine berechtigte Kritik an `extractText` ist: Aus dem Markup lässt sich nicht immer eine automatisierte und zufriedenstellende Reintext-Form ableiten. Beispiel: Aus $x^2$ wird `x2` statt `x^2`.

