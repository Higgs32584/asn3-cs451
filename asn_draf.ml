let make_remove a b = b mod a = 0;;
let test = [1;4;5;4;6;7;8;4;2];;
let rec ismember x l = match l with
    |[] -> []
    | h::t-> if (make_remove h x) then ismember x t else h :: ismember x t
    ;;
let example2 = ismember 4 test
open Printf
let () = List.iter (printf "%d ") example2
