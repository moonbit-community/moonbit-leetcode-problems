fn validate_stack_sequences(pushed : Array[Int], popped : Array[Int]) -> Bool {
  let stk : Array[Int] = Array::new()
  let n = pushed.length()
  let mut j : Int = 0
  for i = 0; i < n; i = i + 1 {
    stk.push(pushed[i])
    while not(stk.is_empty()) && stk.get(stk.length() - 1) == Some(popped[j]) {
      stk.pop() |> ignore
      j = j + 1
    }
  }
  j == n
}
