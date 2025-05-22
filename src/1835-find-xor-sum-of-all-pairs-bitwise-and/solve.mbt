fn xor_sum_of_all_pairs_bitwise_and(
  arr1 : Array[Int],
  arr2 : Array[Int]
) -> Int {
  let mut xor_sum = 0
  for i = 0; i < arr1.length(); i = i + 1 {
    for j = 0; j < arr2.length(); j = j + 1 {
      xor_sum = xor_sum.lxor(arr1[i].land(arr2[j]))
    }
  }
  xor_sum
}
