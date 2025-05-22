///|
fn combine(n : Int, k : Int) -> Array[Array[Int]] {
  let res : Array[Array[Int]] = []
  if k <= 0 || n < k {
    return res
  }
  let path : Array[Int] = []
  dfs(n, k, 1, path, res)
  res
}

///|
fn dfs(
  n : Int,
  k : Int,
  begin : Int,
  path : Array[Int],
  res : Array[Array[Int]]
) -> Unit {
  if path.length() == k {
    let new_path = Array::copy(path)
    res.push(new_path)
    return
  }
  for i = begin; i <= n; i = i + 1 {
    path.push(i)
    dfs(n, k, i + 1, path, res)
    path.pop() |> ignore
  }
}
