struct MinCost {
  value : Bool
  cost : Int
}

fn min_cost_to_change_final_value(expression : String) -> Int {
  let stack = Array::make(0, MinCost::{ value: false, cost: 0 })
  let mut i = 0
  while i < expression.length() {
    let ch = expression[i]
    if ch == '(' {
      stack.push(MinCost::{ value: false, cost: 0 })
    } else if ch == ')' {
      let top = stack.pop().unwrap()
      let prev = stack.pop().unwrap()
      let new_cost = if prev.value == top.value {
        min(prev.cost + 1, top.cost + 1)
      } else {
        min(prev.cost, top.cost)
      }
      stack.push(MinCost::{ value: top.value, cost: new_cost })
    } else if ch == '&' || ch == '|' {
      let top = stack.pop().unwrap()
      let prev = stack.pop().unwrap()
      let (new_value, new_cost) = if ch == '&' {
        if prev.value && top.value {
          (true, min(prev.cost, top.cost))
        } else if prev.value || top.value {
          (false, 1)
        } else {
          (false, min(prev.cost + 1, top.cost + 1))
        } // ch == '|'
      } else if prev.value || top.value {
        (true, min(prev.cost, top.cost))
      } else if prev.value && top.value {
        (true, 1)
      } else {
        (false, min(prev.cost + 1, top.cost + 1))
      }
      stack.push(MinCost::{ value: new_value, cost: new_cost })
    } else if ch == '1' || ch == '0' {
      stack.push(MinCost::{ value: ch == '1', cost: 1 })
    }
    i = i + 1
  }
  stack.pop().unwrap().cost
}

fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}
