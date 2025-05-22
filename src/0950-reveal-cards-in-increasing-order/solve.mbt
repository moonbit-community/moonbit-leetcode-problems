fn deck_revealed_increasing(deck : Array[Int]) -> Array[Int] {
  deck.sort()
  let n = deck.length()
  let q : @queue.T[Int] = @queue.new()
  for i = n - 1; i >= 0; i = i - 1 {
    if not(q.is_empty()) {
      q.push(q.pop_exn())
    }
    q.push(deck[i])
  }
  let ans : Array[Int] = Array::make(n, 0)
  for i = n - 1; i >= 0; i = i - 1 {
    ans[i] = q.pop_exn()
  }
  ans
}
