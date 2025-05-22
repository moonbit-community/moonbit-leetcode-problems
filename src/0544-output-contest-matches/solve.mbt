///|
fn concatenate(a : String, b : String) -> String {
  "(" + a + "," + b + ")"
}

///|
fn find_contest_match(n : Int) -> String {
  let team : Array[String] = Array::make(n, "")
  let mut i = 0
  while i < n {
    team[i] = (i + 1).to_string()
    i = i + 1
  }
  let mut size = n
  while size > 1 {
    i = 0
    while i < size / 2 {
      team[i] = concatenate(team[i], team[size - 1 - i])
      i = i + 1
    }
    size = size / 2
  }
  team[0]
}
