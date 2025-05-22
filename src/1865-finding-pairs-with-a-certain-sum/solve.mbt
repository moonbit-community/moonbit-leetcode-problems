struct FindSumPairs {
  nums1 : Array[Int]
  nums2 : Array[Int]
  freq_map : @hashmap.T[Int, Int]
}

fn FindSumPairs::new(nums1 : Array[Int], nums2 : Array[Int]) -> FindSumPairs {
  let freq_map = @hashmap.new()
  for i = 0; i < nums2.length(); i = i + 1 {
    let num = nums2[i]
    freq_map.set(num, freq_map.get_or_default(num, 0) + 1)
  }
  FindSumPairs::{ nums1, nums2, freq_map }
}

fn FindSumPairs::add(self : FindSumPairs, index : Int, val : Int) -> Unit {
  let old_val = self.nums2[index]
  let new_val = old_val + val
  self.nums2[index] = new_val

  // Update the frequency map
  self.freq_map.set(old_val, self.freq_map.get_or_default(old_val, 0) - 1)
  self.freq_map.set(new_val, self.freq_map.get_or_default(new_val, 0) + 1)
}

fn FindSumPairs::count(self : FindSumPairs, tot : Int) -> Int {
  let mut count = 0
  for i = 0; i < self.nums1.length(); i = i + 1 {
    let num = self.nums1[i]
    let target = tot - num
    count = count + self.freq_map.get_or_default(target, 0)
  }
  count
}

// Test cases
