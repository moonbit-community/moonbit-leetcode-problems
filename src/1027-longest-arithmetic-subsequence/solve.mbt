fn make_array_2d(
  rows : Int,
  cols : Int,
  default_value : Int
) -> Array[Array[Int]] {
  let result = Array::make(rows, Array::make(cols, default_value))
  for i = 0; i < rows; i = i + 1 {
    result[i] = Array::make(cols, default_value)
  }
  result
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn longest_arith_seq_length(nums : Array[Int]) -> Int {
  let n = nums.length()
  let mut ans = 0
  let f = make_array_2d(n, 1001, 0)
  for i = 1; i < n; i = i + 1 {
    for k = 0; k < i; k = k + 1 {
      let j = nums[i] - nums[k] + 500
      f[i][j] = max(f[i][j], f[k][j] + 1)
      ans = max(ans, f[i][j])
    }
  }
  ans + 1
}

// Test cases
