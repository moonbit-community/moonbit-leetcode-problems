struct Solution {
  p : Array[Int]
}

fn Solution::remove_stones(self : Solution, stones : Array[Array[Int]]) -> Int {
  let n = 10010
  for i = 0; i < n / 2; i = i + 1 {
    self.p[i] = i
  }
  for i = 0; i < stones.length(); i = i + 1 {
    let stone = stones[i]
    self.p[self.find(stone[0])] = self.find(stone[1] + n)
  }
  let s : Array[Int] = [] // Emulating Set behavior
  for i = 0; i < stones.length(); i = i + 1 {
    let stone = stones[i]
    let fs = self.find(stone[0])
    if not(s.contains(fs)) {
      s.push(fs)
    }
  }
  stones.length() - s.length()
}

fn Solution::find(self : Solution, x : Int) -> Int {
  let mut x = x
  while self.p[x] != x {
    self.p[x] = self.find(self.p[x])
    x = self.p[x]
  }
  x
}
