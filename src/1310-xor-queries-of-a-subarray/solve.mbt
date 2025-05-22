///|
fn xor_queries(arr : Array[Int], queries : Array[(Int, Int)]) -> Array[Int] {
  let n = arr.length()
  let s = Array::make(n + 1, 0)
  let mut i = 0
  while i < n {
    s[i + 1] = s[i] ^ arr[i]
    i = i + 1
  }
  let ans : Array[Int] = []
  for i = 0; i < queries.length(); i = i + 1 {
    let query = queries[i]
    let (l, r) = query
    ans.push(s[r + 1] ^ s[l])
  }
  let result = Array::make(ans.length(), 0)
  for i = 0; i < ans.length(); i = i + 1 {
    result[i] = ans[i]
  }
  result
}
