///|
struct UnionFind {
  parent : Array[Int]
  rank : Array[Int]
}

///|
fn new_union_find(n : Int) -> UnionFind {
  let parent = Array::make(n, 0)
  let rank = Array::make(n, 0)
  for i = 0; i < n; i = i + 1 {
    parent[i] = i
  }
  UnionFind::{ parent, rank }
}

///|
fn find(uf : UnionFind, x : Int) -> Int {
  if uf.parent[x] != x {
    uf.parent[x] = find(uf, uf.parent[x])
  }
  uf.parent[x]
}

///|
fn union(uf : UnionFind, x : Int, y : Int) -> Unit {
  let root_x = find(uf, x)
  let root_y = find(uf, y)
  if root_x != root_y {
    if uf.rank[root_x] > uf.rank[root_y] {
      uf.parent[root_y] = root_x
    } else if uf.rank[root_x] < uf.rank[root_y] {
      uf.parent[root_x] = root_y
    } else {
      uf.parent[root_y] = root_x
      uf.rank[root_x] = uf.rank[root_x] + 1
    }
  }
}

///|
struct DistanceLimitedPathsExist {
  uf : UnionFind
  edge_list : Array[Array[Int]]
}

///|
fn new_distance_limited_paths_exist(
  n : Int,
  edge_list : Array[Array[Int]]
) -> DistanceLimitedPathsExist {
  let sorted_edges = edge_list.copy()
  sorted_edges.sort_by(fn(a, b) { a[2].compare(b[2]) })
  let uf = new_union_find(n)
  for i = 0; i < sorted_edges.length(); i = i + 1 {
    let edge = sorted_edges[i]
    union(uf, edge[0], edge[1])
  }
  DistanceLimitedPathsExist::{ uf, edge_list }
}

///|
fn query(
  dlpe : DistanceLimitedPathsExist,
  p : Int,
  q : Int,
  limit : Int
) -> Bool {
  let uf = new_union_find(dlpe.uf.parent.length())
  for i = 0; i < dlpe.edge_list.length(); i = i + 1 {
    let edge = dlpe.edge_list[i]
    if edge[2] < limit {
      union(uf, edge[0], edge[1])
    }
  }
  find(uf, p) == find(uf, q)
}
