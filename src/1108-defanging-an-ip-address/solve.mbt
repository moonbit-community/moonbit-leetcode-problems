///|
fn defang_ip_addr(addr : String) -> String {
  let mut new_addr = ""
  let mut i = 0
  while i < addr.length() {
    if addr[i] == '.' {
      new_addr = new_addr + "[.]"
    } else {
      new_addr = new_addr + addr[i].to_string()
    }
    i = i + 1
  }
  new_addr
}
