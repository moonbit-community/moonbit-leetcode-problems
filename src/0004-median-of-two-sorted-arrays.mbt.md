---
difficulty: Hard
verified: true
---

# Median of Two Sorted Arrays

Given two sorted arrays `nums1` and `nums2` of size `m` and `n` respectively, return **the median** of the two sorted arrays.

The overall run time complexity should be `O(log (m+n))`.

**Example 1:**

**Input:** nums1 = \[1,3\], nums2 = \[2\]
**Output:** 2.00000
**Explanation:** merged array = \[1,2,3\] and median is 2.

**Example 2:**

**Input:** nums1 = \[1,2\], nums2 = \[3,4\]
**Output:** 2.50000
**Explanation:** merged array = \[1,2,3,4\] and median is (2 + 3) / 2 = 2.5.

**Constraints:**

* `nums1.length == m`
* `nums2.length == n`
* `0 <= m <= 1000`
* `0 <= n <= 1000`
* `1 <= m + n <= 2000`
* `-10^6 <= nums1[i], nums2[i] <= 10^6`

## Suggested Approach

```mbt nocheck
pub fn find_median_sorted_arrays(nums1 : Array[Int], nums2 : Array[Int]) -> Double {
  ...
}
```

## Solution

```mbt
pub fn find_median_sorted_arrays(nums1 : Array[Int], nums2 : Array[Int]) -> Double {
  let total_length = nums1.length() + nums2.length()
  let is_even = total_length % 2 == 0
  let mid = total_length / 2
  let mut i = 0
  let mut j = 0
  let mut prev = 0
  let mut curr = 0
  for k = 0; k <= mid; k = k + 1 {
    prev = curr
    if i < nums1.length() && (j >= nums2.length() || nums1[i] <= nums2[j]) {
      curr = nums1[i]
      i = i + 1
    } else {
      curr = nums2[j]
      j = j + 1
    }
  }
  if is_even {
    (prev.to_double() + curr.to_double()) / 2.0
  } else {
    curr.to_double()
  }
}
```

## Tests

```moonbit
test "example 1" {
  let nums1 = [1, 3]
  let nums2 = [2]
  assert_eq(find_median_sorted_arrays(nums1, nums2), 2.0)
}

test "example 2" {
  let nums1 = [1, 2]
  let nums2 = [3, 4]
  assert_eq(find_median_sorted_arrays(nums1, nums2), 2.5)
}

test "example 3" {
  let nums1 = []
  let nums2 = [1]
  assert_eq(find_median_sorted_arrays(nums1, nums2), 1.0)
}

test "example 4" {
  let nums1 = [1, 2]
  let nums2 = [-1, 3]
  assert_eq(find_median_sorted_arrays(nums1, nums2), 1.5)
}
```
