///|
fn maximize_number_of_nice_divisors(prime_factors : Int) -> Int {
  let mod_value = 1_000_000_007
  if prime_factors == 1 {
    return 1
  }
  let count_of_3 = prime_factors / 3
  match prime_factors % 3 {
    0 => power(3, count_of_3, mod_value)
    1 => {
      let count_of_3 = count_of_3 - 1
      power(3, count_of_3, mod_value) * 4 % mod_value
    }
    2 => power(3, count_of_3, mod_value) * 2 % mod_value
    _ => abort("unreachable")
  }
}

///|
fn power(base : Int, exponent : Int, mod_value : Int) -> Int {
  let mut result = 1
  let mut base = base % mod_value
  let mut exponent = exponent
  while exponent > 0 {
    if exponent % 2 == 1 {
      result = result * base % mod_value
    }
    exponent = exponent / 2
    base = base * base % mod_value
  }
  result
}
