enum Stack {
  Empty
  Node(Int, Stack)
}

fn push(stack : Stack, value : Int) -> Stack {
  Node(value, stack)
}

fn pop(stack : Stack) -> (Int, Stack) {
  match stack {
    Node(head, tail) => (head, tail)
    Empty => abort("Stack is empty, cannot pop.")
  }
}

fn eval_rpn(tokens : @immut/list.T[String]) -> Int {
  let mut stack : Stack = Empty
  fn is_digit(c : Char) -> Bool {
    c >= '0' && c <= '9'
  }

  fn is_number(token : String) -> Bool {
    if token.length() > 1 {
      return true
    } else {
      return is_digit(token[0])
    }
  }

  fn to_int(token : String) -> Int {
    if token == "-" {
      return -1
    } else {
      let mut intValue = 0
      loop 0, token.length() {
        i, limit =>
          if i == limit {
            break intValue
          } else {
            intValue = intValue * 10 + (token[i].to_int() - '0'.to_int())
            continue i + 1, limit
          }
      }
    }
  }

  loop tokens {
    Nil => break
    Cons(token, rest) => {
      if is_number(token) {
        let intValue = to_int(token)
        stack = push(stack, intValue)
      } else {
        let (y, tmpStack) = pop(stack)
        let (x, newStack) = pop(tmpStack)
        let result = match token {
          "+" => x + y
          "-" => x - y
          "*" => x * y
          "/" => x / y
          _ => abort("Unsupported operation.")
        }
        stack = push(newStack, result)
      }
      continue rest
    }
  }
  let (result, _) = pop(stack)
  return result
}
