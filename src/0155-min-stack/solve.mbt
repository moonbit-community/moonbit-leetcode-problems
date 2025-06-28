///|
pub typealias (@list.T[Int], @list.T[Int]) as MinStack

///|
pub fn new_min_stack() -> MinStack {
  let stk1 = @list.new()
  let stk2 = @list.new().add(@int.max_value)
  (stk1, stk2)
}

///|
pub fn push(stack : MinStack, val : Int) -> MinStack {
  let (stk1, stk2) = stack
  let newStk1 = stk1.add(val)
  let newMin : Int = @math.minimum(val, stk2.unsafe_head())
  let newStk2 = stk2.add(newMin)
  (newStk1, newStk2)
}

///|
pub fn pop(stack : MinStack) -> MinStack {
  let (stk1, stk2) = stack
  guard stk1 is More(_, tail=xs) else { stack }
  guard stk2 is More(_, tail=ys)
  (xs, ys)
}

///|
pub fn top(stack : MinStack) -> Int {
  stack.0.head().unwrap()
}

///|
pub fn get_min(stack : MinStack) -> Int {
  stack.1.head().unwrap()
}
