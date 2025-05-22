///|
struct Server {
  weight : Int
  index : Int
} derive(Eq)

///|
impl Compare for Server with compare(self : Server, other : Server) -> Int {
  if self.weight != other.weight {
    return self.weight - other.weight
  } else {
    return self.index - other.index
  }
}

///|
fn process_tasks_using_servers(
  servers : Array[Int],
  tasks : Array[Int]
) -> Array[Int] {
  let n = servers.length()
  let m = tasks.length()
  let free_servers = @priority_queue.new()
  let task_queue = @queue.new()
  let ans = Array::make(m, 0)
  let server_availability = Array::make(n, 0)
  for i = 0; i < n; i = i + 1 {
    free_servers.push(Server::{ weight: servers[i], index: i })
  }
  for t = 0; t < m; t = t + 1 {
    task_queue.push(t)
    while not(task_queue.is_empty()) && not(free_servers.is_empty()) {
      let task_index = task_queue.pop().unwrap()
      let server = free_servers.pop().unwrap()
      ans[task_index] = server.index
      server_availability[server.index] = t + tasks[task_index]
    }
    for i = 0; i < n; i = i + 1 {
      if server_availability[i] <= t {
        free_servers.push(Server::{ weight: servers[i], index: i })
      }
    }
  }
  return ans
}

// Test cases
