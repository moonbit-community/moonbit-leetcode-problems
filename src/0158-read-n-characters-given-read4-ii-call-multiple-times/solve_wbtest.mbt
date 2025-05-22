///|
test "example 1" {
  let original_buf4 = ArrayChar::Cons('a', Cons('b', Cons('c', Cons('d', Nil))))
  let solution = Solution::{ buf4: original_buf4, read4: Solution::mock_read4 }
  let buf = ArrayChar::Cons('-', Cons('-', Cons('-', Cons('-', Nil))))
  let n = 1
  let num_read = Solution::read(solution, buf, n)
  assert_eq!(num_read, 1)
}

///|
test "example 2" {
  let original_buf4 = ArrayChar::Cons('a', Cons('b', Cons('c', Cons('d', Nil))))
  let solution = Solution::{ buf4: original_buf4, read4: Solution::mock_read4 }
  let buf = ArrayChar::Cons('-', Cons('-', Cons('-', Cons('-', Nil))))
  let n = 2
  let num_read = Solution::read(solution, buf, n)
  assert_eq!(num_read, 2)
}
