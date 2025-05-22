fn find_users_active_minutes(logs : Array[Array[Int]], k : Int) -> Array[Int] {
  let user_minutes : @hashmap.T[Int, @hashset.T[Int]] = @hashmap.new()
  let uam_count : @hashmap.T[Int, Int] = @hashmap.new()

  // Step 1: Parse the logs and track unique minutes for each user
  for i = 0; i < logs.length(); i = i + 1 {
    let id = logs[i][0]
    let time = logs[i][1]
    if not(user_minutes.contains(id)) {
      user_minutes.set(id, @hashset.new())
    }
    user_minutes.get(id).or(@hashset.new()).insert(time)
  }

  // Step 2: Calculate UAM for each user and count occurrences
  user_minutes.each(
    fn(_user_id, minutes_set) {
      let uam = minutes_set.size()
      uam_count.set(uam, uam_count.get_or_default(uam, 0) + 1)
    },
  )

  // Step 3: Construct the answer array
  let answer = Array::make(k, 0)
  for j = 1; j <= k; j = j + 1 {
    answer[j - 1] = uam_count.get_or_default(j, 0)
  }
  answer
}

// Test cases
