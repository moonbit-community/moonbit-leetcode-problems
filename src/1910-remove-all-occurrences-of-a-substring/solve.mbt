fn remove_all_occurrences_of_substring(s : String, part : String) -> String {
  let mut result = s
  let part_length = part.length()
  loop find_substring(result, part) {
    Some(index) => {
      result = slice(result, 0, index) + slice(
          result,
          index + part_length,
          result.length(),
        )
      continue find_substring(result, part)
    }
    None => ()
  }
  result
}

fn find_substring(s : String, part : String) -> Int? {
  let s_length = s.length()
  let part_length = part.length()
  for i = 0; i <= s_length - part_length; i = i + 1 {
    if slice(s, i, i + part_length) == part {
      return Some(i)
    }
  }
  None
}

fn slice(s : String, start : Int, end : Int) -> String {
  let mut result = ""
  for i = start; i < end; i = i + 1 {
    result = result + s[i].to_string()
  }
  result
}
