///|
fn min(x : Int, y : Int) -> Int {
  if x < y {
    x
  } else {
    y
  }
}

///|
fn distribute_candies(candies : Int, num_people : Int) -> Array[Int] {
  let ans : Array[Int] = Array::make(num_people, 0)
  let mut i = 0
  let mut candies_left = candies
  while candies_left > 0 {
    let give_candies = min(candies_left, i + 1)
    ans[i % num_people] = ans[i % num_people] + give_candies
    candies_left = candies_left - give_candies
    i = i + 1
  }
  ans
}
