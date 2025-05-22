///|
fn max(arr : Array[Int]) -> Int {
  let mut max_val = arr[0]
  for i = 1; i < arr.length(); i = i + 1 {
    if arr[i] > max_val {
      max_val = arr[i]
    }
  }
  max_val
}

///|
fn rearrange_barcodes(barcodes : Array[Int]) -> Array[Int] {
  let mx = max(barcodes)
  let cnt = Array::make(mx + 1, 0)
  for i = 0; i < barcodes.length(); i = i + 1 {
    let x = barcodes[i]
    cnt[x] = cnt[x] + 1
  }
  barcodes.sort()
  let n = barcodes.length()
  let ans = Array::make(n, 0)
  let mut j = 0
  for k = 0; k < 2; k = k + 1 {
    for i = k; i < n; i = i + 2 {
      ans[i] = barcodes[j]
      j = j + 1
    }
  }
  ans
}
