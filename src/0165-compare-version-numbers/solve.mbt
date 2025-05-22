///|
fn compare_version(version1 : String, version2 : String) -> Int {
  let m = version1.length()
  let n = version2.length()
  let mut i = 0
  let mut j = 0
  while i < m || j < n {
    let mut a = 0
    let mut b = 0
    while i < m && version1[i] != '.' {
      a = a * 10 + (version1[i].to_int() - '0'.to_int())
      i = i + 1
    }
    while j < n && version2[j] != '.' {
      b = b * 10 + (version2[j].to_int() - '0'.to_int())
      j = j + 1
    }
    if a != b {
      return if a < b { -1 } else { 1 }
    }
    // Skip the dot
    if i < m {
      i = i + 1
    }
    if j < n {
      j = j + 1
    }
  }
  0
}
