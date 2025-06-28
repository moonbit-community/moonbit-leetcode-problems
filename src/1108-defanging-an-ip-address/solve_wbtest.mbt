///|
test "example 1" {
  assert_eq(defang_ip_addr("1.1.1.1"), "1[.]1[.]1[.]1")
}

///|
test "example 2" {
  assert_eq(defang_ip_addr("255.100.50.0"), "255[.]100[.]50[.]0")
}
