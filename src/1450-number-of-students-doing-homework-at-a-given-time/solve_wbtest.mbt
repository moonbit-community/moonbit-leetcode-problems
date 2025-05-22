test "example 1" {
  let start_time : Array[Int] = [1, 2, 3]
  let end_time : Array[Int] = [3, 2, 7]
  let query_time : Int = 4
  assert_eq!(busy_student(start_time, end_time, query_time), 1)
}

test "example 2" {
  let start_time : Array[Int] = [4, 2, 2, 1]
  let end_time : Array[Int] = [4, 3, 2, 2]
  let query_time : Int = 3
  assert_eq!(busy_student(start_time, end_time, query_time), 2)
}

test "example 3" {
  let start_time : Array[Int] = [9]
  let end_time : Array[Int] = [10]
  let query_time : Int = 5
  assert_eq!(busy_student(start_time, end_time, query_time), 0)
}
