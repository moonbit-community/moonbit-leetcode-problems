///|
fn build_array(target : Array[Int], n : Int) -> Array[String] {
  let vec : Array[String] = []
  let mut cur = 0
  for i = 0; i < target.length(); i = i + 1 {
    let val = target[i]
    while cur + 1 < val {
      cur = cur + 1
      vec.append(["Push", "Pop"])
    }
    cur = cur + 1
    vec.push("Push")
  }
  let res : Array[String] = Array::make(vec.length(), "")
  for i = 0; i < vec.length(); i = i + 1 {
    res[i] = vec[i]
  }
  res
}
