fn new_min_stack() -> (@immut/list.T[Int], @immut/list.T[Int]) {
  let stk1 : @immut/list.T[Int] = Nil
  let stk2 : @immut/list.T[Int] = Cons(max_value(), Nil)
  (stk1, stk2)
}

fn push(
  stack : (@immut/list.T[Int], @immut/list.T[Int]),
  val : Int
) -> (@immut/list.T[Int], @immut/list.T[Int]) {
  let (stk1, stk2) = stack
  let newStk1 : @immut/list.T[Int] = Cons(val, stk1)
  let newMin : Int = min(val, stk2.head_exn())
  let newStk2 : @immut/list.T[Int] = Cons(newMin, stk2)
  (newStk1, newStk2)
}

fn pop(
  stack : (@immut/list.T[Int], @immut/list.T[Int])
) -> (@immut/list.T[Int], @immut/list.T[Int]) {
  let (stk1, stk2) = stack
  match stk1 {
    Cons(_, xs) =>
      match stk2 {
        Cons(_, ys) => (xs, ys)
        Nil => (xs, stk2) // Should never happen
      }
    Nil => (stk1, stk2) // No-op; stack was empty
  }
}

fn top(stack : (@immut/list.T[Int], @immut/list.T[Int])) -> Int {
  let (stk1, _) = stack
  match stk1 {
    Cons(x, _) => x
    Nil => abort("Stack is empty")
  }
}

fn get_min(stack : (@immut/list.T[Int], @immut/list.T[Int])) -> Int {
  let (_, stk2) = stack
  match stk2 {
    Cons(x, _) => x
    Nil => abort("Stack is empty")
  }
}

fn min(x : Int, y : Int) -> Int {
  if x < y {
    x
  } else {
    y
  }
}

fn max_value() -> Int {
  2147483647
}
