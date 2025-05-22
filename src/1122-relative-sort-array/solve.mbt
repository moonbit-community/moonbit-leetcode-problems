fn relative_sort_array(arr1 : Array[Int], arr2 : Array[Int]) -> Array[Int] {
  let map_length = arr2.length()
  let pos : Array[Int] = Array::make(1001, map_length) // Assuming numbers in arr1 and arr2 are within [0,1000]
  for i = 0; i < map_length; i = i + 1 {
    pos[arr2[i]] = i
  }
  let arr : Array[(Int, Int)] = []
  arr1.each(
    fn(x) {
      let j = pos[x]
      arr.push((j, x))
    },
  )
  arr.sort_by(fn(x, y) { x.0 - y.0 })
  let result : Array[Int] = []
  arr.each(fn(pair) { result.push(pair.1) })
  result
}
