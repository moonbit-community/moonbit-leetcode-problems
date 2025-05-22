///|
fn min(numbers : @immut/list.T[Int]) -> Int {
  match numbers {
    Nil => abort("Empty list has no minimum")
    Cons(first, rest) =>
      loop rest, first {
        Nil, current_min => current_min
        Cons(x, xs), current_min =>
          continue xs, if x < current_min { x } else { current_min }
      }
  }
}

///|
fn max_number_of_balloons(text : String) -> Int {
  let cnt : Array[Int] = Array::make(26, 0)
  for i = 0; i < text.length(); i = i + 1 {
    let idx = text[i].to_int() - 'a'.to_int()
    cnt[idx] = cnt[idx] + 1
  }
  min(
    @immut/list.of([
      cnt[0], // 'a'
      cnt[1], // 'b'
      cnt[11] / 2, // 'l' / 2
      cnt[14] / 2, // 'o' / 2
      cnt[13],
    ]),
  ) // 'n'
}
