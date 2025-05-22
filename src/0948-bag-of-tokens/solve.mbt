///|
fn sort(array : Array[Int]) -> Unit {
  for i = 0; i < array.length(); i = i + 1 {
    for j = i + 1; j < array.length(); j = j + 1 {
      if array[i] > array[j] {
        // Swap elements in array
        let temp = array[i]
        array[i] = array[j]
        array[j] = temp
      }
    }
  }
}

///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn bag_of_tokens_score(tokens : Array[Int], power : Int) -> Int {
  sort(tokens) // Sort the tokens array
  let mut i = 0
  let mut j = tokens.length() - 1
  let mut ans = 0
  let mut t = 0
  let mut power = power
  while i <= j {
    if power >= tokens[i] {
      power = power - tokens[i]
      i = i + 1
      t = t + 1
      ans = max(ans, t)
    } else if t > 0 {
      power = power + tokens[j]
      j = j - 1
      t = t - 1
    } else {
      break
    }
  }
  ans
}
