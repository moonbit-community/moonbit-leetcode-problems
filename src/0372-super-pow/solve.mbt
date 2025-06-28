// Define a constant for the mod value

///|
let mod : Int = 1337

// Calculate the power of a number with modulus

///|
fn qpow(a : Int, n : Int) -> Int {
  let mut ans : Int = 1
  let mut a : Int = a % mod
  let mut n : Int = n
  while n > 0 {
    if n % 2 == 1 {
      ans = ans * a % mod
    }
    a = a * a % mod
    n = n / 2
  }
  ans
}

// Calculate super power of a number given an array of exponents

///|
fn super_pow(a : Int, b : Array[Int]) -> Int {
  let b_len : Int = b.length()
  let mut ans : Int = 1
  let mut a : Int = a % mod
  let mut i : Int = b_len - 1
  while i >= 0 {
    ans = ans * qpow(a, b[i]) % mod
    a = qpow(a, 10)
    i = i - 1
  }
  ans
}

// Custom assert equal function for testing

// Test cases
