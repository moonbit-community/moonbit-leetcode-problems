fn can_distribute(nums : Array[Int], quantity : Array[Int]) -> Bool {
  let m = quantity.length()
  let s = Array::make((1).lsl(m), 0)
  for i = 1; i < (1).lsl(m); i = i + 1 {
    for j = 0; j < m; j = j + 1 {
      if i.lsr(j).land(1) == 1 {
        s[i] = s[i.lxor((1).lsl(j))] + quantity[j]
        break
      }
    }
  }
  let cnt : @hashmap.T[Int, Int] = @hashmap.new()
  nums.each(
    fn(x) {
      if cnt.get(x) != None {
        cnt.set(x, cnt.get(x).unwrap() + 1)
      } else {
        cnt.set(x, 0)
      }
    },
  )
  let n = cnt.capacity()
  let mut arr = @immut/list.T::of([])
  cnt.each(fn(k, v) { arr = arr.concat(@immut/list.T::of([v])) })
  let arr = arr.to_array()
  let f = Array::make(n, Array::make((1).lsl(m), false))
  for i = 0; i < n; i = i + 1 {
    f[i][0] = true
  }
  for i = 0; i < n; i = i + 1 {
    for j = 0; j < (1).lsl(m); j = j + 1 {
      if i > 0 && f[i - 1][j] {
        f[i][j] = true
        continue
      }
      let mut k = j
      while k > 0 {
        let ok1 = (i == 0 && j == k) || (i > 0 && f[i - 1][j.lxor(k)])
        let ok2 = s[k] <= arr[i]
        if ok1 && ok2 {
          f[i][j] = true
          break
        }
        k = (k - 1).land(j)
      }
    }
  }
  f[n - 1][(1).lsl(m) - 1]
}
