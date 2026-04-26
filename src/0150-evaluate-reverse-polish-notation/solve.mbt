///|
enum Stack {
  Empty
  Node(Int, Stack)
}

///|
fn push(stack : Stack, value : Int) -> Stack {
  Node(value, stack)
}

///|
fn pop(stack : Stack) -> (Int, Stack) {
  match stack {
    Node(head, tail) => (head, tail)
    Empty => abort("Stack is empty, cannot pop.")
  }
}

///|
fn eval_rpn(tokens : @immut/list.T[String]) -> Int {
  let stack : Array[Int] = []
  for token in tokens.iter() {
    match token {
      "+" | "-" | "*" | "/" => {
        let y = stack.pop().unwrap()
        let x = stack.pop().unwrap()
        let result = match token {
          "+" => x + y
          "-" => x - y
          "*" => x * y
          "/" => x / y
          _ => abort("Unsupported operation.")
        }
        stack.push(result)
      }
      _ => stack.push((try? @string.parse_int(token)).unwrap())
    }
  }
  stack.pop().unwrap()
}
