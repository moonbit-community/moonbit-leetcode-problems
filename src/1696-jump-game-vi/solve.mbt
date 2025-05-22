fn max_result(nums : Array[Int], k : Int) -> Int {
  let deque : @deque.T[Int] = @deque.new()
  let n = nums.length()
  let f = Array::make(n, 0)
  deque.push_back(0)
  for i = 0; i < n; i = i + 1 {
    if i - deque.front().unwrap() > k {
      deque.pop_front_exn()
    }
    f[i] = nums[i] + f[deque.front().unwrap()]
    while not(deque.is_empty()) && f[i] >= f[deque.back().unwrap()] {
      deque.pop_back_exn()
    }
    deque.push_back(i)
  }
  f[n - 1]
}
