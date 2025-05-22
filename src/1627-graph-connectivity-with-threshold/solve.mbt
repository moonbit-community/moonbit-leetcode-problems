struct UnionFind {
  p : Array[Int]
  size : Array[Int]
}

fn UnionFind::new(n : Int) -> UnionFind {
  let p = Array::make(n, 0)
  let size = Array::make(n, 1)
  for i = 0; i < n; i = i + 1 {
    p[i] = i
  }
  UnionFind::{ p, size }
}

fn UnionFind::find(self : UnionFind, x : Int) -> Int {
  if self.p[x] != x {
    self.p[x] = self.find(self.p[x])
  }
  self.p[x]
}

fn union(self : UnionFind, a : Int, b : Int) -> Bool {
  let pa = self.find(a)
  let pb = self.find(b)
  if pa == pb {
    false
  } else {
    if self.size[pa] > self.size[pb] {
      self.p[pb] = pa
      self.size[pa] = self.size[pa] + self.size[pb]
    } else {
      self.p[pa] = pb
      self.size[pb] = self.size[pb] + self.size[pa]
    }
    true
  }
}

fn are_connected(
  n : Int,
  threshold : Int,
  queries : Array[(Int, Int)]
) -> Array[Bool] {
  let uf = UnionFind::new(n + 1)
  for a = threshold + 1; a < n + 1; a = a + 1 {
    let mut b = a * 2
    while b <= n {
      let suc = uf.union(a, b)
      b = b + a
    }
  }
  queries.map(
    fn(query) {
      let (a, b) = query
      uf.find(a) == uf.find(b)
    },
  )
}
