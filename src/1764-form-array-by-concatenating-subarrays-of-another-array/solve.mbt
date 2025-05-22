///|
fn can_form_array(groups : Array[Array[Int]], nums : Array[Int]) -> Bool {
  let mut nums_index = 0
  for i = 0; i < groups.length(); i = i + 1 {
    let group = groups[i]
    let mut group_found = false
    while nums_index + group.length() <= nums.length() {
      let mut match_found = true
      for i = 0; i < group.length(); i = i + 1 {
        if nums[nums_index + i] != group[i] {
          match_found = false
          break
        }
      }
      if match_found {
        group_found = true
        nums_index += group.length()
        break
      }
      nums_index += 1
    }
    if not(group_found) {
      return false
    }
  }
  true
}
