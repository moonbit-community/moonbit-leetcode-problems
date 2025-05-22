fn find_index(haystack : String, needle : String) -> Int {
  let haystack_len = haystack.length()
  let needle_len = needle.length()
  for i = 0; i <= haystack_len - needle_len; i = i + 1 {
    let mut found = true
    for j = 0; j < needle_len; j = j + 1 {
      if haystack[i + j] != needle[j] {
        found = false
        break
      }
    }
    if found {
      return i
    }
  } else {
    return -1
  }
}
