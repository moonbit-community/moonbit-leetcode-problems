struct CountMap {
  mut data : Array[(Int, Int)]
}

fn CountMap::new() -> CountMap {
  { data: [] }
}

fn CountMap::get_or_default(
  self : CountMap,
  key : Int,
  default_val : Int
) -> Int {
  let mut default_val = default_val
  self.data.each(fn(val) { if val.0 == key { default_val = val.1 } })
  default_val
}

fn CountMap::merge(self : CountMap, key : Int, val : Int) -> Unit {
  let mut found = false
  for i = 0; i < self.data.length(); i = i + 1 {
    let (k, v) = self.data[i]
    if k == key {
      self.data[i] = (k, v + val)
      found = true
      break
    }
  }
  if not(found) {
    self.data = self.data + [(key, val)]
  }
}

fn subarrays_div_by_k(nums : Array[Int], k : Int) -> Int {
  let cnt = CountMap::new()
  cnt.merge(0, 1)
  let mut ans = 0
  let mut s = 0
  nums.each(
    fn(x) {
      s = ((s + x) % k + k) % k
      ans = ans + cnt.get_or_default(s, 0)
      cnt.merge(s, 1)
    },
  )
  ans
}
