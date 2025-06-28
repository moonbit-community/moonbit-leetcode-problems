// Function to append an integer element to a @immut/list.T of int

///|
fn append(list : @immut/list.T[Int], value : Int) -> @immut/list.T[Int] {
  match list {
    Nil => Cons(value, Nil)
    Cons(head, tail) => Cons(head, append(tail, value))
  }
}

// The DFS function to explore numbers lexically

///|
fn dfs(u : Int, n : Int, ans : @immut/list.T[Int]) -> @immut/list.T[Int] {
  if u > n {
    return ans
  }
  let ans = append(ans, u) // Add u to ans
  let mut i = 0
  let mut updated_ans = ans
  while i < 10 {
    updated_ans = dfs(u * 10 + i, n, updated_ans)
    i = i + 1
  }
  updated_ans
}

// Function to generate the lexical ordering of numbers less than or equal to n

///|
fn lexical_order(n : Int) -> @immut/list.T[Int] {
  let mut ans : @immut/list.T[Int] = Nil
  let mut i = 1
  while i < 10 {
    ans = dfs(i, n, ans)
    i = i + 1
  }
  ans
}

// Test cases
