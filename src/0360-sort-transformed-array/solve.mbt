fn f(a : Int, b : Int, c : Int, x : Int) -> Int {
  a * x * x + b * x + c
}

fn sort_transformed_array(
  nums : Array[Int],
  a : Int,
  b : Int,
  c : Int
) -> Array[Int] {
  let n : Int = nums.length()
  let mut i : Int = 0
  let mut j : Int = n - 1
  let mut k : Int = if a < 0 { 0 } else { n - 1 }
  let res : Array[Int] = Array::make(n, 0)
  while i <= j {
    let v1 : Int = f(a, b, c, nums[i])
    let v2 : Int = f(a, b, c, nums[j])
    if a < 0 {
      if v1 <= v2 {
        res[k] = v1
        i = i + 1
      } else {
        res[k] = v2
        j = j - 1
      }
      k = k + 1
    } else {
      if v1 >= v2 {
        res[k] = v1
        i = i + 1
      } else {
        res[k] = v2
        j = j - 1
      }
      k = k - 1
    }
  }
  res
}
