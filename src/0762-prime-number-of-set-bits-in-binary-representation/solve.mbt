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

fn is_prime(n : Int) -> Bool {
  if n <= 1 {
    return false
  }
  let mut i : Int = 2
  while i * i <= n {
    if n % i == 0 {
      return false
    }
    i = i + 1
  }
  true
}

fn count_prime_set_bits(left : Int, right : Int) -> Int {
  let mut ans = 0
  for i = left; i <= right; i = i + 1 {
    if is_prime(bit_count(i)) {
      ans = ans + 1
    }
  }
  ans
}
