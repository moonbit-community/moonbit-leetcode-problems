// There's no direct TreeMap equivalent in Moonbit, so we'll simulate it with arrays
// Also, no nulls in Moonbit, using -1 to represent not found scenarios

struct HiLo {
  hi : Int
  lo : Int
}

fn odd_even_jumps(arr : Array[Int]) -> Int {
  let n = arr.length()
  let f = Array::make(n, Array::make(2, -1)) // Equivalent of `f` from Java initialization
  let g = Array::make(n, HiLo::{ hi: -1, lo: -1 })

  // Simulate TreeMap functionality to find highs and lows for each jump
  fn update_g(arr : Array[Int], g : Array[HiLo], i : Int) {
    let mut hi = -1
    let mut lo = -1
    let mut hi_diff = 2_147_483_647
    let mut lo_diff = 2_147_483_647
    for j = 0; j < arr.length(); j = j + 1 {
      if arr[j] >= arr[i] && arr[j] - arr[i] < hi_diff {
        hi = j
        hi_diff = arr[j] - arr[i]
      }
      if arr[j] <= arr[i] && arr[i] - arr[j] < lo_diff {
        lo = j
        lo_diff = arr[i] - arr[j]
      }
    }
    g[i] = HiLo::{ hi, lo }
  }

  for i = n - 1; i >= 0; i = i - 1 {
    update_g(arr, g, i)
  }
  fn dfs(
    f : Array[Array[Int]],
    g : Array[HiLo],
    n : Int,
    i : Int,
    k : Int
  ) -> Int {
    if i == n - 1 {
      return 1
    }
    let jump = if k == 1 { g[i].hi } else { g[i].lo }
    if jump == -1 {
      return 0
    }
    if f[i][k] != -1 {
      return f[i][k]
    }
    f[i][k] = dfs(f, g, n, jump, k.lxor(1))
    return f[i][k]
  }

  let mut ans = 0
  for i = 0; i < n; i = i + 1 {
    ans = ans + dfs(f, g, n, i, 1)
  }
  ans
}
