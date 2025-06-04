---
difficulty: Medium
verified: true
---

# Rotate Image

You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).
You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.

Example 1:

Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
Output: [[7,4,1],[8,5,2],[9,6,3]]

Example 2:

Input: matrix = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
Output: [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]

Constraints:

n == matrix.length == matrix[i].length
1 <= n <= 20
-1000 <= matrix[i][j] <= 1000

## Suggested Approach

```mbt nocheck
pub fn rotate(matrix: Array[Array[Int]]) -> Unit {
  ...
}
```

## Solution

```mbt
typealias Matrix = Array[Array[Int]]

pub fn rotate(mat : Matrix) -> Unit {
  let n = mat.length()
  for i in 0..<n {
    for j in i..<n {
      let tmp = mat[i][j]
      mat[i][j] = mat[j][i]
      mat[j][i] = tmp
    }
  }
  for ln in mat {
    ln.rev_inplace()
  }
}
```

## Tests

```moonbit
test "example 1" {
  let matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  rotate(matrix)
  inspect(matrix, content="[[7, 4, 1], [8, 5, 2], [9, 6, 3]]")
}

test "example 2" {
  let matrix = [[5, 1, 9, 11], [2, 4, 8, 10], [13, 3, 6, 7], [15, 14, 12, 16]]
  rotate(matrix)
  inspect(matrix, content="[[15, 13, 2, 5], [14, 3, 4, 1], [12, 6, 8, 9], [16, 7, 10, 11]]")
}
```
