///|
enum NestedInteger {
  Single(Int)
  List(@immut/list.T[NestedInteger])
}

///|
fn depth_sum(nestedList : @immut/list.T[NestedInteger], depth : Int) -> Int {
  match nestedList {
    Nil => 0
    Cons(head, tail) =>
      match head {
        Single(value) => value * depth + depth_sum(tail, depth)
        List(subList) => depth_sum(subList, depth + 1) + depth_sum(tail, depth)
      }
  }
}

///|
fn main_depth_sum(nestedList : @immut/list.T[NestedInteger]) -> Int {
  depth_sum(nestedList, 1)
}

// Test cases
