///|
fn replace_question_mark(s : String) -> String {
  let n = s.length()
  let cs = Array::make(n, '0') // Initialize an empty array with NULL characters to store the result
  // Copy characters from s to cs
  for i = 0; i < n; i = i + 1 {
    cs[i] = s[i]
  }
  fn not_adjacent(cs : Array[Char], i : Int, c : Char) -> Bool {
    ((i > 0 && cs[i - 1] == c) || (i + 1 < cs.length() && cs[i + 1] == c))
    |> not
  }

  for i = 0; i < n; i = i + 1 {
    if cs[i] == '?' {
      let abc = ['a', 'b', 'c']
      for j = 0; j < 3; j = j + 1 {
        let c = abc[j]
        if not_adjacent(cs, i, c) {
          cs[i] = c
          break
        }
      }
    }
  }

  // Convert the Array[Char] back into a String
  let mut result = ""
  for i = 0; i < n; i = i + 1 {
    result = result + cs[i].to_string()
  }
  result
}
