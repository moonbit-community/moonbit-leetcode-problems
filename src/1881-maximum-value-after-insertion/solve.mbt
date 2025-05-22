fn max_value_after_insertion(n : String, x : Int) -> String {
  let is_negative = n[0] == '-'
  let mut result = ""
  if is_negative {
    result = "-"
    let mut inserted = false
    for i = 1; i < n.length(); i = i + 1 {
      if not(inserted && n[i].to_int() > x) {
        result += x.to_string()
        inserted = true
      }
      result += n[i].to_string()
    }
    if not(inserted) {
      result += x.to_string()
    }
  } else {
    let mut inserted = false
    for i = 0; i < n.length(); i = i + 1 {
      if not(inserted && n[i].to_int() < x) {
        result += x.to_string()
        inserted = true
      }
      result += n[i].to_string()
    }
    if not(inserted) {
      result += x.to_string()
    }
  }
  result
}

// Test cases
