///|
fn find(p : Array[Int], x : Int) -> Int {
  if p[x] != x {
    let parent = find(p, p[x])
    p[x] = parent
  }
  p[x]
}

// Custom sort function for logs based on the first element of each subarray

///|
fn sort_logs(logs : Array[Array[Int]]) -> Unit {
  for i = 1; i < logs.length(); i = i + 1 {
    let key = logs[i]
    let mut j = i - 1
    while j >= 0 && logs[j][0] > key[0] {
      logs[j + 1] = logs[j]
      j = j - 1
    } else {
      logs[j + 1] = key
    }
  }
}

///|
fn earliest_acq(logs : Array[Array[Int]], n : Int) -> Int {
  let p : Array[Int] = Array::make(n, 0)
  for i = 0; i < n; i = i + 1 {
    p[i] = i
  }
  sort_logs(logs)
  let mut n = n
  for i = 0; i < logs.length(); i = i + 1 {
    let t = logs[i][0]
    let x = logs[i][1]
    let y = logs[i][2]
    let rx = find(p, x)
    let ry = find(p, y)
    if rx != ry {
      p[rx] = ry
      n = n - 1
      if n == 1 {
        return t
      }
    }
  }
  -1
}
