fn min_number_of_people_to_teach(
  n : Int,
  languages : Array[Array[Int]],
  friendships : Array[Array[Int]]
) -> Int {
  let m = languages.length()
  let can_communicate = Array::make(m, Array::make(m, false))
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < m; j = j + 1 {
      can_communicate[i][j] = have_common_language(languages[i], languages[j])
    }
  }
  let need_teaching = Array::make(n + 1, false)
  let mut count = 0
  for i = 0; i < friendships.length(); i = i + 1 {
    let f = friendships[i]
    let u = f[0] - 1
    let v = f[1] - 1
    if not(can_communicate[u][v]) {
      if not(need_teaching[languages[u][0]]) {
        need_teaching[languages[u][0]] = true
        count += 1
      }
      if not(need_teaching[languages[v][0]]) {
        need_teaching[languages[v][0]] = true
        count += 1
      }
    }
  }
  count
}

fn have_common_language(lang1 : Array[Int], lang2 : Array[Int]) -> Bool {
  for i = 0; i < lang1.length(); i = i + 1 {
    for j = 0; j < lang2.length(); j = j + 1 {
      if lang1[i] == lang2[j] {
        return true
      }
    }
  }
  false
}
