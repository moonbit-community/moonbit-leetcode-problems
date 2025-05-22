fn longest_common_prefix(strs : Array[String]) -> String {
  if strs.length() == 0 {
    return ""
  }
  let mut prefix = strs[0]
  for i = 1; i < strs.length(); i = i + 1 {
    while not(strs[i].starts_with(prefix)) {
      prefix = prefix.substring(start=0, end=prefix.length() - 1)
      if prefix.length() == 0 {
        return ""
      }
    }
  }
  prefix
}
