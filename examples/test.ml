open Js
open JQuery
open Effects

module D = Dom_html
let d = D.document

let jss = Js.string
let _ = (jQ "div.foo")##css (jss "color", jss "red")

let _ =
  (jQ "#clickme")##click (some (wrap_callback (fun _ ->
    (jQ "#square")##slideDown (some (of_duration Slow), null, some (wrap_callback (fun _ ->
      D.window##alert(jss "Done sliding")))))))

let _ =
  ((jQ "b")##clone(Js._false, Js._false))##prependTo(jss "p")

