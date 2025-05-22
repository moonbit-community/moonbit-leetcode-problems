///|
fn rotate_grid(grid : Array[Array[Int]], k : Int) -> Array[Array[Int]] {
  let m = grid.length()
  let n = grid[0].length()
  let layers = m / 2
  let result = Array::make(m, Array::make(n, 0))
  for layer = 0; layer < layers; layer = layer + 1 {
    let layer_elements = Array::make(0, 0)

    // Top row
    for i = layer; i < n - layer; i = i + 1 {
      layer_elements.push(grid[layer][i])
    }
    // Right column
    for i = layer + 1; i < m - layer; i = i + 1 {
      layer_elements.push(grid[i][n - layer - 1])
    }
    // Bottom row
    for i = n - layer - 2; i >= layer; i = i - 1 {
      layer_elements.push(grid[m - layer - 1][i])
    }
    // Left column
    for i = m - layer - 2; i > layer; i = i - 1 {
      layer_elements.push(grid[i][layer])
    }
    let layer_length = layer_elements.length()
    let rotate_by = k % layer_length

    // Rotate the layer elements
    let rotated_elements = Array::make(layer_length, 0)
    for i = 0; i < layer_length; i = i + 1 {
      rotated_elements[i] = layer_elements[(i + rotate_by) % layer_length]
    }

    // Place the rotated elements back into the grid
    let mut index = 0

    // Top row
    for i = layer; i < n - layer; i = i + 1 {
      result[layer][i] = rotated_elements[index]
      index = index + 1
    }
    // Right column
    for i = layer + 1; i < m - layer; i = i + 1 {
      result[i][n - layer - 1] = rotated_elements[index]
      index = index + 1
    }
    // Bottom row
    for i = n - layer - 2; i >= layer; i = i - 1 {
      result[m - layer - 1][i] = rotated_elements[index]
      index = index + 1
    }
    // Left column
    for i = m - layer - 2; i > layer; i = i - 1 {
      result[i][layer] = rotated_elements[index]
      index = index + 1
    }
  }
  result
}

// Test cases
