///|
fn find_min_fibonacci_numbers(k : Int) -> Int {
  let arr = [
    1836311903, 1134903170, 701408733, 433494437, 267914296, 165580141, 102334155,
    63245986, 39088169, 24157817, 14930352, 9227465, 5702887, 3524578, 2178309, 1346269,
    832040, 514229, 317811, 196418, 121393, 75025, 46368, 28657, 17711, 10946, 6765,
    4181, 2584, 1597, 987, 610, 377, 233, 144, 89, 55, 34, 21, 13, 8, 5, 3, 2, 1,
  ]
  let mut k = k
  let mut res = 0
  for i = 0; i < arr.length(); i = i + 1 {
    let num = arr[i]
    if k >= num {
      k = k - num
      res = res + 1
      if k == 0 {
        break
      }
    }
  }
  res
}
