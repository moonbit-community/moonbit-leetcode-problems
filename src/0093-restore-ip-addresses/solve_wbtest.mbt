///|
test "example 1" {
  let s = "25525511135"
  let res = restore_ip_address(s)
  assert_eq!(res.nth(0), Some("255.255.111.35"))
}
