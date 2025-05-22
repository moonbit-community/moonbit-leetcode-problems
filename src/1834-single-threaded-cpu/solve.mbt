struct Task {
  index : Int
  enqueue_time : Int
  processing_time : Int
} derive(Eq)

fn Task::compare(self : Task, other : Task) -> Int {
  if self.processing_time != other.processing_time {
    return self.processing_time - other.processing_time
  } else {
    return self.index - other.index
  }
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn single_threaded_cpu(tasks : Array[Array[Int]]) -> Array[Int] {
  let n = tasks.length()
  let task_list = []
  for i = 0; i < n; i = i + 1 {
    task_list.push(
      Task::{
        index: i,
        enqueue_time: tasks[i][0],
        processing_time: tasks[i][1],
      },
    )
  }

  // Sort tasks by enqueue time, and by index if enqueue times are equal
  task_list.sort_by(
    fn(a : Task, b : Task) -> Int {
      if a.enqueue_time != b.enqueue_time {
        return a.enqueue_time - b.enqueue_time
      } else {
        return a.index - b.index
      }
    },
  )
  let pq = @priority_queue.T::new()
  let result = Array::make(n, 0)
  let mut result_index = 0
  let mut current_time = 0
  let mut task_index = 0
  while result_index < n {
    // Add all tasks that are available at the current time to the priority queue
    while task_index < n && task_list[task_index].enqueue_time <= current_time {
      pq.push(task_list[task_index])
      task_index = task_index + 1
    }
    if pq.length() > 0 {
      // Process the task with the shortest processing time
      let task = pq.pop().unwrap()
      result[result_index] = task.index
      result_index = result_index + 1
      current_time = current_time + task.processing_time
      // If no tasks are available, jump to the next task's enqueue time
    } else if task_index < n {
      current_time = task_list[task_index].enqueue_time
    }
  }
  return result
}
