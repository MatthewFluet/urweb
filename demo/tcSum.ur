fun sum (t ::: Type) (_ : num t) (fs ::: {Unit}) (x : $(mapUT t fs)) =
    foldUR [t] [fn _ => t]
    (fn (nm :: Name) (rest :: {Unit}) [[nm] ~ rest] n acc => n + acc)
    zero [fs] x

fun main () = return <xml><body>
  {[sum {A = 0, B = 1}]}<br/>
  {[sum {C = 2.1, D = 3.2, E = 4.3}]}
</body></xml>