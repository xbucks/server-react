open Alcotest

module React = struct
  let attribute_to_string (k, v) = Printf.sprintf "%s=\"%s\"" k v

  let attributes_to_string attrs =
    let attributes = List.filter (fun (k, v) -> v != "" || k != "") attrs in
    match attributes with
    | [] -> ""
    | _ -> " " ^ String.concat " " (attributes |> List.map attribute_to_string)

  let createElement tag attributes =
    Printf.sprintf "<%s%s></%s>" tag (attributes_to_string attributes) tag
end

module ReactDOMServer = struct
  let renderToString _component = ""
end

let expect_msg = "should be equal"
let assert_string left right = (check string) expect_msg right left
let test_div () = assert_string (React.createElement "div" []) "<div></div>"

let test_attributes () =
  assert_string (React.createElement "div" [ ("", "") ]) "<div></div>"

let test_children () =
  assert_string (React.createElement "div" []) "<div></div>"

let test_closing_tag () =
  assert_string (React.createElement "div" []) "<div></div>"

let () =
  let open Alcotest in
  run "Test suit"
    [ ( "React"
      , [ test_case "div" `Quick test_div
        ; test_case "attributes" `Quick test_attributes
        ; test_case "children" `Quick test_children
        ; test_case "self-closing tag" `Quick test_closing_tag
        ] )
    ; ("ReactDOMServer", [])
    ]
