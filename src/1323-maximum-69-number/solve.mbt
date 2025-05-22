fn maximum_69_number(num : Int) -> Int {
  let num_str = num.to_string()
  let mut result_chars = @immut/list.T::of([])
  let mut replaced = false
  for i = 0; i < num_str.length(); i = i + 1 {
    let ch = num_str[i]
    if not(replaced) && ch == '6' {
      result_chars = result_chars.concat(@immut/list.T::of(['9']))
      replaced = true
    } else {
      result_chars = result_chars.concat(@immut/list.T::of([ch]))
    }
  }
  let result_str = result_chars.to_string()
  @strconv.parse_int?(result_str).unwrap()
}
