fn count_numbers_with_unique_digits(n : Int) -> Int {
  if n == 0 {
    1
  } else if n == 1 {
    10
  } else {
    for i = 0, ans = 10, cur = 9
        i < n - 1
        i = i + 1, cur = cur * (9 - i), ans = ans + cur {

    } else {
      ans
    }
  }
}
