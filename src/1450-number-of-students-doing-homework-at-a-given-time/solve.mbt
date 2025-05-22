fn busy_student(
  start_time : Array[Int],
  end_time : Array[Int],
  query_time : Int
) -> Int {
  let n = start_time.length()
  let mut res = 0
  for i = 0; i < n; i = i + 1 {
    if start_time[i] <= query_time && end_time[i] >= query_time {
      res = res + 1
    }
  }
  res
}
