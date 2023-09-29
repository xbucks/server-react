type t = (string * string) list

let add name item (map : t) =
  match item with Some i -> (name, i) :: map | None -> map

[@@@ocamlformat "disable"]

let make
  ?(azimuth : string option)
  ?(background : string option)
  ?(backgroundAttachment : string option)
  ?(backgroundColor : string option)
  ?(backgroundImage : string option)
  ?(backgroundPosition : string option)
  ?(backgroundRepeat : string option)
  ?(border : string option)
  ?(borderCollapse : string option)
  ?(borderColor : string option)
  ?(borderSpacing : string option)
  ?(borderStyle : string option)
  ?(borderTop : string option)
  ?(borderRight : string option)
  ?(borderBottom : string option)
  ?(borderLeft : string option)
  ?(borderTopColor : string option)
  ?(borderRightColor : string option)
  ?(borderBottomColor : string option)
  ?(borderLeftColor : string option)
  ?(borderTopStyle : string option)
  ?(borderRightStyle : string option)
  ?(borderBottomStyle : string option)
  ?(borderLeftStyle : string option)
  ?(borderTopWidth : string option)
  ?(borderRightWidth : string option)
  ?(borderBottomWidth : string option)
  ?(borderLeftWidth : string option)
  ?(borderWidth : string option)
  ?(bottom : string option)
  ?(captionSide : string option)
  ?(clear : string option)
  ?(color : string option)
  ?(content : string option)
  ?(counterIncrement : string option)
  ?(counterReset : string option)
  ?(cue : string option)
  ?(cueAfter : string option)
  ?(cueBefore : string option)
  ?(cursor : string option)
  ?(direction : string option)
  ?(display : string option)
  ?(elevation : string option)
  ?(emptyCells : string option)
  ?(float : string option)
  ?(font : string option)
  ?(fontFamily : string option)
  ?(fontSize : string option)
  ?(fontSizeAdjust : string option)
  ?(fontStretch : string option)
  ?(fontStyle : string option)
  ?(fontVariant : string option)
  ?(fontWeight : string option)
  ?(height : string option)
  ?(left : string option)
  ?(letterSpacing : string option)
  ?(lineHeight : string option)
  ?(listStyle : string option)
  ?(listStyleImage : string option)
  ?(listStylePosition : string option)
  ?(listStyleType : string option)
  ?(margin : string option)
  ?(marginTop : string option)
  ?(marginRight : string option)
  ?(marginBottom : string option)
  ?(marginLeft : string option)
  ?(markerOffset : string option)
  ?(marks : string option)
  ?(maxHeight : string option)
  ?(maxWidth : string option)
  ?(minHeight : string option)
  ?(minWidth : string option)
  ?(orphans : string option)
  ?(outline : string option)
  ?(outlineColor : string option)
  ?(outlineStyle : string option)
  ?(outlineWidth : string option)
  ?(overflow : string option)
  ?(overflowX : string option)
  ?(overflowY : string option)
  ?(padding : string option)
  ?(paddingTop : string option)
  ?(paddingRight : string option)
  ?(paddingBottom : string option)
  ?(paddingLeft : string option)
  ?(page : string option)
  ?(pageBreakAfter : string option)
  ?(pageBreakBefore : string option)
  ?(pageBreakInside : string option)
  ?(pause : string option)
  ?(pauseAfter : string option)
  ?(pauseBefore : string option)
  ?(pitch : string option)
  ?(pitchRange : string option)
  ?(playDuring : string option)
  ?(position : string option)
  ?(quotes : string option)
  ?(richness : string option)
  ?(right : string option)
  ?(size : string option)
  ?(speak : string option)
  ?(speakHeader : string option)
  ?(speakNumeral : string option)
  ?(speakPunctuation : string option)
  ?(speechRate : string option)
  ?(stress : string option)
  ?(tableLayout : string option)
  ?(textAlign : string option)
  ?(textDecoration : string option)
  ?(textIndent : string option)
  ?(textShadow : string option)
  ?(textTransform : string option)
  ?(top : string option)
  ?(unicodeBidi : string option)
  ?(verticalAlign : string option)
  ?(visibility : string option)
  ?(voiceFamily : string option)
  ?(volume : string option)
  ?(whiteSpace : string option)
  ?(widows : string option)
  ?(width : string option)
  ?(wordSpacing : string option)
  ?(zIndex : string option)
  ?(opacity : string option)
  ?(backgroundOrigin : string option)
  ?(backgroundSize : string option)
  ?(backgroundClip : string option)
  ?(borderRadius : string option)
  ?(borderTopLeftRadius : string option)
  ?(borderTopRightRadius : string option)
  ?(borderBottomLeftRadius : string option)
  ?(borderBottomRightRadius : string option)
  ?(borderImage : string option)
  ?(borderImageSource : string option)
  ?(borderImageSlice : string option)
  ?(borderImageWidth : string option)
  ?(borderImageOutset : string option)
  ?(borderImageRepeat : string option)
  ?(boxShadow : string option)
  ?(columns : string option)
  ?(columnCount : string option)
  ?(columnFill : string option)
  ?(columnGap : string option)
  ?(columnRule : string option)
  ?(columnRuleColor : string option)
  ?(columnRuleStyle : string option)
  ?(columnRuleWidth : string option)
  ?(columnSpan : string option)
  ?(columnWidth : string option)
  ?(breakAfter : string option)
  ?(breakBefore : string option)
  ?(breakInside : string option)
  ?(rest : string option)
  ?(restAfter : string option)
  ?(restBefore : string option)
  ?(speakAs : string option)
  ?(voiceBalance : string option)
  ?(voiceDuration : string option)
  ?(voicePitch : string option)
  ?(voiceRange : string option)
  ?(voiceRate : string option)
  ?(voiceStress : string option)
  ?(voiceVolume : string option)
  ?(objectFit : string option)
  ?(objectPosition : string option)
  ?(imageResolution : string option)
  ?(imageOrientation : string option)
  ?(alignContent : string option)
  ?(alignItems : string option)
  ?(alignSelf : string option)
  ?(flex : string option)
  ?(flexBasis : string option)
  ?(flexDirection : string option)
  ?(flexFlow : string option)
  ?(flexGrow : string option)
  ?(flexShrink : string option)
  ?(flexWrap : string option)
  ?(justifyContent : string option)
  ?(order : string option)
  ?(textDecorationColor : string option)
  ?(textDecorationLine : string option)
  ?(textDecorationSkip : string option)
  ?(textDecorationStyle : string option)
  ?(textEmphasis : string option)
  ?(textEmphasisColor : string option)
  ?(textEmphasisPosition : string option)
  ?(textEmphasisStyle : string option)
  ?(textUnderlinePosition : string option)
  ?(fontFeatureSettings : string option)
  ?(fontKerning : string option)
  ?(fontLanguageOverride : string option)
  ?(fontSynthesis : string option)
  ?(forntVariantAlternates : string option)
  ?(fontVariantCaps : string option)
  ?(fontVariantEastAsian : string option)
  ?(fontVariantLigatures : string option)
  ?(fontVariantNumeric : string option)
  ?(fontVariantPosition : string option)
  ?(all : string option)
  ?(textCombineUpright : string option)
  ?(textOrientation : string option)
  ?(writingMode : string option)
  ?(shapeImageThreshold : string option)
  ?(shapeMargin : string option)
  ?(shapeOutside : string option)
  ?(mask : string option)
  ?(maskBorder : string option)
  ?(maskBorderMode : string option)
  ?(maskBorderOutset : string option)
  ?(maskBorderRepeat : string option)
  ?(maskBorderSlice : string option)
  ?(maskBorderSource : string option)
  ?(maskBorderWidth : string option)
  ?(maskClip : string option)
  ?(maskComposite : string option)
  ?(maskImage : string option)
  ?(maskMode : string option)
  ?(maskOrigin : string option)
  ?(maskPosition : string option)
  ?(maskRepeat : string option)
  ?(maskSize : string option)
  ?(maskType : string option)
  ?(backgroundBlendMode : string option)
  ?(isolation : string option)
  ?(mixBlendMode : string option)
  ?(boxDecorationBreak : string option)
  ?(boxSizing : string option)
  ?(caretColor : string option)
  ?(navDown : string option)
  ?(navLeft : string option)
  ?(navRight : string option)
  ?(navUp : string option)
  ?(outlineOffset : string option)
  ?(resize : string option)
  ?(textOverflow : string option)
  ?(grid : string option)
  ?(gridArea : string option)
  ?(gridAutoColumns : string option)
  ?(gridAutoFlow : string option)
  ?(gridAutoRows : string option)
  ?(gridColumn : string option)
  ?(gridColumnEnd : string option)
  ?(gridColumnGap : string option)
  ?(gridColumnStart : string option)
  ?(gridGap : string option)
  ?(gridRow : string option)
  ?(gridRowEnd : string option)
  ?(gridRowGap : string option)
  ?(gridRowStart : string option)
  ?(gridTemplate : string option)
  ?(gridTemplateAreas : string option)
  ?(gridTemplateColumns : string option)
  ?(gridTemplateRows : string option)
  ?(willChange : string option)
  ?(hangingPunctuation : string option)
  ?(hyphens : string option)
  ?(lineBreak : string option)
  ?(overflowWrap : string option)
  ?(tabSize : string option)
  ?(textAlignLast : string option)
  ?(textJustify : string option)
  ?(wordBreak : string option)
  ?(wordWrap : string option)
  ?(animation : string option)
  ?(animationDelay : string option)
  ?(animationDirection : string option)
  ?(animationDuration : string option)
  ?(animationFillMode : string option)
  ?(animationIterationCount : string option)
  ?(animationName : string option)
  ?(animationPlayState : string option)
  ?(animationTimingFunction : string option)
  ?(transition : string option)
  ?(transitionDelay : string option)
  ?(transitionDuration : string option)
  ?(transitionProperty : string option)
  ?(transitionTimingFunction : string option)
  ?(backfaceVisibility : string option)
  ?(perspective : string option)
  ?(perspectiveOrigin : string option)
  ?(transform : string option)
  ?(transformOrigin : string option)
  ?(transformStyle : string option)
  ?(justifyItems : string option)
  ?(justifySelf : string option)
  ?(placeContent : string option)
  ?(placeItems : string option)
  ?(placeSelf : string option)
  ?(appearance : string option)
  ?(caret : string option)
  ?(caretAnimation : string option)
  ?(caretShape : string option)
  ?(userSelect : string option)
  ?(maxLines : string option)
  ?(marqueeDirection : string option)
  ?(marqueeLoop : string option)
  ?(marqueeSpeed : string option)
  ?(marqueeStyle : string option)
  ?(overflowStyle : string option)
  ?(rotation : string option)
  ?(rotationPoint : string option)
  ?(alignmentBaseline : string option)
  ?(baselineShift : string option)
  ?(clip : string option)
  ?(clipPath : string option)
  ?(clipRule : string option)
  ?(colorInterpolation : string option)
  ?(colorInterpolationFilters : string option)
  ?(colorProfile : string option)
  ?(colorRendering : string option)
  ?(dominantBaseline : string option)
  ?(fill : string option)
  ?(fillOpacity : string option)
  ?(fillRule : string option)
  ?(filter : string option)
  ?(floodColor : string option)
  ?(floodOpacity : string option)
  ?(glyphOrientationHorizontal : string option)
  ?(glyphOrientationVertical : string option)
  ?(imageRendering : string option)
  ?(kerning : string option)
  ?(lightingColor : string option)
  ?(markerEnd : string option)
  ?(markerMid : string option)
  ?(markerStart : string option)
  ?(pointerEvents : string option)
  ?(shapeRendering : string option)
  ?(stopColor : string option)
  ?(stopOpacity : string option)
  ?(stroke : string option)
  ?(strokeDasharray : string option)
  ?(strokeDashoffset : string option)
  ?(strokeLinecap : string option)
  ?(strokeLinejoin : string option)
  ?(strokeMiterlimit : string option)
  ?(strokeOpacity : string option)
  ?(strokeWidth : string option)
  ?(textAnchor : string option)
  ?(textRendering : string option)
  ?(rubyAlign : string option)
  ?(rubyMerge : string option)
  ?(rubyPosition : string option)
  () =
  []
    |> add "z-index" zIndex
  |> add "writing-mode" writingMode
  |> add "word-wrap" wordWrap
  |> add "word-spacing" wordSpacing
  |> add "word-break" wordBreak
  |> add "will-change" willChange
  |> add "width" width
  |> add "widows" widows
  |> add "white-space" whiteSpace
  |> add "volume" volume
  |> add "voice-volume" voiceVolume
  |> add "voice-stress" voiceStress
  |> add "voice-rate" voiceRate
  |> add "voice-range" voiceRange
  |> add "voice-pitch" voicePitch
  |> add "voice-family" voiceFamily
  |> add "voice-duration" voiceDuration
  |> add "voice-balance" voiceBalance
  |> add "visibility" visibility
  |> add "vertical-align" verticalAlign
  |> add "user-select" userSelect
  |> add "unicode-bidi" unicodeBidi
  |> add "transition" transition
  |> add "transition-timing-function" transitionTimingFunction
  |> add "transition-property" transitionProperty
  |> add "transition-duration" transitionDuration
  |> add "transition-delay" transitionDelay
  |> add "transform" transform
  |> add "transform-style" transformStyle
  |> add "transform-origin" transformOrigin
  |> add "top" top
  |> add "text-underline-position" textUnderlinePosition
  |> add "text-transform" textTransform
  |> add "text-shadow" textShadow
  |> add "text-rendering" textRendering
  |> add "text-overflow" textOverflow
  |> add "text-orientation" textOrientation
  |> add "text-justify" textJustify
  |> add "text-indent" textIndent
  |> add "text-emphasis" textEmphasis
  |> add "text-emphasis-style" textEmphasisStyle
  |> add "text-emphasis-position" textEmphasisPosition
  |> add "text-emphasis-color" textEmphasisColor
  |> add "text-decoration" textDecoration
  |> add "text-decoration-style" textDecorationStyle
  |> add "text-decoration-skip" textDecorationSkip
  |> add "text-decoration-line" textDecorationLine
  |> add "text-decoration-color" textDecorationColor
  |> add "text-combine-upright" textCombineUpright
  |> add "text-anchor" textAnchor
  |> add "text-align" textAlign
  |> add "text-align-last" textAlignLast
  |> add "table-layout" tableLayout
  |> add "stroke" stroke |> add "tab-size" tabSize
  |> add "stroke-width" strokeWidth
  |> add "stroke-opacity" strokeOpacity
  |> add "stroke-miterlimit" strokeMiterlimit
  |> add "stroke-linejoin" strokeLinejoin
  |> add "stroke-linecap" strokeLinecap
  |> add "stroke-dashoffset" strokeDashoffset
  |> add "stroke-dasharray" strokeDasharray
  |> add "stress" stress
  |> add "stop-opacity" stopOpacity
  |> add "stop-color" stopColor
  |> add "speech-rate" speechRate
  |> add "speak" speak
  |> add "speak-punctuation" speakPunctuation
  |> add "speak-numeral" speakNumeral
  |> add "speak-header" speakHeader
  |> add "size" size |> add "speak-as" speakAs
  |> add "shape-rendering" shapeRendering
  |> add "shape-outside" shapeOutside
  |> add "shape-margin" shapeMargin
  |> add "shape-image-threshold" shapeImageThreshold
  |> add "ruby-position" rubyPosition
  |> add "ruby-merge" rubyMerge
  |> add "ruby-align" rubyAlign
  |> add "rotation" rotation
  |> add "rotation-point" rotationPoint
  |> add "right" right
  |> add "richness" richness
  |> add "rest" rest
  |> add "rest-before" restBefore
  |> add "rest-after" restAfter
  |> add "resize" resize
  |> add "quotes" quotes
  |> add "position" position
  |> add "pointer-events" pointerEvents
  |> add "play-during" playDuring
  |> add "place-self" placeSelf
  |> add "place-items" placeItems
  |> add "place-content" placeContent
  |> add "pitch" pitch
  |> add "pitch-range" pitchRange
  |> add "perspective" perspective
  |> add "perspective-origin" perspectiveOrigin
  |> add "pause" pause
  |> add "pause-before" pauseBefore
  |> add "pause-after" pauseAfter
  |> add "page" page
  |> add "page-break-inside" pageBreakInside
  |> add "page-break-before" pageBreakBefore
  |> add "page-break-after" pageBreakAfter
  |> add "padding" padding
  |> add "padding-top" paddingTop
  |> add "padding-right" paddingRight
  |> add "padding-left" paddingLeft
  |> add "padding-bottom" paddingBottom
  |> add "overflow" overflow
  |> add "overflow-y" overflowY
  |> add "overflow-x" overflowX
  |> add "overflow-wrap" overflowWrap
  |> add "overflow-style" overflowStyle
  |> add "outline" outline
  |> add "outline-width" outlineWidth
  |> add "outline-style" outlineStyle
  |> add "outline-offset" outlineOffset
  |> add "outline-color" outlineColor
  |> add "orphans" orphans
  |> add "order" order
  |> add "opacity" opacity
  |> add "object-position" objectPosition
  |> add "object-fit" objectFit
  |> add "nav-up" navUp
  |> add "nav-right" navRight
  |> add "nav-left" navLeft
  |> add "nav-down" navDown
  |> add "mix-blend-mode" mixBlendMode
  |> add "min-width" minWidth
  |> add "min-height" minHeight
  |> add "max-width" maxWidth
  |> add "max-lines" maxLines
  |> add "max-height" maxHeight
  |> add "mask" mask
  |> add "mask-type" maskType
  |> add "mask-size" maskSize
  |> add "mask-repeat" maskRepeat
  |> add "mask-position" maskPosition
  |> add "mask-origin" maskOrigin
  |> add "mask-mode" maskMode
  |> add "mask-image" maskImage
  |> add "mask-composite" maskComposite
  |> add "mask-clip" maskClip
  |> add "mask-border" maskBorder
  |> add "mask-border-width" maskBorderWidth
  |> add "mask-border-source" maskBorderSource
  |> add "mask-border-slice" maskBorderSlice
  |> add "mask-border-repeat" maskBorderRepeat
  |> add "mask-border-outset" maskBorderOutset
  |> add "mask-border-mode" maskBorderMode
  |> add "marquee-style" marqueeStyle
  |> add "marquee-speed" marqueeSpeed
  |> add "marquee-loop" marqueeLoop
  |> add "marquee-direction" marqueeDirection
  |> add "marks" marks
  |> add "marker-start" markerStart
  |> add "marker-offset" markerOffset
  |> add "marker-mid" markerMid
  |> add "marker-end" markerEnd
  |> add "margin" margin
  |> add "margin-top" marginTop
  |> add "margin-right" marginRight
  |> add "margin-left" marginLeft
  |> add "margin-bottom" marginBottom
  |> add "list-style" listStyle
  |> add "list-style-type" listStyleType
  |> add "list-style-position" listStylePosition
  |> add "list-style-image" listStyleImage
  |> add "line-height" lineHeight
  |> add "line-break" lineBreak
  |> add "lighting-color" lightingColor
  |> add "letter-spacing" letterSpacing
  |> add "left" left
  |> add "kerning" kerning
  |> add "justify-self" justifySelf
  |> add "justify-items" justifyItems
  |> add "justify-content" justifyContent
  |> add "isolation" isolation
  |> add "image-resolution" imageResolution
  |> add "image-rendering" imageRendering
  |> add "image-orientation" imageOrientation
  |> add "hyphens" hyphens
  |> add "height" height
  |> add "hanging-punctuation" hangingPunctuation
  |> add "grid" grid
  |> add "grid-template" gridTemplate
  |> add "grid-template-rows" gridTemplateRows
  |> add "grid-template-columns" gridTemplateColumns
  |> add "grid-template-areas" gridTemplateAreas
  |> add "grid-row" gridRow
  |> add "grid-row-start" gridRowStart
  |> add "grid-row-gap" gridRowGap
  |> add "grid-row-end" gridRowEnd
  |> add "grid-gap" gridGap
  |> add "grid-column" gridColumn
  |> add "grid-column-start" gridColumnStart
  |> add "grid-column-gap" gridColumnGap
  |> add "grid-column-end" gridColumnEnd
  |> add "grid-auto-rows" gridAutoRows
  |> add "grid-auto-flow" gridAutoFlow
  |> add "grid-auto-columns" gridAutoColumns
  |> add "grid-area" gridArea
  |> add "glyph-orientation-vertical" glyphOrientationVertical
  |> add "glyph-orientation-horizontal" glyphOrientationHorizontal
  |> add "fornt-variant-alternates" forntVariantAlternates
  |> add "font" font
  |> add "font-weight" fontWeight
  |> add "font-variant" fontVariant
  |> add "font-variant-position" fontVariantPosition
  |> add "font-variant-numeric" fontVariantNumeric
  |> add "font-variant-ligatures" fontVariantLigatures
  |> add "font-variant-east-asian" fontVariantEastAsian
  |> add "font-variant-caps" fontVariantCaps
  |> add "font-synthesis" fontSynthesis
  |> add "font-style" fontStyle
  |> add "font-stretch" fontStretch
  |> add "font-size" fontSize
  |> add "font-size-adjust" fontSizeAdjust
  |> add "font-language-override" fontLanguageOverride
  |> add "font-kerning" fontKerning
  |> add "font-feature-settings" fontFeatureSettings
  |> add "font-family" fontFamily
  |> add "flood-opacity" floodOpacity
  |> add "flood-color" floodColor
  |> add "float" float
  |> add "flex" flex
  |> add "flex-wrap" flexWrap
  |> add "flex-shrink" flexShrink
  |> add "flex-grow" flexGrow
  |> add "flex-flow" flexFlow
  |> add "flex-direction" flexDirection
  |> add "flex-basis" flexBasis
  |> add "filter" filter
  |> add "fill" fill
  |> add "fill-rule" fillRule
  |> add "fill-opacity" fillOpacity
  |> add "empty-cells" emptyCells
  |> add "elevation" elevation
  |> add "dominant-baseline" dominantBaseline
  |> add "display" display
  |> add "direction" direction
  |> add "cursor" cursor
  |> add "cue" cue
  |> add "cue-before" cueBefore
  |> add "cue-after" cueAfter
  |> add "counter-reset" counterReset
  |> add "counter-increment" counterIncrement
  |> add "content" content
  |> add "columns" columns
  |> add "column-width" columnWidth
  |> add "column-span" columnSpan
  |> add "column-rule" columnRule
  |> add "column-rule-width" columnRuleWidth
  |> add "column-rule-style" columnRuleStyle
  |> add "column-rule-color" columnRuleColor
  |> add "column-gap" columnGap
  |> add "column-fill" columnFill
  |> add "column-count" columnCount
  |> add "color" color
  |> add "color-rendering" colorRendering
  |> add "color-profile" colorProfile
  |> add "color-interpolation" colorInterpolation
  |> add "color-interpolation-filters" colorInterpolationFilters
  |> add "clip-rule" clipRule
  |> add "clip-rule" clipRule
  |> add "clip" clip
  |> add "caret" caret
  |> add "clear" clear
  |> add "clip-path" clipPath
  |> add "caret-shape" caretShape
  |> add "caret-color" caretColor
  |> add "caret-animation" caretAnimation
  |> add "caption-side" captionSide
  |> add "break-inside" breakInside
  |> add "break-before" breakBefore
  |> add "break-after" breakAfter
  |> add "box-shadow" boxShadow
  |> add "box-sizing" boxSizing
  |> add "box-decoration-break" boxDecorationBreak
  |> add "border" border
  |> add "bottom" bottom
  |> add "border-width" borderWidth
  |> add "border-top" borderTop
  |> add "border-top-width" borderTopWidth
  |> add "border-top-style" borderTopStyle
  |> add "border-top-right-radius" borderTopRightRadius
  |> add "border-top-left-radius" borderTopLeftRadius
  |> add "border-top-color" borderTopColor
  |> add "border-style" borderStyle
  |> add "border-spacing" borderSpacing
  |> add "border-right" borderRight
  |> add "border-right-width" borderRightWidth
  |> add "border-right-style" borderRightStyle
  |> add "border-right-color" borderRightColor
  |> add "border-radius" borderRadius
  |> add "border-left" borderLeft
  |> add "border-left-width" borderLeftWidth
  |> add "border-left-style" borderLeftStyle
  |> add "border-left-color" borderLeftColor
  |> add "border-image" borderImage
  |> add "border-image-width" borderImageWidth
  |> add "border-image-source" borderImageSource
  |> add "border-image-slice" borderImageSlice
  |> add "border-image-repeat" borderImageRepeat
  |> add "border-image-outset" borderImageOutset
  |> add "border-color" borderColor
  |> add "border-collapse" borderCollapse
  |> add "border-bottom" borderBottom
  |> add "border-bottom-width" borderBottomWidth
  |> add "border-bottom-style" borderBottomStyle
  |> add "border-bottom-right-radius" borderBottomRightRadius
  |> add "border-bottom-left-radius" borderBottomLeftRadius
  |> add "border-bottom-color" borderBottomColor
  |> add "baseline-shift" baselineShift
  |> add "background" background
  |> add "background-size" backgroundSize
  |> add "background-repeat" backgroundRepeat
  |> add "background-position" backgroundPosition
  |> add "background-origin" backgroundOrigin
  |> add "background-image" backgroundImage
  |> add "background-color" backgroundColor
  |> add "background-clip" backgroundClip
  |> add "background-blend-mode" backgroundBlendMode
  |> add "background-attachment" backgroundAttachment
  |> add "backface-visibility" backfaceVisibility
  |> add "azimuth" azimuth
  |> add "appearance" appearance
  |> add "animation" animation
  |> add "animation-timing-function" animationTimingFunction
  |> add "animation-play-state" animationPlayState
  |> add "animation-name" animationName
  |> add "animation-iteration-count" animationIterationCount
  |> add "animation-fill-mode" animationFillMode
  |> add "animation-duration" animationDuration
  |> add "animation-direction" animationDirection
  |> add "animation-delay" animationDelay
  |> add "all" all
  |> add "alignment-baseline" alignmentBaseline
  |> add "align-self" alignSelf
  |> add "align-items" alignItems
  |> add "align-content" alignContent
[@@@ocamlformat "enable"]

let to_string (styles : t) : string =
  let size = List.length styles in
  let buff = Buffer.create size in
  List.to_seq styles
  |> Seq.iteri (fun index (k, v) ->
         if index == size - 1 then (
           Buffer.add_string buff k;
           Buffer.add_string buff ": ";
           Buffer.add_string buff (String.trim v))
         else (
           Buffer.add_string buff k;
           Buffer.add_string buff ": ";
           Buffer.add_string buff (String.trim v);
           Buffer.add_string buff "; "));
  Buffer.contents buff

let combine (styles1 : t) (styles2 : t) : t =
  let seq1 = styles1 |> List.to_seq in
  let seq2 = styles2 |> List.to_seq in
  Seq.append seq1 seq2 |> List.of_seq

let string_of_chars chars =
  let buf = Buffer.create 16 in
  List.iter (Buffer.add_char buf) chars;
  Buffer.contents buf

let chars_of_string str = List.init (String.length str) (String.get str)

let camelcaseToKebabcase str =
  let rec loop acc = function
    | [] -> acc
    | [ x ] -> x :: acc
    | x :: y :: xs ->
        if Char.uppercase_ascii y == y then
          loop ('-' :: x :: acc) (Char.lowercase_ascii y :: xs)
        else loop (x :: acc) (y :: xs)
  in
  str |> chars_of_string |> loop [] |> List.rev |> string_of_chars

let unsafeAddProp styles (key : string) (value : string) : t =
  (* Adds the (key,value) into last position *)
  styles @ [ (camelcaseToKebabcase key, value) ]

(* Since we don't have a proper representation of `< .. > Js.t` yet,
   we can't make the unsafeAddStyle

   external unsafeAddStyle :
      ((_)[@mel.as {json|{}|json}]) -> t -> < .. > Js.t -> t = "Object.assign" *)
