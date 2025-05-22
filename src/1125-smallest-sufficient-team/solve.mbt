///|
fn smallest_sufficient_team(
  req_skills : Array[String],
  people : Array[Array[String]]
) -> Array[Int] {
  let d : @hashmap.T[String, Int] = @hashmap.new()
  let m = req_skills.length()
  let n = people.length()
  for i = 0; i < m; i = i + 1 {
    d.set(req_skills[i], i)
  }
  let p : Array[Int] = Array::make(n, 0)
  for i = 0; i < n; i = i + 1 {
    let f = fn(s) { p[i] = p[i] | (1).lsl(d.get(s).or(0)) }
    people[i].each(f)
  }
  let inf = @int.max_value
  let f : Array[Int] = Array::make((1).lsl(m), inf)
  let g : Array[Int] = Array::make((1).lsl(m), 0)
  let h : Array[Int] = Array::make((1).lsl(m), 0)
  f[0] = 0
  for i = 0; i < (1).lsl(m); i = i + 1 {
    if f[i] == inf {
      continue
    }
    for j = 0; j < n; j = j + 1 {
      let combined = i | p[j]
      if f[i] + 1 < f[combined] {
        f[combined] = f[i] + 1
        g[combined] = j
        h[combined] = i
      }
    }
  }
  let ans : Array[Int] = []
  let mut i = (1).lsl(m) - 1
  while i != 0 {
    ans.push(g[i])
    i = h[i]
  }
  ans.rev_inplace()
  ans
}
