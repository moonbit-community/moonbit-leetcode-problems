test "example" {
  let nums : Array[Int] = [4, 5, 8, 2]
  let kth_largest = KthLargest::new(3, nums)
  assert_eq!(kth_largest.peek(), 4) // The kth largest element after the initial round is 4
  let kth_largest = kth_largest.add(3)
  assert_eq!(kth_largest.peek(), 4) // After adding 3, the kth largest element remains 4
  let kth_largest = kth_largest.add(5)
  assert_eq!(kth_largest.peek(), 5) // After adding 5, the kth largest element is 5
}
