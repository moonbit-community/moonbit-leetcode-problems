test "example 1" {
  let job_difficulty : Array[Int] = [6, 5, 4, 3, 2, 1]
  let d : Int = 2
  assert_eq!(min_difficulty(job_difficulty, d), 7)
}

test "example 2" {
  let job_difficulty : Array[Int] = [9, 9, 9]
  let d : Int = 4
  assert_eq!(min_difficulty(job_difficulty, d), -1)
}

test "example 3" {
  let job_difficulty : Array[Int] = [1, 1, 1]
  let d : Int = 3
  assert_eq!(min_difficulty(job_difficulty, d), 3)
}
