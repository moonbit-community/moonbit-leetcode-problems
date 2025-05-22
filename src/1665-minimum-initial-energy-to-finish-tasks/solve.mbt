fn custom_sort(tasks : Array[(Int, Int)]) -> Array[(Int, Int)] {
  let mut i = 1
  while i < tasks.length() {
    let key = tasks[i]
    let key_diff = key.0 - key.1
    let mut j = i - 1
    while j >= 0 && tasks[j].0 - tasks[j].1 > key_diff {
      tasks[j + 1] = tasks[j]
      j = j - 1
    }
    tasks[j + 1] = key
    i = i + 1
  }
  tasks
}

fn minimum_effort(tasks : Array[(Int, Int)]) -> Int {
  let sorted_tasks = custom_sort(tasks)
  let ans = 0
  let cur = 0
  fn loop_through_tasks(
    i : Int,
    len : Int,
    sorted_tasks : Array[(Int, Int)],
    ans : Int,
    cur : Int
  ) -> Int {
    if i == len {
      ans
    } else {
      let task = sorted_tasks[i]
      let a = task.0
      let m = task.1
      let mut ans_mut = ans
      let mut cur_mut = cur
      if cur < m {
        ans_mut = ans + m - cur
        cur_mut = m
      }
      cur_mut = cur_mut - a
      loop_through_tasks(i + 1, len, sorted_tasks, ans_mut, cur_mut)
    }
  }

  loop_through_tasks(0, tasks.length(), sorted_tasks, ans, cur)
}
