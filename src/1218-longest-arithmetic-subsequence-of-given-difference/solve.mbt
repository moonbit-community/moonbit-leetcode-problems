///|
fn longest_subsequence(arr : Array[Int], difference : Int) -> Int {
  let f : @hashmap.T[Int, Int] = @hashmap.new()
  let mut max_length = 0
  arr.each(fn(x) {
    let predecessor = x - difference
    let count = match f.get(predecessor) {
      None => 1
      Some(value) => value + 1
    }
    f.set(x, count)
    max_length = @math.maximum(max_length, count)
  })
  max_length
}
