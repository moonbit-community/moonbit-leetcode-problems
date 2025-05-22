fn min_element(x : Int, y : Int) -> Int {
  if x < y {
    x
  } else {
    y
  }
}

fn min_operations(nums : Array[Int], x : Int) -> Int {
  let sum = nums.fold_left(init=0, fn(a, b) { a + b })
  let vis : @hashmap.T[Int, Int] = @hashmap.new()
  vis.set(0, -1)
  let n = nums.length()
  let mut ans = @int.max_value
  let mut s = 0
  for i = 0; i < n; i = i + 1 {
    s = s + nums[i]
    if not(vis.contains(s)) {
      vis.set(s, i)
    }
    if vis.contains(s - sum) {
      let j = vis.get(s - sum)
      ans = min_element(ans, n - (i - j.unwrap()))
    }
  }
  if ans == @int.max_value {
    -1
  } else {
    ans
  }
}
