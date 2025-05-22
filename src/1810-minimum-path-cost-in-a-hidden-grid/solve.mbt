struct GridMaster {
  can_move : (Char) -> Bool
  move : (Char) -> Int
  is_target : () -> Bool
}

struct Cell {
  row : Int
  col : Int
}

type IntInt (Int, Int) derive(Hash, Eq)

fn explore_grid(
  master : GridMaster,
  start_row : Int,
  start_col : Int
) -> (@hashmap.T[IntInt, Int], (Int, Int)) {
  let directions = [('U', -1, 0), ('D', 1, 0), ('L', 0, -1), ('R', 0, 1)]
  let reverse_direction = { 'U': 'D', 'D': 'U', 'L': 'R', 'R': 'L' }
  let grid = @hashmap.new()
  let stack = [Cell::{ row: start_row, col: start_col }]
  let mut target = (-1, -1)
  while stack.length() > 0 {
    let cell = stack.pop().unwrap()
    for i = 0; i < directions.length(); i = i + 1 {
      let (dir, d_row, d_col) = directions[i]
      let new_row = cell.row + d_row
      let new_col = cell.col + d_col
      if not(grid.contains(IntInt((new_row, new_col)))) && (master.can_move)(
        dir,
      ) {
        let cost = (master.move)(dir)
        if cost != -1 {
          grid.set((new_row, new_col), cost)
          if (master.is_target)() {
            target = (new_row, new_col)
          }
          stack.push(Cell::{ row: new_row, col: new_col })
          (master.move)(reverse_direction[dir].unwrap()) |> ignore
        }
      }
    }
  }
  (grid, target)
}

fn min_path_cost(master : GridMaster, start_row : Int, start_col : Int) -> Int {
  let (grid, target) = explore_grid(master, start_row, start_col)
  if target == (-1, -1) {
    return -1
  }
  let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
  let queue = [(start_row, start_col, 0)]
  let visited = @hashmap.new()
  visited.set(IntInt((start_row, start_col)), 0)
  while queue.length() > 0 {
    let (row, col, cost) = queue.pop().unwrap()
    if (row, col) == target {
      return cost
    }
    for i = 0; i < directions.length(); i = i + 1 {
      let (d_row, d_col) = directions[i]
      let new_row = row + d_row
      let new_col = col + d_col
      if grid.contains((new_row, new_col)) {
        let new_cost = cost + grid.get((new_row, new_col)).unwrap()
        if not(visited.contains((new_row, new_col))) || visited.get(
          (new_row, new_col),
        ).unwrap() > new_cost {
          visited.set((new_row, new_col), new_cost)
          queue.push((new_row, new_col, new_cost))
        }
      }
    }
  }
  -1
}

// Test cases
