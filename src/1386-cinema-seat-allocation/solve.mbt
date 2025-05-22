fn max_number_of_families(n : Int, reserved_seats : Array[(Int, Int)]) -> Int {
  let d : @hashmap.T[Int, Int] = @hashmap.new()
  for i = 0; i < reserved_seats.length(); i = i + 1 {
    let seat = reserved_seats[i]
    let (i, j) = seat
    let current_value = match d.get(i) {
      Some(value) => value
      None => 0
    }
    d.set(i, current_value.lor((1).lsl(10 - j)))
  }
  let mut ans = (n - d.capacity()) * 2
  let left = 0b0111100000
  let mid = 0b0000011110
  let right = 0b0001111000
  d.each(
    fn(x, y) {
      if y.lxor(left) == left || y.lxor(mid) == mid || y.lxor(right) == right {
        ans += 1
      }
    },
  )
  ans
}
