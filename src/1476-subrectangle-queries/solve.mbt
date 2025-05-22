struct SubrectangleQueries {
  mut g : Array[Array[Int]]
  mut ops : Array[(Int, Int, Int, Int, Int)]
}

fn subrectangle_queries_new(
  rectangle : Array[Array[Int]]
) -> SubrectangleQueries {
  SubrectangleQueries::{ g: rectangle, ops: [] }
}

fn subrectangle_queries_update_subrectangle(
  self : SubrectangleQueries,
  row1 : Int,
  col1 : Int,
  row2 : Int,
  col2 : Int,
  new_value : Int
) -> Unit {
  self.ops.push((row1, col1, row2, col2, new_value))
}

fn subrectangle_queries_get_value(
  self : SubrectangleQueries,
  row : Int,
  col : Int
) -> Int {
  let len = self.ops.length()
  for i = len - 1; i >= 0; i = i - 1 {
    let (r1, c1, r2, c2, v) = self.ops[i]
    if r1 <= row && row <= r2 && c1 <= col && col <= c2 {
      return v
    }
  }
  self.g[row][col]
}
