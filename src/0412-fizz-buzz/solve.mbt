///|
fn fizz_buzz(n : Int) -> @immut/list.T[String] {
  fn appendFizzBuzz(i : Int, s : String) -> String {
    let mut result = s
    if i % 3 == 0 {
      result = result + "Fizz"
    }
    if i % 5 == 0 {
      result = result + "Buzz"
    }
    if result == "" {
      result = i.to_string()
    }
    result
  }

  let mut ans : @immut/list.T[String] = @immut/list.T::Nil
  let mut i = 1
  while i <= n {
    ans = @immut/list.T::Cons(appendFizzBuzz(i, ""), ans)
    i = i + 1
  }
  reverseList(ans)
}

///|
fn reverseList(list : @immut/list.T[String]) -> @immut/list.T[String] {
  loop list, @immut/list.T::Nil {
    @immut/list.T::Nil, acc => acc
    @immut/list.T::Cons(x, xs), acc => continue xs, @immut/list.T::Cons(x, acc)
  }
}
