///|
struct Position {
  row : Int
  col : Int
}

///|
fn get_position(x : Int, n : Int) -> Position {
  let row = (x - 1) / n
  let mut col = (x - 1) % n
  if row % 2 == 1 {
    col = n - 1 - col
  }
  Position::{ row: n - 1 - row, col }
}

///|
fn snakes_and_ladders(board : Array[Array[Int]]) -> Int {
  let n = board.length()
  let vis : Array[Bool] = Array::make(n * n + 1, false)
  let mut queue : @immut/list.T[Int] = Cons(1, Nil)
  vis[1] = true
  let mut ans = 0
  while not(queue == Nil) {
    let mut size = 0
    let mut new_queue : @immut/list.T[Int] = Nil
    loop queue, size {
      Cons(_front, rest), s => {
        queue = rest
        size = s + 1
        continue rest, size
      }
      Nil, _s => break
    }
    while size > 0 {
      size = size - 1
      let curr = match queue {
        Cons(front, rest) => {
          queue = rest
          front
        }
        _ => abort("Queue should not be empty here")
      }
      if curr == n * n {
        return ans
      }
      for k = curr + 1; k < min(curr + 6, n * n); k = k + 1 {
        let pos = get_position(k, n)
        let mut next = k
        if board[pos.row][pos.col] != -1 {
          next = board[pos.row][pos.col]
        }
        if not(vis[next]) {
          vis[next] = true
          new_queue = append(new_queue, next)
        }
      }
    }
    queue = new_queue
    ans = ans + 1
  }
  -1
}

///|
fn append(list : @immut/list.T[Int], value : Int) -> @immut/list.T[Int] {
  match list {
    Nil => Cons(value, Nil)
    Cons(head, tail) => Cons(head, append(tail, value))
  }
}

///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}
