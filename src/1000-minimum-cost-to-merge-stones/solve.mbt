fn sum_array(arr : Array[Int], n : Int) -> Array[Int] {
  let s : Array[Int] = Array::make(n + 1, 0)
  let mut i = 1
  while i <= n {
    s[i] = s[i - 1] + arr[i - 1]
    i = i + 1
  }
  s
}

fn fill_inf(
  f : Array[Array[Array[Int]]],
  n : Int,
  big_k : Int,
  inf : Int
) -> Unit {
  let mut i = 1
  while i <= n {
    let mut j = 1
    while j <= n {
      let mut k = 1
      while k <= big_k {
        f[i][j][k] = inf
        k = k + 1
      }
      j = j + 1
    }
    i = i + 1
  }
}

fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn merge_stones(stones : Array[Int], big_k : Int) -> Int {
  let n = stones.length()
  if (n - 1) % (big_k - 1) != 0 {
    return -1
  }
  let s = sum_array(stones, n)
  let inf = (1).lsl(20)
  let f : Array[Array[Array[Int]]] = Array::make(
    n + 1,
    Array::make(n + 1, Array::make(big_k + 1, 0)),
  )
  fill_inf(f, n, big_k, inf)
  for i = 1; i <= n; i = i + 1 {
    f[i][i][1] = 0
  }
  for l = 2; l <= n; l = l + 1 {
    for i = 1; i + l - 1 <= n; i = i + 1 {
      let j = i + l - 1
      for k = 1; k <= big_k; k = k + 1 {
        for h = i; h < j; h = h + 1 {
          f[i][j][k] = min(f[i][j][k], f[i][h][1] + f[h + 1][j][k - 1])
        }
      }
      f[i][j][1] = f[i][j][big_k] + s[j] - s[i - 1]
    }
  }
  f[1][n][1]
}
