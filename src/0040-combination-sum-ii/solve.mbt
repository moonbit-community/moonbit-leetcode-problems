///|
fn combination_sum2(candidates : Array[Int], target : Int) -> Array[Array[Int]] {
  let len = candidates.length()
  let res : Array[Array[Int]] = Array::new()
  if len == 0 {
    return res
  }
  candidates.sort()
  let path : Array[Int] = Array::new()
  dfs(candidates, len, 0, target, path, res)
  res
}

///|
fn dfs(
  candidates : Array[Int],
  len : Int,
  begin : Int,
  target : Int,
  path : Array[Int],
  res : Array[Array[Int]]
) -> Unit {
  if target == 0 {
    let new_path = Array::copy(path)
    res.push(new_path)
    return
  }
  for i = begin; i < len; i = i + 1 {
    if target - candidates[i] < 0 {
      break
    }
    if i > begin && candidates[i] == candidates[i - 1] {
      continue i + 1
    }
    path.push(candidates[i])
    dfs(candidates, len, i + 1, target - candidates[i], path, res)
    path.pop() |> ignore
  }
}
