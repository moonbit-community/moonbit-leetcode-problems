///|
struct Graph {
  adj_list : @hashmap.T[Int, @immut/list.T[Int]]
  in_degree : Array[Int]
}

///|
fn Graph::new(n : Int) -> Graph {
  Graph::{ adj_list: @hashmap.new(), in_degree: Array::make(n, 0) }
}

///|
fn Graph::add_edge(self : Graph, u : Int, v : Int) -> Unit {
  self.adj_list.set(
    u,
    self.adj_list
    .get_or_default(u, @immut/list.T::Nil)
    .concat(@immut/list.T::Cons(v, Nil)),
  )
  self.in_degree[v] = self.in_degree[v] + 1
}

///|
fn factorial(n : Int) -> Int {
  let mut result = 1
  for i = 1; i <= n; i = i + 1 {
    result = result * i % 1000000007
  }
  result
}

///|
fn count_ways_to_build_rooms(prev_room : Array[Int]) -> Int {
  let n = prev_room.length()
  let graph = Graph::new(n)
  for i = 1; i < n; i = i + 1 {
    graph.add_edge(prev_room[i], i)
  }
  let mut queue = @immut/list.T::Nil
  for i = 0; i < n; i = i + 1 {
    if graph.in_degree[i] == 0 {
      queue = queue.concat(@immut/list.T::Cons(i, Nil))
    }
  }
  let mut ways = 1
  let mut count = 0
  while not(queue.is_empty()) {
    let node = queue.head_exn()
    queue = queue.remove_at(0)
    count = count + 1
    if graph.adj_list.contains(node) {
      let children = graph.adj_list.get(node).unwrap()
      let num_children = children.length()
      ways = ways * factorial(num_children) % 1000000007
      children.each(fn(child) {
        graph.in_degree[child] = graph.in_degree[child] - 1
        if graph.in_degree[child] == 0 {
          queue = queue.concat(@immut/list.T::Cons(child, Nil))
        }
      })
    }
  }
  if count != n {
    return 0
  }
  ways
}
