test "test lexical_order with n=13" {
  let result = lexical_order(13)
  let expected : @immut/list.T[Int] = Cons(
    1,
    Cons(
      10,
      Cons(
        11,
        Cons(
          12,
          Cons(
            13,
            Cons(
              2,
              Cons(3, Cons(4, Cons(5, Cons(6, Cons(7, Cons(8, Cons(9, Nil))))))),
            ),
          ),
        ),
      ),
    ),
  )
  assert_eq!(result, expected)
}

test "test lexical_order with n=2" {
  let result = lexical_order(2)
  let expected : @immut/list.T[Int] = Cons(1, Cons(2, Nil))
  assert_eq!(result, expected)
}
