fn dfs(
  candidates : Array[Int],
  begin : Int,
  len : Int,
  target : Int,
  path : Array[Int],
  res : Array[Array[Int]]
) -> Unit {
  if target < 0 {
    return
  }
  if target == 0 {
    let new_path : Array[Int] = Array::new()
    path.each(fn(el) { new_path.push(el) })
    res.push(new_path) // need to clone the vec, otherwise path points to the same address and will be altered
    return
  }
  for i = begin; i < len; i = i + 1 {
    path.push(candidates[i])
    dfs(candidates, i, len, target - candidates[i], path, res)
    path.pop() |> ignore
  }
}

fn combination_sum(candidates : Array[Int], target : Int) -> Array[Array[Int]] {
  let len = candidates.length()
  let res : Array[Array[Int]] = Array::new()
  let path : Array[Int] = Array::new()
  dfs(candidates, 0, len, target, path, res)
  res
}
