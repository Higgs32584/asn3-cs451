(*Function #1*)
let rec sieve n m = match n with
    | n ->  if(n > m ) then
                []
            else
                n :: (sieve (n+1) m)
    ;;
let p = sieve 1 20;;
open Printf
let () = List.iter (printf "%d \n") p



(*Function #2*)
let not_multiple a b = b mod a = 0;;
let test = [1;4;5;4;6;7;8;4;2];;
let rec make_remove x l = match l with
    |[] -> []
    | h::t-> if (not_multiple h x) then make_remove x t else h :: make_remove x t
    ;;
let example2 = make_remove 4 test
open Printf
let () = List.iter (printf "%d ") example2
