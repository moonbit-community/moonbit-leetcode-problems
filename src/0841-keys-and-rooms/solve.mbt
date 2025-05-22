///|
struct Graph {
  rooms : @immut/list.T[@immut/list.T[Int]]
  mut visited : @immut/list.T[Bool]
  mut count : Int
}

///|
fn Graph::new(rooms : @immut/list.T[@immut/list.T[Int]]) -> Graph {
  {
    rooms,
    visited: @immut/list.from_array(Array::make(rooms.length(), false)),
    count: 0,
  }
}

///|
fn Graph::dfs(self : Graph, i : Int) -> Graph {
  match self.visited.nth_exn(i) {
    true => self
    _ => {
      let mut graph = self
      let temp = graph.visited.to_array()
      temp[i] = true
      graph.visited = @immut/list.from_array(temp)
      graph.count = graph.count + 1
      let mut j = 0
      let room = graph.rooms.nth_exn(i)
      while j < room.length() {
        let nextRoom = room.nth_exn(j)
        graph = graph.dfs(nextRoom)
        j = j + 1
      }
      graph
    }
  }
}

///|
fn can_visit_all_rooms(rooms : @immut/list.T[@immut/list.T[Int]]) -> Bool {
  let graph = Graph::new(rooms)
  let graph = graph.dfs(0)
  graph.count == graph.rooms.length()
}
