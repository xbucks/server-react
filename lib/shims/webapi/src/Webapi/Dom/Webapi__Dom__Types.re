/*** enums, bitmaks and constants ***/
type compareHow =
  | StartToStart
  | StartToEnd
  | EndToEnd
  | EndToStart;

let encodeCompareHow =
  fun /* internal */
  | StartToStart => 0
  | StartToEnd => 1
  | EndToEnd => 2
  | EndToStart => 3;

type compareResult =
  | Before
  | Equal
  | After
  | Unknown;

let decodeCompareResult =
  fun /* internal */
  | (-1) => Before
  | 0 => Equal
  | 1 => After
  | _ => Unknown;

type compatMode =
  | BackCompat
  | CSS1Compat
  | Unknown;

let decodeCompatMode =
  fun /* internal */
  | "BackCompat" => BackCompat
  | "CSS1Compat" => CSS1Compat
  | _ => Unknown;

type contentEditable =
  | True
  | False
  | Inherit
  | Unknown;

let encodeContentEditable =
  fun /* internal */
  | True => "true"
  | False => "false"
  | Inherit => "inherit"
  | Unknown => "";

let decodeContentEditable =
  fun /* internal */
  | "true" => True
  | "false" => False
  | "inherit" => Inherit
  | _ => Unknown;

type deltaMode =
  | Pixel
  | Line
  | Page;

let decodeDeltaMode =
  fun /* internal */
  | 0 => Pixel
  | 1 => Line
  | 2 => Page
  | _ => raise(Invalid_argument("invalid deltaMode"));

type designMode =
  | On
  | Off
  | Unknown;

let encodeDesignMode =
  fun /* internal */
  | On => "on"
  | Off => "off"
  | Unknown => "";

let decodeDesignMode =
  fun /* internal */
  | "on" => On
  | "off" => Off
  | _ => Unknown;

type dir =
  | Ltr
  | Rtl
  | Unknown;

let encodeDir =
  fun /* internal */
  | Ltr => "ltr"
  | Rtl => "rtl"
  | Unknown => "";

let decodeDir =
  fun /* internal */
  | "ltr" => Ltr
  | "rtl" => Rtl
  | _ => Unknown;

/** @since 0.17.1 */
module EventPhase = {
  type t =
    | None
    | CapturingPhase
    | AtTarget
    | BubblingPhase
    | Unknown;

  let decode =
    fun /* internal */
    | 1 => CapturingPhase
    | 2 => AtTarget
    | 3 => BubblingPhase
    | 0 => None
    | _ => Unknown;
};

[@deprecated "Use EventPhase.t"]
type eventPhase =
  EventPhase.t = | None | CapturingPhase | AtTarget | BubblingPhase | Unknown;

type filterAction =
  | Accept
  | Reject
  | Skip;

let encodeFilterAction =
  fun
  | Accept => 1
  | Reject => 2
  | Skip => 3;

type insertPosition =
  | BeforeBegin
  | AfterBegin
  | BeforeEnd
  | AfterEnd;

let encodeInsertPosition =
  fun /* internal */
  | BeforeBegin => "beforebegin"
  | AfterBegin => "afterbegin"
  | BeforeEnd => "beforeend"
  | AfterEnd => "afterend";

type modifierKey =
  | Alt
  | AltGraph
  | CapsLock
  | Control
  | Fn
  | FnLock
  | Hyper
  | Meta
  | NumLock
  | ScrollLock
  | Shift
  | Super
  | Symbol
  | SymbolLock;

let encodeModifierKey =
  fun /* internal */
  | Alt => "Alt"
  | AltGraph => "AltGraph"
  | CapsLock => "CapsLock"
  | Control => "Control"
  | Fn => "Fn"
  | FnLock => "FnLock"
  | Hyper => "Hyper"
  | Meta => "Meta"
  | NumLock => "NumLock"
  | ScrollLock => "ScrollLock"
  | Shift => "Shift"
  | Super => "Super"
  | Symbol => "Symbol"
  | SymbolLock => "SymbolLock";

type nodeType =
  | Element
  | Attribute /* deprecated */
  | Text
  | CDATASection /* deprecated */
  | EntityReference /* deprecated */
  | Entity /* deprecated */
  | ProcessingInstruction
  | Comment
  | Document
  | DocumentType
  | DocumentFragment
  | Notation /* deprecated */
  | Unknown;

let decodeNodeType =
  fun /* internal */
  | 1 => Element
  | 2 => Attribute
  | 3 => Text
  | 4 => CDATASection
  | 5 => EntityReference
  | 6 => Entity
  | 7 => ProcessingInstruction
  | 8 => Comment
  | 9 => Document
  | 10 => DocumentType
  | 11 => DocumentFragment
  | 12 => Notation
  | _ => Unknown;

type pointerType =
  | Mouse
  | Pen
  | Touch
  | Unknown;

let decodePointerType =
  fun /* itnernal */
  | "mouse" => Mouse
  | "pen" => Pen
  | "touch|" => Touch
  | _ => Unknown;

type readyState =
  | Loading
  | Interactive
  | Complete
  | Unknown;

let decodeReadyState =
  fun /* internal */
  | "loading" => Loading
  | "interactive" => Interactive
  | "complete" => Complete
  | _ => Unknown;

type shadowRootMode =
  | Open
  | Closed;

let decodeShadowRootMode =
  fun /* internal */
  | "open" => Open
  | "closed" => Closed
  | _ => raise(Invalid_argument("Unknown shadowRootMode"));

type visibilityState =
  | Visible
  | Hidden
  | Prerender
  | Unloaded
  | Unknown;

let decodeVisibilityState =
  fun /* internal */
  | "visible" => Visible
  | "hidden" => Hidden
  | "prerender" => Prerender
  | "unloaded" => Unloaded
  | _ => Unknown;

type image;

module type WhatToShowT = {
  type t;

  let _All: t;
  let _Element: t;
  let _Attribute: t;
  let _Text: t;
  let _CDATASection: t;
  let _EntityReference: t;
  let _Entity: t;
  let _ProcessingInstruction: t;
  let _Comment: t;
  let _Document: t;
  let _DocumentType: t;
  let _DocumentFragment: t;
  let _Notation: t;

  let many: list(t) => t;
};

module WhatToShow: WhatToShowT = {
  type t = int;

  let _All = (-1);
  let _Element = 1;
  let _Attribute = 2;
  let _Text = 4;
  let _CDATASection = 8;
  let _EntityReference = 16;
  let _Entity = 32;
  let _ProcessingInstruction = 64;
  let _Comment = 128;
  let _Document = 256;
  let _DocumentType = 512;
  let _DocumentFragment = 1024;
  let _Notation = 2048;

  let rec many =
    fun
    | [] => 0
    | [hd, ...rest] => hd lor many(rest);
};
