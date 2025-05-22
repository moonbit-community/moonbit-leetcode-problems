///|
fn decode_xored_array(encoded : Array[Int], first : Int) -> Array[Int] {
  let n = encoded.length() + 1
  let arr = Array::make(n, 0)
  arr[0] = first
  for i = 0; i < encoded.length(); i = i + 1 {
    arr[i + 1] = encoded[i] ^ arr[i]
  }
  arr
}
