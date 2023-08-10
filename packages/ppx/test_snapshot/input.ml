(* pipe first *)

let f1 : int -> int = fun x -> x + 1
let f2 : int -> int -> int = fun a b -> a + b
let f3 : int -> b:int -> c:int -> int = fun a ~b ~c -> a + b + c
let f4 : int -> int -> int = fun a b -> a + b
let f5 : int -> int -> int -> int = fun a b c -> a + b + c

let () =
  let x : int option = 1 |. Some in
  match x with Some 1 -> assert true | _ -> assert false

let () =
  let x : int option option = 1 |. Some |. Some in
  match x with Some (Some 1) -> assert true | _ -> assert false

let x : int = (1, 2) |. fun (a, b) -> a + b

let () =
  let f : int -> int = fun x -> x + 1 in
  let x : int * int * int = 1 |. (f, f, f) in
  match x with 2, 2, 2 -> assert true | _ -> assert false

let () =
  let f : int -> a:int -> b:int -> int = fun x ~a ~b -> x + a + b in
  let x : int * int * int = 1 |. (f ~a:2 ~b:3, f ~a:2 ~b:3, f ~a:2 ~b:3) in
  match x with 6, 6, 6 -> assert true | _ -> assert false

let () =
  let x : int option * int option * int option = 1 |. (Some, Some, Some) in
  match x with Some 1, Some 1, Some 1 -> assert true | _ -> assert false

let () =
  let x =
    (1, 2) |. ((fun (a, b) -> a + b), (fun (a, b) -> a + b), fun (a, b) -> a + b)
  in
  match x with 3, 3, 3 -> assert true | _ -> assert false

let fn1 ?foo () = 1 + match foo with Some x -> x | None -> 2

let fn2 ?bar x =
  let bar = match bar with Some bar -> bar | None -> 4 in
  2 + bar + x

type field = { send : int -> int }

let self = { send = (fun a -> a + 1) }
let adder a b = a + b
let addFive = 5 |. adder
let ten1 = 5 |. addFive
let ten2 = 5 |. (5 |. adder)

let _ =
  Lwt_js.sleep 1.
  |.
  let open Lwt in
  bind (fun () ->
      print_endline "foo";
      return ())

(* Make sure nested expressions don't cause slowness *)
let lowerWithChildrenComplex =
  (div ~className:"flex-container"
     ~children:
       [
         (div ~className:"sidebar"
            ~children:
              [
                (h2 ~className:"title" ~children:[] () [@JSX]);
                (nav ~className:"menu"
                   ~children:
                     [
                       (ul
                          ~children:
                            [
                              examples
                              |. List.map (fun e ->
                                     (li ~key:e.path
                                        ~children:
                                          [
                                            (a ~href:e.path
                                               ~onClick:(fun event ->
                                                 ReactEvent.Mouse.preventDefault
                                                   event;
                                                 ReactRouter.push e.path)
                                               ~children:[ e.title |. s ]
                                               () [@JSX]);
                                          ]
                                        () [@JSX]))
                              |. React.list;
                            ]
                          () [@JSX]);
                     ]
                   () [@JSX]);
              ]
            () [@JSX]);
       ]
     () [@JSX])
;;

(* double hash *)

a##b;;
a##b##c
(* a ## (b##c) *)

(* regex *)

let basic = [%re "/foo/"]
let flag_global = [%re "/foo/g"]
let flags_global_multiline_insensitive = [%re "/foo/gim"]
let scape_digis_with_global = [%re "/(\\d+)/g"]
let payload_should_be_a_string = [%re apply];;

(* effect *)

[%effect
  React.useEffect
    (Js.log "ok";
     (None, [||]))]

let _ = [%effect None]

(* browser_only *)
let _ = [%browser_only Webapi.Dom.getElementById "foo"]
let _ = [%browser_only fun () -> ()]

let%browser_only valueFromEvent = Webapi.Dom.getElementById "foo"
let%browser_only valueFromEvent evt = Webapi.Dom.getElementById "foo"

let%browser_only valueFromEvent evt moar_arguments =
  Webapi.Dom.getElementById "foo"
