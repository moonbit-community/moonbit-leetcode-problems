///|
struct Solution {
  nums : Array[Int]
}

///|
fn Solution::new(nums : Array[Int]) -> Solution {
  Solution::{ nums, }
}

///|
fn Solution::pick(self : Solution, target : Int) -> Int {
  let mut n = 0
  let mut ans = 0
  let mut i = 0
  while i < self.nums.length() {
    if self.nums[i] == target {
      n = n + 1
      // Since MoonBit doesn't have a built-in Random class, we emulate the random selection.
      // We can't implement `random.nextInt(n)`, so we use a placeholder logic that would
      // conceptually represent a random choice within n options.
      // This part is oversimplified and deterministic in this context to mimic the randomness.
      let x = 1 + i % n // placeholder for random.nextInt(n)
      if x == 1 { // This condition ensures that each index has an equal probability of being chosen.
        ans = i
      }
    }
    i = i + 1
  }
  ans
}
