fn base_neg2(n : Int) -> String {
  let mut n = n
  if n == 0 {
    "0"
  } else {
    let mut k = 1
    let ans : Array[String] = []
    while n != 0 {
      if n % 2 != 0 {
        ans.push("1")
        n = n - k
      } else {
        ans.push("0")
      }
      k = k * -1
      n = (n / 2).abs()
    }
    ans.rev_inplace()
    let mut result = ""
    ans.each(fn(x) { result = result + x })
    result
  }
}
