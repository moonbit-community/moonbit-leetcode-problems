fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn num_moves_stones_ii(stones : Array[Int]) -> Array[Int] {
  // Sorting the stones
  let stones = stones
  stones.sort()
  let n = stones.length()
  let mut mi = n
  let mx = max(stones[n - 1] - stones[1] + 1, stones[n - 2] - stones[0] + 1) - (n -
    1)
  let mut j = 0
  for i = 0; i < n; i = i + 1 { // Using for loop, but for iterating with two variables, we only use the outer one explicitly
    while j < n {
      while stones[j] - stones[i] + 1 > n {
        continue
      }
      if j - i + 1 == n - 1 && stones[j] - stones[i] == n - 2 {
        mi = min(mi, 2)
      } else {
        mi = min(mi, n - (j - i + 1))
      }
      j = j + 1
    }
  }
  [mi, mx] // placing the results in an array to return
}
