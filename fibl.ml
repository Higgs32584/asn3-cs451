(*This is my code!
    Michael Higgins
    FUNCTION
    PURPOSE:supposed to print fib numbers, unfortunately does not :(
    INPUTS N-> value goes in until gets to zero
    OUTPUT: LIST
    *)
let new_thing a = [a+1;a+2];;
let rec fibonacci n =
     if n < 0 then []
     else n :: n-2 :: fibonacci (n - 1)
;;
    ;;
open Printf
let a = [1;2;3;4;5]
let slipknot x = false;;
let b = fibonacci 10;;
let () = List.iter (printf "%d ")  b
