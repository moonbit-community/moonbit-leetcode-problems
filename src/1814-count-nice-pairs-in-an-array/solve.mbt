fn reverse_number(x : Int) -> Int {
  let mut rev = 0
  let mut num = x
  while num != 0 {
    rev = rev * 10 + num % 10
    num = num / 10
  }
  rev
}

fn count_nice_pairs(nums : Array[Int]) -> Int {
  let mod_value = 1_000_000_007
  let freq_map : @hashmap.T[Int, Int] = @hashmap.new()
  let mut nice_pairs_count = 0
  for i = 0; i < nums.length(); i = i + 1 {
    let num = nums[i]
    let rev_num = reverse_number(num)
    let diff = num - rev_num
    let count = freq_map.get_or_default(diff, 0)
    nice_pairs_count = (nice_pairs_count + count) % mod_value
    freq_map.set(diff, count + 1)
  }
  nice_pairs_count
}
