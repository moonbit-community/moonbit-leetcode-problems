///|
struct RhombusSumCalculator {
  grid : Array[Array[Int]]
}

///|
fn RhombusSumCalculator::new(grid : Array[Array[Int]]) -> RhombusSumCalculator {
  RhombusSumCalculator::{ grid, }
}

///|
fn RhombusSumCalculator::get_biggest_three_rhombus_sums(
  self : RhombusSumCalculator
) -> Array[Int] {
  let m = self.grid.length()
  let n = self.grid[0].length()
  let sums = @hashmap.T::new()
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      let max_size = @math.minimum(
        @math.minimum(i, m - 1 - i),
        @math.minimum(j, n - 1 - j),
      )
      for size = 1; size <= max_size; size = size + 1 {
        let sum = self.calculate_rhombus_sum(i, j, size)
        sums.set(sum, 1)
      }
    }
  }
  let sorted_sums = Array::make(sums.size(), 0)
  let mut index = 0
  sums.each(fn(sum, __) {
    sorted_sums[index] = sum
    index = index + 1
  })
  sorted_sums.sort_by(fn(a, b) { b - a })
  let result_length = @math.minimum(3, sorted_sums.length())
  let result = Array::make(result_length, 0)
  for i = 0; i < result_length; i = i + 1 {
    result[i] = sorted_sums[i]
  }
  result
}

///|
fn RhombusSumCalculator::calculate_rhombus_sum(
  self : RhombusSumCalculator,
  i : Int,
  j : Int,
  size : Int
) -> Int {
  let mut sum = 0
  for k = 0; k < size; k = k + 1 {
    sum = sum + self.grid[i - k][j + k]
    sum = sum + self.grid[i + k][j + k]
    sum = sum + self.grid[i - k][j - k]
    sum = sum + self.grid[i + k][j - k]
  }
  sum -
  self.grid[i - size][j] -
  self.grid[i + size][j] -
  self.grid[i][j - size] -
  self.grid[i][j + size]
}

// Test cases
