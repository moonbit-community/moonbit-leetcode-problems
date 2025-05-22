struct Pair {
  value : Int
  freq : Int
}

fn expand(encoded : Array[Pair]) -> Array[Int] {
  let nums = Array::make(0, 0)
  for i = 0; i < encoded.length(); i = i + 1 {
    let pair = encoded[i]
    for j = 0; j < pair.freq; j = j + 1 {
      nums.push(pair.value)
    }
  }
  nums
}

fn compress(nums : Array[Int]) -> Array[Pair] {
  let encoded = Array::make(0, Pair::{ value: 0, freq: 0 })
  let mut i = 0
  while i < nums.length() {
    let value = nums[i]
    let mut freq = 1
    while i + 1 < nums.length() && nums[i + 1] == value {
      freq = freq + 1
      i = i + 1
    }
    encoded.push(Pair::{ value, freq })
    i = i + 1
  }
  encoded
}

fn product_of_encoded_arrays(
  encoded1 : Array[Pair],
  encoded2 : Array[Pair]
) -> Array[Pair] {
  let nums1 = expand(encoded1)
  let nums2 = expand(encoded2)
  let prod_nums = Array::make(nums1.length(), 0)
  for i = 0; i < nums1.length(); i = i + 1 {
    prod_nums[i] = nums1[i] * nums2[i]
  }
  compress(prod_nums)
}

// Test cases
