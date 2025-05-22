///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn longest_str_chain(words : Array[String]) -> Int {
  fn sort_by_length(arr : Array[String]) -> Array[String] {
    // Using bubble sort for simplicity
    let len = arr.length()
    let arr = arr
    for i = 0; i < len; i = i + 1 {
      for j = 0; j < len - i - 1; j = j + 1 {
        if arr[j].length() > arr[j + 1].length() {
          let temp = arr[j]
          arr[j] = arr[j + 1]
          arr[j + 1] = temp
        }
      }
    }
    arr
  }

  fn substring(s : String, start : Int, end : Int) -> String {
    let mut result = ""
    for i = start; i < end; i = i + 1 {
      result = result + s[i].to_string()
    }
    result
  }

  let words = sort_by_length(words)
  let mut ans = 0
  // Emulating a Hash Table using @immut/list.T of Tuples
  let mut hash_table : @immut/list.T[(String, Int)] = @immut/list.T::Nil
  fn hash_get(table : @immut/list.T[(String, Int)], key : String) -> Int {
    match table {
      @immut/list.T::Nil => 0
      @immut/list.T::Cons((k, v), rest) =>
        if k == key {
          v
        } else {
          hash_get(rest, key)
        }
    }
  }

  fn hash_set(
    table : @immut/list.T[(String, Int)],
    key : String,
    value : Int
  ) -> @immut/list.T[(String, Int)] {
    @immut/list.T::Cons((key, value), table)
  }

  for j = 0; j < words.length(); j = j + 1 {
    let word = words[j]
    let mut c = 1
    for i = 0; i < word.length(); i = i + 1 {
      let pre = substring(word, 0, i) + substring(word, i + 1, word.length())
      c = max(c, hash_get(hash_table, pre) + 1)
    }
    hash_table = hash_set(hash_table, word, c)
    ans = max(ans, c)
  }
  ans
}
