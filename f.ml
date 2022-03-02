(*This is my Code *)
let am_i_multiple a b = a mod b = 0;;
(*Function #1*)
(*PURPOSE*)
(*returns a function that takes a list and returns the elements of that list that are not multiples of n*)
let rec delete_mult n l = match l with
    |[] -> []
    | h::t-> if (am_i_multiple h n) then delete_mult n t else h :: delete_mult n t
    ;;
;;

(*Function #2*)
(*(filter l), for input list l, returns a list containing the first element of l together with the remaining elements of l that are not multiples of the first element of l.*)
let rec filter1 l = match l with
    | []-> []
    | h::t-> h:: delete_mult h l
    ;;
(*Function #3*)
(*Write the function filter2: (This function is similar to filter.) (filter2 l) returns a list*)
(*containing the first element of l followed by the result of filter2 applied to the list obtained by*)
(*removing form the remainder of l multiples of the first element of l. If the list is empty, then just*)
(*return the empty list*)
let rec filter2 l = match l with
    | []-> []
    | h::t-> h:: delete_mult h l
    ;;
(*Function #4*)
(*PURPOSE--> returns the list of integers (n n + 1 ... m). *)
let rec make_list n m = match n with
    | n ->  if(n > m ) then
                []
            else
                n :: (make_list (n+1) m)
    ;;
