fn slice(string : String, start : Int, stop : Int) -> String {
  let mut result = ""
  for i = start; i < stop; i = i + 1 {
    result = result + string[i].to_string()
  }
  result
}

fn find_substring(s : String, words : Array[String]) -> Array[Int] {
  let result = []
  let word_num = words.length()
  let word_len = words[0].length()
  let all_words : @hashmap.T[String, Int] = @hashmap.new()
  words.each(
    fn(w) {
      let val = all_words.get_or_default(w, 0)
      all_words.set(w, val + 1)
    },
  )
  for i = 0; i < s.length() - word_num * word_len + 1; i = i + 1 {
    let has_words : @hashmap.T[String, Int] = @hashmap.new()
    let mut num = 0
    while num < word_num {
      let word = slice(s, i + num * word_len, i + (num + 1) * word_len)
      if all_words.contains(word) {
        let val = has_words.get_or_default(word, 0)
        has_words.set(word, val + 1)
        if has_words.get(word).or(0) > all_words.get(word).or(0) {
          break
        }
      } else {
        break
      }
      num += 1
    }
    if num == word_num {
      result.push(i)
    }
  }
  result
}
