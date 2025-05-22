///|
fn min_space_wasted_from_packaging(
  packages : Array[Int],
  boxes : Array[Array[Int]]
) -> Int {
  let mod_value = 1_000_000_007
  let n = packages.length()
  let m = boxes.length()

  // Sort the packages
  packages.sort()

  // Function to calculate wasted space for a given supplier
  fn calculate_wasted_space(
    packages : Array[Int],
    supplier_boxes : Array[Int]
  ) -> Int {
    let mut wasted_space = 0
    let mut package_index = 0
    let mut box_index = 0
    let supplier_boxes_length = supplier_boxes.length()
    while package_index < packages.length() {
      let package_size = packages[package_index]

      // Find the smallest box that can fit the current package
      while box_index < supplier_boxes_length &&
            supplier_boxes[box_index] < package_size {
        box_index = box_index + 1
      }

      // If no box can fit the package, return -1
      if box_index == supplier_boxes_length {
        return -1
      }

      // Calculate the wasted space
      wasted_space = wasted_space + (supplier_boxes[box_index] - package_size)
      package_index = package_index + 1
    }
    return wasted_space
  }

  // Sort each supplier's boxes
  for i = 0; i < m; i = i + 1 {
    boxes[i].sort()
  }

  // Calculate the minimum wasted space among all suppliers
  let mut min_wasted_space = 2_000_000_000
  for i = 0; i < m; i = i + 1 {
    let wasted_space = calculate_wasted_space(packages, boxes[i])
    if wasted_space != -1 {
      min_wasted_space = @math.minimum(min_wasted_space, wasted_space)
    }
  }

  // If no supplier can fit all packages, return -1
  if min_wasted_space == 2_000_000_000 {
    return -1
  }

  // Return the minimum wasted space modulo 1_000_000_007
  return min_wasted_space % mod_value
}

// Test cases
