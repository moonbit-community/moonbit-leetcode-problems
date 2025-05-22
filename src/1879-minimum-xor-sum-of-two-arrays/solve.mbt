fn min_xor_sum(nums1 : Array[Int], nums2 : Array[Int]) -> Int {
  let n = nums1.length()
  let mut min_sum = 2_147_483_647 // Initialize to a large number

  // Helper function to generate permutations
  fn permute(
    arr : Array[Int],
    l : Int,
    r : Int,
    min_sum : Int,
    nums1 : Array[Int]
  ) -> Int {
    let arr = arr
    let mut min_sum = min_sum
    if l == r {
      let mut sum = 0
      for i = 0; i < arr.length(); i = i + 1 {
        sum = sum + nums1[i].lxor(arr[i])
      }
      if sum < min_sum {
        min_sum = sum
      }
    } else {
      for i = l; i <= r; i = i + 1 {
        swap(arr, l, i)
        min_sum = permute(arr, l + 1, r, min_sum, nums1)
        swap(arr, l, i) // backtrack
      }
    }
    min_sum
  }

  // Helper function to swap elements in an array
  fn swap(arr : Array[Int], i : Int, j : Int) -> Unit {
    let temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
  }

  min_sum = permute(nums2, 0, n - 1, min_sum, nums1)
  min_sum
}

// Test cases
