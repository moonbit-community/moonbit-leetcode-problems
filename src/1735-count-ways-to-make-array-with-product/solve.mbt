///|
fn prime_factors(n : Int) -> @hashmap.T[Int, Int] {
  let factors = @hashmap.new()
  let mut d = 2
  let mut x = n
  while x >= d * d {
    while x % d == 0 {
      factors.set(d, factors.get_or_default(d, 0) + 1)
      x = x / d
    }
    d = d + 1
  }
  if x > 1 {
    factors.set(x, factors.get_or_default(x, 0) + 1)
  }
  factors
}

///|
fn factorial(n : Int) -> Int {
  let mut result = 1
  for i = 1; i <= n; i = i + 1 {
    result = result * i % 1000000007
  }
  result
}

///|
fn exgcd(a : Int, b : Int) -> (Int, Int) {
  if b == 0 {
    return (1, 0)
  }
  let (x, y) = exgcd(b, a % b)
  return (y, x - a / b * y)
}

///|
fn mod_inverse(a : Int, mod : Int) -> Int {
  let (x, y) = exgcd(a, mod)
  x
}

///|
fn multinomial_coefficient(n : Int, k_arr : Array[Int]) -> Int {
  let numerator = factorial(n)
  let mut denominator = 1
  for i = 0; i < k_arr.length(); i = i + 1 {
    let k = k_arr[i]
    denominator = denominator * factorial(k) % 1000000007
  }
  numerator * mod_inverse(denominator, 1000000007) % 1000000007
}

///|
fn count_ways_to_make_array_with_product(
  queries : Array[Array[Int]]
) -> Array[Int] {
  let result = Array::make(queries.length(), 0)
  for i = 0; i < queries.length(); i = i + 1 {
    let ni = queries[i][0]
    let ki = queries[i][1]
    let factors = prime_factors(ki)
    let mut ways = 1
    factors.each(fn(_prime, count) {
      let k_arr = Array::make(ni, count / ni)
      for j = 0; j < count % ni; j = j + 1 {
        k_arr[j] = k_arr[j] + 1
      }
      ways = ways * multinomial_coefficient(count, k_arr) % 1000000007
    })
    result[i] = ways
  }
  result
}
