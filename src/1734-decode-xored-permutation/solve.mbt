fn decode_xored_permutation(encoded : Array[Int]) -> Array[Int] {
  let n = encoded.length() + 1
  let mut total_xor = 0
  for i = 1; i <= n; i = i + 1 {
    total_xor = total_xor.lxor(i)
  }
  let mut even_xor = 0
  for i = 1; i < n - 1; i = i + 2 {
    even_xor = even_xor.lxor(encoded[i])
  }
  let first_element = total_xor.lxor(even_xor)
  let perm = Array::make(n, 0)
  perm[0] = first_element
  for i = 0; i < n - 1; i = i + 1 {
    perm[i + 1] = perm[i].lxor(encoded[i])
  }
  perm
}
