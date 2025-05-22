fn bit_count(x : Int) -> Int {
  let mut count = 0
  let mut num = x
  while num > 0 {
    if num % 2 == 1 {
      count = count + 1
    }
    num = num / 2
  }
  count
}

fn count_bits(n : Int) -> Array[Int] {
  let ans : Array[Int] = Array::make(n + 1, 0)
  for i = 0; i <= n; i = i + 1 {
    ans[i] = bit_count(i)
  }
  ans
}
