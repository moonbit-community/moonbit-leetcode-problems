///|
test "example 1" {
  let s = "25525511135"
  assert_eq(restore_ip_addresses(s).nth(0), Some("255.255.111.35"))
}
