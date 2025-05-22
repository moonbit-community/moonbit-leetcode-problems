// Function to calculate the greatest common divisor (gcd) of two numbers
fn gcd(a : Int, b : Int) -> Int {
  if b == 0 {
    a
  } else {
    gcd(b, a % b)
  }
}

// Function that generates simplified fractions for given n
fn simplified_fractions(n : Int) -> Array[String] {
  let ans : Array[String] = []
  for i = 1; i < n; i = i + 1 {
    for j = i + 1; j <= n; j = j + 1 {
      if gcd(i, j) == 1 {
        let fraction = "\{i}/\{j}"
        ans.push(fraction)
      }
    }
  }
  let res = Array::make(ans.length(), "")
  for i = 0; i < ans.length(); i = i + 1 {
    res[i] = ans[i]
  }
  res
}
