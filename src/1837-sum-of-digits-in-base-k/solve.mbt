///|
fn sum_of_digits_in_base_k(n : Int, k : Int) -> Int {
  let digits : Array[Int] = []
  let mut num = n

  // Convert n from base 10 to base k
  while num > 0 {
    digits.push(num % k)
    num = num / k
  }

  // Sum the digits
  let mut sum = 0
  for i = 0; i < digits.length(); i = i + 1 {
    sum = sum + digits[i]
  }
  return sum
}

// Test cases
