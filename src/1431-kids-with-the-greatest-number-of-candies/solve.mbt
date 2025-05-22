///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn kids_with_candies(candies : Array[Int], extra_candies : Int) -> Array[Bool] {
  let mut max_candies = 0
  candies.each(fn(x) { max_candies = max(max_candies, x) })
  candies.map(fn(candy) { candy + extra_candies >= max_candies })
}
