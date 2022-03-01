let cons a b = a::b ;;
let cons8_fold l = l [8] cons;;
(*let rec fold l finish next = match l with*)
(*    | []-> finish*)
(*    | h::t -> next h (fold t finish next)*)
(*    ;;*)
(*let a = fold [1;2;3] 5*)
let add a b = a+b;;
let multiple a b = b mod a = 0;;

let rec sieve n m = match n with
    | n ->  if(n == m ) then
                []
            else
                n :: (sieve (n+1) m)
    ;;
let false_function x m = false ;; 



let p = sieve 2 25;;
open Printf
let () = List.iter (printf "%d ") p
