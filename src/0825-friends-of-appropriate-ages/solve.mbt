///|
fn num_friend_requests(ages : Array[Int]) -> Int {
  let counter : Array[Int] = Array::make(121, 0)
  let mut ans = 0

  // Counting each age.
  for i = 0; i < ages.length(); i = i + 1 {
    counter[ages[i]] = counter[ages[i]] + 1
  }
  for i = 1; i < 121; i = i + 1 {
    let n1 = counter[i]
    for j = 1; j < 121; j = j + 1 {
      let n2 = counter[j]
      if not(j <= i / 2 + 7 || j > i || (j > 100 && i < 100)) {
        ans = ans + n1 * n2
        if i == j {
          ans = ans - n2
        }
      }
    }
  }
  ans
}
