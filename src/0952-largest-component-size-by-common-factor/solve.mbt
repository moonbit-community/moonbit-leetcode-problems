///|
struct UnionFind {
  p : Array[Int]
}

///|
fn UnionFind::new(n : Int) -> UnionFind {
  let p : Array[Int] = Array::make(n, 0)
  for i = 0; i < n; i = i + 1 {
    p[i] = i
  }
  UnionFind::{ p, }
}

///|
fn UnionFind::union(self : UnionFind, a : Int, b : Int) -> Unit {
  let pa = self.find(a)
  let pb = self.find(b)
  if pa != pb {
    self.p[pa] = pb
  }
}

///|
fn UnionFind::find(self : UnionFind, x : Int) -> Int {
  if self.p[x] != x {
    self.p[x] = self.find(self.p[x])
  }
  self.p[x]
}

///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn largest_component_size(nums : Array[Int]) -> Int {
  let mut m = 0
  for i = 0; i < nums.length(); i = i + 1 {
    let v = nums[i]
    m = max(m, v)
  }
  let uf = UnionFind::new(m + 1)
  for i = 0; i < nums.length(); i = i + 1 {
    let v = nums[i]
    let mut i = 2
    while i <= v / i {
      if v % i == 0 {
        uf.union(v, i)
        uf.union(v, v / i)
      }
      i = i + 1
    }
  }
  let cnt : Array[Int] = Array::make(m + 1, 0)
  let mut ans = 0
  for i = 0; i < nums.length(); i = i + 1 {
    let v = nums[i]
    let t = uf.find(v)
    cnt[t] = cnt[t] + 1
    ans = max(ans, cnt[t])
  }
  ans
}
