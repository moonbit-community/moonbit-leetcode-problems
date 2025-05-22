///|
fn find_minimum_time_to_finish_all_jobs(jobs : Array[Int], k : Int) -> Int {
  jobs.sort_by(fn(a, b) { return b - a }) // Sort jobs in descending order
  let result = 2_0000_0000 // Initialize result with a large number
  let worker_times = Array::make(k, 0) // Array to keep track of each worker's total time
  fn backtrack(
    jobs : Array[Int],
    start : Int,
    worker_times : Array[Int],
    result : Ref[Int]
  ) {
    if start == jobs.length() {
      let max_time = max_array(worker_times)
      if max_time < result.val {
        result.val = max_time
      }
      return
    }
    let seen = @hashmap.new()
    for i = 0; i < worker_times.length(); i = i + 1 {
      if worker_times[i] + jobs[start] < result.val {
        if seen.contains(worker_times[i]) {
          continue
        }
        seen.set(worker_times[i], true)
        worker_times[i] += jobs[start]
        backtrack(jobs, start + 1, worker_times, result)
        worker_times[i] -= jobs[start]
      }
    }
  }

  backtrack(jobs, 0, worker_times, { val: result })
  result
}

///|
fn max_array(arr : Array[Int]) -> Int {
  let mut max_val = arr[0]
  for i = 1; i < arr.length(); i = i + 1 {
    if arr[i] > max_val {
      max_val = arr[i]
    }
  }
  max_val
}
