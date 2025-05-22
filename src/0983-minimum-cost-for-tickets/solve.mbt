struct Solution {
  costs : Array[Int]
  days : Array[Int]
  mut f : Array[Int]
  mut n : Int
}

fn Solution::mincost_tickets(self : Solution) -> Int {
  self.n = self.days.length()
  self.f = Array::make(self.n, -1)
  self.dfs(0)
}

fn Solution::dfs(self : Solution, i : Int) -> Int {
  let time : Array[Int] = [1, 7, 30]
  if i >= self.n {
    return 0
  }
  if self.f[i] != -1 {
    return self.f[i]
  }
  let mut res = 2147483647 // Integer.MAX_VALUE
  for k = 0; k < 3; k = k + 1 {
    let j = self.lower_bound(self.days[i] + time[k])
    res = min(res, self.costs[k] + self.dfs(j))
  }
  self.f[i] = res
  res
}

fn Solution::lower_bound(self : Solution, x : Int) -> Int {
  let mut left = 0
  let mut right = self.n
  while left < right {
    let mid = (left + right).lsr(1)
    if self.days[mid] >= x {
      right = mid
    } else {
      left = mid + 1
    }
  }
  left
}

fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}
