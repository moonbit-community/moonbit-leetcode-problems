fn title_to_number(column_title : String) -> Int {
  let mut res = 0
  for i = 0; i < column_title.length(); i = i + 1 {
    let c = column_title[i]
    res = res * 26 + (c.to_int() - 'A'.to_int() + 1)
  }
  res
}
