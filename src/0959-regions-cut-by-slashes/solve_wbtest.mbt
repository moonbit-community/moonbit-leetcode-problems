///|
test "regions by slashes 1" {
  let grid : Array[String] = ["/\\", "\\/"]
  assert_eq(regions_by_slashes(grid), 5)
}

///|
test "regions by slashes 2" {
  let grid : Array[String] = ["//", "/ "]
  assert_eq(regions_by_slashes(grid), 3)
}
