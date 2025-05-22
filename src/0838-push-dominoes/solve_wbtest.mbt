test "example 1" {
  assert_eq!(pushDominoes("RR.L"), "RR.L")
}

test "example 2" {
  assert_eq!(pushDominoes(".L.R...LR..L.."), "LL.RR.LLRRLL..")
}
