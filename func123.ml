(*Function #1*)
let rec sieve n m = match n with
    | n ->  if(n > m ) then
                []
            else
                n :: (sieve (n+1) m)
    ;;
let example1 = sieve 1 20;;
open Printf
(*let () = List.iter (printf "%d \n") p*)


(*Function #2*)
let not_multiple a b = a mod b = 0;;
let test = [4;4;5;4;6;7;8;4;2];;
let rec make_remove x l = match l with
    |[] -> []
    | h::t-> if (not_multiple h x) then make_remove x t else h :: make_remove x t
    ;;
let example2 = make_remove 4 test
let () = List.iter (printf "%d ") example2
;;
(*Function 3*)
(*(filter l), for input list l, returns a list containing the first element of l together with the remaining elements of l that are not multiples of the first element of l.*)
(*(hint: use make_remove)*)
Printf.printf("|");;
let test = [4;1;5;4;6;7;8;4;2];;
let rec filter1 l = match l with
    | []-> []
    | h::t-> h:: make_remove h l
    ;;
let bob= filter1 test;;
let () = List.iter (printf "%d ") bob
(*Function 4*)
(*Write the function filter2: (This function is similar to filter.) (filter2 l) returns a list*)
(*containing the first element of l followed by the result of filter2 applied to the list obtained by*)
(*removing form the remainder of l multiples of the first element of l. If the list is empty, then just*)
(*return the empty list*)
let rec filter2 l = match l with
    | []-> []
    | h::t-> h:: make_remove h l
    ;;
let bob= filter2 test;;
(*let () = List.iter (printf "%d ") bob*)
