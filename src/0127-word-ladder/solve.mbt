///|
pub fn ladder_length(
  begin_word : String,
  end_word : String,
  word_list : Array[String]
) -> Int {
  let words = @hashset.from_array(word_list)
  fn extend(
    curr : @hashmap.T[String, Int],
    oppo : @hashmap.T[String, Int],
    q : @deque.T[String]
  ) {
    let word = q.pop_front().unwrap()
    let step = curr.get(word).unwrap()
    for i, _ in word {
      for nch = b'a'; nch <= 'z'; nch = nch + 1 {
        let replaced = StringBuilder::new()
        replaced.write_substring(word, 0, i)
        replaced.write_char(nch.to_char())
        replaced.write_substring(word, i + 1, word.length() - (i + 1))
        let replaced = replaced.to_string()
        guard words.contains(replaced) && not(curr.contains(replaced)) else {
          continue
        }
        if oppo.get(replaced) is Some(ostep) {
          return Some(step + ostep)
        }
        curr[replaced] = step + 1
        q.push_back(replaced)
      }
    }
    None
  }

  guard words.contains(end_word) else { 0 }
  let qbegin = @deque.from_array([begin_word])
  let qend = @deque.from_array([end_word])
  let fbegin : @hashmap.T[String, Int] = @hashmap.from_array([(begin_word, 1)])
  let fend : @hashmap.T[String, Int] = @hashmap.from_array([(end_word, 1)])
  while not(qbegin.is_empty() || qend.is_empty()) {
    let res = if qbegin.length() <= qend.length() {
      extend(fbegin, fend, qbegin)
    } else {
      extend(fend, fbegin, qend)
    }
    if res is Some(res) {
      return res
    }
  }
  0
}
