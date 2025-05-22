test "example 1" {
  let nums1 = [1, 3, 4, 8]
  let queries1 = [
    Query::{ left: 0, right: 1 },
    Query::{ left: 1, right: 2 },
    Query::{ left: 2, right: 3 },
    Query::{ left: 0, right: 3 },
  ]
  let expected1 = [2, 1, 4, 1]
  assert_eq!(min_absolute_difference_queries(nums1, queries1), expected1)
}

test "example 2" {
  let nums2 = [4, 5, 2, 2, 7, 10]
  let queries2 = [
    Query::{ left: 2, right: 3 },
    Query::{ left: 0, right: 2 },
    Query::{ left: 0, right: 5 },
    Query::{ left: 3, right: 5 },
  ]
  let expected2 = [-1, 1, 1, 3]
  assert_eq!(min_absolute_difference_queries(nums2, queries2), expected2)
}
