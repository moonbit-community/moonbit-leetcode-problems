struct UnionFind {
  parent : FixedArray[Int]
  rank : FixedArray[Int]
}

fn UnionFind::new(n : Int) -> UnionFind {
  let parent = FixedArray::new(n, fn() { 0 })
  let rank = FixedArray::new(n, fn() { 0 })
  for i = 0; i < n; i = i + 1 {
    parent[i] = i
  }
  UnionFind::{ parent, rank }
}

fn UnionFind::find(self : UnionFind, x : Int) -> Int {
  if self.parent[x] != x {
    self.parent[x] = self.find(self.parent[x])
  }
  self.parent[x]
}

fn UnionFind::union(self : UnionFind, x : Int, y : Int) -> Unit {
  let rootX = self.find(x)
  let rootY = self.find(y)
  if rootX != rootY {
    if self.rank[rootX] > self.rank[rootY] {
      self.parent[rootY] = rootX
    } else if self.rank[rootX] < self.rank[rootY] {
      self.parent[rootX] = rootY
    } else {
      self.parent[rootY] = rootX
      self.rank[rootX] += 1
    }
  }
}

fn edge_cmp(a : Array[Int], b : Array[Int]) -> Int {
  a[2] - b[2]
}

fn query_cmp(a : Array[Int], b : Array[Int]) -> Int {
  a[2] - b[2]
}

fn distance_limited_paths_exist(
  n : Int,
  edge_list : Array[Array[Int]],
  queries : Array[Array[Int]]
) -> Array[Bool] {
  edge_list.sort_by(edge_cmp)
  queries.mapi_inplace(fn(i, q) { [q[0], q[1], q[2], i] })
  queries.sort_by(query_cmp)
  let uf = UnionFind::new(n)
  let result = Array::make(queries.length(), false)
  let mut edge_index = 0
  for i = 0; i < queries.length(); i = i + 1 {
    let query = queries[i]
    let p = query[0]
    let q = query[1]
    let limit = query[2]
    let queryIndex = query[3]
    while edge_index < edge_list.length() && edge_list[edge_index][2] < limit {
      uf.union(edge_list[edge_index][0], edge_list[edge_index][1])
      edge_index += 1
    }
    result[queryIndex] = uf.find(p) == uf.find(q)
  }
  result
}
