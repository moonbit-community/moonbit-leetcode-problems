///|
fn combination_sum3_helper(
  t : @immut/list.T[Int],
  ans : @immut/list.T[@immut/list.T[Int]],
  start : Int,
  remainingSum : Int,
  k : Int
) -> @immut/list.T[@immut/list.T[Int]] {
  if remainingSum == 0 {
    if t.length() == k {
      ans.concat(@immut/list.T::of([t]))
    } else {
      ans
    }
  } else if start > 9 || start > remainingSum || t.length() >= k {
    ans
  } else {
    let mut currentAns = ans
    for i = start; i <= 9; i = i + 1 {
      let mut newT = t.concat(@immut/list.T::of([i]))
      currentAns = combination_sum3_helper(
        newT,
        currentAns,
        i + 1,
        remainingSum - i,
        k,
      )
      newT = newT.drop(0)
    }
    currentAns
  }
}

///|
fn combination_sum3(k : Int, n : Int) -> @immut/list.T[@immut/list.T[Int]] {
  combination_sum3_helper(Nil, Nil, 1, n, k)
}
