struct RecentCounter {
  s : Array[Int]
  mut idx : Int
}

fn RecentCounter::new() -> RecentCounter {
  RecentCounter::{ s: Array::make(10010, 0), idx: 0 }
}

fn RecentCounter::ping(self : RecentCounter, t : Int) -> Int {
  self.s[self.idx] = t
  self.idx = self.idx + 1
  self.idx - self.search(t - 3000)
}

fn RecentCounter::search(self : RecentCounter, x : Int) -> Int {
  let mut left = 0
  let mut right = self.idx
  while left < right {
    let mid = (left + right) / 2
    if self.s[mid] >= x {
      right = mid
    } else {
      left = mid + 1
    }
  }
  left
}
