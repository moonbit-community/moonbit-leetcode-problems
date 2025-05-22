///|
type ArrayInt Array[Int]

///|
fn ArrayInt::compare(self : ArrayInt, other : ArrayInt) -> Int {
  for i = 0; i < @math.minimum(self._.length(), other._.length()); i = i + 1 {
    if self._[i] != other._[i] {
      return self._[i] - other._[i]
    }
  } else {
    self._.length() - other._.length()
  }
}

///|
fn ArrayInt::op_equal(self : ArrayInt, other : ArrayInt) -> Bool {
  if self._.length() != other._.length() {
    return false
  } else {
    for i = 0; i < self._.length(); i = i + 1 {
      if self._[i] != other._[i] {
        return false
      }
    } else {
      return true
    }
  }
}

///|
fn min_operations(nums1 : Array[Int], nums2 : Array[Int]) -> Int {
  let sum1 : Int = sum_array(nums1)
  let sum2 : Int = sum_array(nums2)
  let diff : Int = sum1 - sum2
  if diff == 0 {
    return 0
  }
  let (larger_array, smaller_array) = if diff > 0 {
    (nums1, nums2)
  } else {
    (nums2, nums1)
  }
  let mut abs_diff : Int = abs(diff)
  let mut operations : Int = 0
  let changes : Array[Int] = [0, 0, 0, 0, 0, 0]
  for i = 0; i < larger_array.length(); i = i + 1 {
    changes[6 - larger_array[i]] += 1
  }
  for i = 0; i < smaller_array.length(); i = i + 1 {
    changes[smaller_array[i] - 1] += 1
  }
  for i = 5; i > 0; i = i - 1 {
    if changes[i] * i >= abs_diff {
      operations += (abs_diff + i - 1) / i
      return operations
    }
    operations += changes[i]
    abs_diff -= changes[i] * i
  }
  return -1
}

///|
fn sum_array(arr : Array[Int]) -> Int {
  let mut sum : Int = 0
  for i = 0; i < arr.length(); i = i + 1 {
    sum += arr[i]
  }
  sum
}

///|
fn abs(x : Int) -> Int {
  if x < 0 {
    -x
  } else {
    x
  }
}
