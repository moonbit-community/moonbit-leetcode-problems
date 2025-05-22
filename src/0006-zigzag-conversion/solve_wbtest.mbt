test "example 1" {
  assert_eq!(convert("PAYPALISHIRING", 3), "PAHNAPLSIIGYIR")
}

test "example 2" {
  assert_eq!(convert("PAYPALISHIRING", 4), "PINALSIGYAHRPI")
}

test "example 3" {
  assert_eq!(convert("A", 1), "A")
}
