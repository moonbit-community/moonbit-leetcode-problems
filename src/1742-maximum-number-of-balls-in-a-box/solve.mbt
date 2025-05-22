///|
fn sum_of_digits(num : Int) -> Int {
  let mut sum = 0
  let mut n = num
  while n > 0 {
    sum = sum + n % 10
    n = n / 10
  }
  sum
}

///|
fn max_balls_in_box(low_limit : Int, high_limit : Int) -> Int {
  let box_count : @hashmap.T[Int, Int] = @hashmap.new()
  let mut max_count = 0
  for ball = low_limit; ball <= high_limit; ball = ball + 1 {
    let box_number = sum_of_digits(ball)
    let count = box_count.get_or_default(box_number, 0) + 1
    box_count.set(box_number, count)
    if count > max_count {
      max_count = count
    }
  }
  max_count
}
