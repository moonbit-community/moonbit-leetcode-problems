// Union-Find data structure
///|
struct UnionFind {
  parent : Array[Int]
  rank : Array[Int]
}

///|
fn make_union_find(n : Int) -> UnionFind {
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

// Function to minimize hamming distance
///|
fn minimize_hamming_distance(
  source : Array[Int],
  target : Array[Int],
  allowed_swaps : Array[Array[Int]]
) -> Int {
  let n = source.length()
  let uf = make_union_find(n)

  // Perform union operations based on allowed swaps
  for i = 0; i < allowed_swaps.length(); i = i + 1 {
    let swap = allowed_swaps[i]
    let ai = swap[0]
    let bi = swap[1]
    union(uf, ai, bi)
  }

  // Map to store elements in each group
  let group_elements = {}

  // Populate the map with elements from source
  for i = 0; i < n; i = i + 1 {
    let root = find(uf, i)
    if not(group_elements.contains(root)) {
      group_elements[root] = {}
    }
    let count = group_elements[root].map_or_else(fn() { 0 }, fn(x) {
      x[source[i]].or_else(fn() { 0 })
    })
    group_elements[root].unwrap()[source[i]] = count + 1
  }

  // Calculate the minimum hamming distance
  let mut min_hamming_distance = 0
  for i = 0; i < n; i = i + 1 {
    let root = find(uf, i)
    if not(group_elements[root].unwrap().contains(target[i])) {
      min_hamming_distance = min_hamming_distance + 1
    } else {
      let count = group_elements[root].unwrap()[target[i]].unwrap()
      if count > 0 {
        group_elements[root].unwrap()[target[i]] = count - 1
      } else {
        min_hamming_distance = min_hamming_distance + 1
      }
    }
  }
  min_hamming_distance
}

// Test cases
