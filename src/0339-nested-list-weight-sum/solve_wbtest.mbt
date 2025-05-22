test "example 1" {
  let nestedList = @immut/list.T::Cons(
    NestedInteger::Single(1),
    @immut/list.T::Cons(
      NestedInteger::List(
        @immut/list.T::Cons(
          NestedInteger::Single(4),
          @immut/list.T::Cons(
            NestedInteger::List(
              @immut/list.T::Cons(NestedInteger::Single(6), Nil),
            ),
            Nil,
          ),
        ),
      ),
      Nil,
    ),
  )
  assert_eq!(main_depth_sum(nestedList), 27)
}

test "example 2" {
  let nestedList = @immut/list.T::Nil
  assert_eq!(main_depth_sum(nestedList), 0)
}

test "example 3" {
  let nestedList = @immut/list.T::Cons(
    NestedInteger::Single(1),
    @immut/list.T::Cons(NestedInteger::Single(2), Nil),
  )
  assert_eq!(main_depth_sum(nestedList), 3)
}
