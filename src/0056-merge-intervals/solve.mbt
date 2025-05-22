///|
fn merge(intervals : Array[Array[Int]]) -> Array[Array[Int]] {
  if intervals.length() == 0 {
    return [[]]
  }
  intervals.sort_by(fn(interval1, interval2) { interval1[0] - interval2[0] })
  let merged : Array[Array[Int]] = []
  for i = 0; i < intervals.length(); i = i + 1 {
    let l = intervals[i][0]
    let r = intervals[i][1]
    if merged.length() == 0 || merged[merged.length() - 1][1] < l {
      merged.push([l, r])
    } else {
      merged[merged.length() - 1][1] = @math.maximum(
        r,
        merged[merged.length() - 1][1],
      )
    }
  }
  merged
}
