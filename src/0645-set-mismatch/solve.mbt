struct CountMap {
  counts : Array[Int]
}

fn CountMap::new(n : Int) -> CountMap {
  CountMap::{ counts: Array::make(n + 1, 0) }
}

fn CountMap::increment(self : CountMap, key : Int) -> Unit {
  self.counts[key] = self.counts[key] + 1
}

fn CountMap::get(self : CountMap, key : Int) -> Int {
  self.counts[key]
}

fn find_error_nums(nums : Array[Int]) -> Array[Int] {
  let n : Int = nums.length()
  let countMap : CountMap = CountMap::new(n)
  for i = 0; i < n; i = i + 1 {
    CountMap::increment(countMap, nums[i])
  }
  let ans : Array[Int] = Array::make(2, 0)
  for x = 1; x <= n; x = x + 1 {
    let t : Int = CountMap::get(countMap, x)
    if t == 2 {
      ans[0] = x
    } else if t == 0 {
      ans[1] = x
    }
  }
  ans
}
