///|
fn count_good_numbers(n : Int) -> Int {
  let mod_value = 1_000_000_007
  let even_count = 5
  let prime_count = 4
  fn mod_pow(base : Int, exp : Int, mod_value : Int) -> Int {
    let mut result = 1
    let mut base = base % mod_value
    let mut exp = exp
    while exp > 0 {
      if (exp & 1) == 1 {
        result = result * base % mod_value
      }
      exp = exp >> 1
      base = base * base % mod_value
    }
    result
  }

  let half_n = n / 2
  let result = mod_pow(even_count, half_n + n % 2, mod_value) *
    mod_pow(prime_count, half_n, mod_value) %
    mod_value
  result
}
