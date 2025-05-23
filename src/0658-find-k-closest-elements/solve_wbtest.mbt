///|
test "example 1" {
  let arr : Array[Int] = [1, 2, 3, 4, 5]
  let k : Int = 4
  let x : Int = 3
  let expected : @immut/list.T[Int] = @immut/list.of([1, 2, 3, 4])
  assert_eq!(find_closest_elements(arr, k, x), expected)
}

///|
test "example 2" {
  let arr : Array[Int] = [1, 2, 3, 4, 5]
  let k : Int = 4
  let x : Int = -1
  let expected : @immut/list.T[Int] = @immut/list.of([1, 2, 3, 4])
  assert_eq!(find_closest_elements(arr, k, x), expected)
}
