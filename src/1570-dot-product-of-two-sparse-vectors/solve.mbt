///|
struct SparseVector {
  d : @hashmap.T[Int, Int]
}

///|
fn SparseVector::new(nums : Array[Int]) -> SparseVector {
  let d : @hashmap.T[Int, Int] = @hashmap.T::new()
  nums.eachi(fn(i, num) { if num != 0 { d.set(i, num) } })
  SparseVector::{ d, }
}

///|
fn SparseVector::dot_product(self : SparseVector, vec : SparseVector) -> Int {
  let mut a = self.d
  let mut b = vec.d
  if a.size() > b.size() {
    let t = a
    a = b
    b = t
  }
  let mut ans = 0
  a.each(fn(key, val) {
    if b.contains(key) {
      ans = ans + val * b.get(key).unwrap()
    }
  })
  ans
}
