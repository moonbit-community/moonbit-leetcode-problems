///|
test "example 1" {
  assert_eq!(
    isValid("<DIV>This is the first line <![CDATA[<div>]]></DIV>"),
    true,
  )
}

///|
test "example 2" {
  assert_eq!(
    isValid("<DIV>>>  ![cdata[]] <![CDATA[<div>]>]]>]]>>]</DIV>"),
    true,
  )
}

///|
test "example 3" {
  assert_eq!(isValid("<A>  <B> </A>   </B>"), false)
}

///|
test "example 4" {
  assert_eq!(isValid("<DIV>  div tag is not closed  <DIV>"), false)
}

///|
test "example 5" {
  assert_eq!(isValid("<DIV></DIV><!DOCTYPE>"), false)
}
