fn get_next(n : Int) -> Int {
  for num = n, res = 0
      num != 0
      num = num / 10, res = res + num % 10 * (num % 10) {

  } else {
    res
  }
}

fn is_happy(n : Int) -> Bool {
  let mut slow = n
  let mut fast = get_next(n)
  while slow != fast {
    slow = get_next(slow)
    fast = get_next(get_next(fast))
  }
  fast == 1
}
