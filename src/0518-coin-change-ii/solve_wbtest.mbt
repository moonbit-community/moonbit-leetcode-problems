test "example 1" {
  let amount = 5
  let coins : Array[Int] = [1, 2, 5]
  assert_eq!(change(amount, coins), 4)
}

test "example 2" {
  let amount = 3
  let coins : Array[Int] = [2]
  assert_eq!(change(amount, coins), 0)
}

test "example 3" {
  let amount = 10
  let coins : Array[Int] = [10]
  assert_eq!(change(amount, coins), 1)
}
