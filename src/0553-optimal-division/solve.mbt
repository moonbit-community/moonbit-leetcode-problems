fn optimal_division(nums : Array[Int]) -> String {
  let n : Int = nums.length()
  match n {
    1 => nums[0].to_string()
    2 => nums[0].to_string() + "/" + nums[1].to_string()
    _ => {
      let mut ans = nums[0].to_string() + "/("
      let mut i : Int = 1
      while i < n - 1 {
        ans = ans + nums[i].to_string() + "/"
        i = i + 1
      }
      ans = ans + nums[n - 1].to_string() + ")"
      ans
    }
  }
}
