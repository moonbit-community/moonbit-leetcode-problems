test "example 1" {
  let minStack = new_min_stack()
  let minStack = push(minStack, -2)
  let minStack = push(minStack, 0)
  let minStack = push(minStack, -3)
  assert_eq!(get_min(minStack), -3)
  let minStack = pop(minStack)
  assert_eq!(top(minStack), 0)
  assert_eq!(get_min(minStack), -2)
}
