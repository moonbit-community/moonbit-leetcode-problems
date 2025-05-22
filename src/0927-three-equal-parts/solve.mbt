struct Solution {
  arr : Array[Int]
}

fn Solution::three_equal_parts(self : Solution) -> Array[Int] {
  let cnt = self.arr.fold_left(fn(acc, v) { acc + v }, init=0)
  let n : Int = self.arr.length()
  if cnt % 3 != 0 {
    return [-1, -1]
  }
  if cnt == 0 {
    return [0, n - 1]
  }
  let part_cnt : Int = cnt / 3
  let mut i : Int = self.find(1)
  let mut j : Int = self.find(part_cnt + 1)
  let mut k : Int = self.find(2 * part_cnt + 1)
  while k < n && self.arr[i] == self.arr[j] && self.arr[j] == self.arr[k] {
    i = i + 1
    j = j + 1
    k = k + 1
  }
  if k == n {
    [i - 1, j]
  } else {
    [-1, -1]
  }
}

fn Solution::find(self : Solution, x : Int) -> Int {
  let mut s : Int = 0
  let mut i : Int = 0
  while i < self.arr.length() {
    s = s + self.arr[i]
    if s == x {
      return i
    }
    i = i + 1
  }
  return -1
}
