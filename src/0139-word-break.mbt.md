---
difficulty: Medium
verified: true
---

# Word Break

Given a string s and a dictionary of strings wordDict, return true if s can be segmented into a space-separated sequence of one or more dictionary words.
Note that the same word in the dictionary may be reused multiple times in the segmentation.

Example 1:

Input: s = "leetcode", wordDict = ["leet","code"]
Output: true
Explanation: Return true because "leetcode" can be segmented as "leet code".

Example 2:

Input: s = "applepenapple", wordDict = ["apple","pen"]
Output: true
Explanation: Return true because "applepenapple" can be segmented as "apple pen apple".
Note that you are allowed to reuse a dictionary word.

Example 3:

Input: s = "catsandog", wordDict = ["cats","dog","sand","and","cat"]
Output: false

Constraints:

1 <= s.length <= 300
1 <= wordDict.length <= 1000
1 <= wordDict[i].length <= 20
s and wordDict[i] consist of only lowercase English letters.
All the strings of wordDict are unique.

## Suggested Approach

```mbt nocheck
pub fn word_break(s: String, wordDict: Array[String]) -> Bool {
  ...
}
```

## Solution

```mbt
pub fn word_break(s : String, word_dict : Array[String]) -> Bool {
  let n = s.length()
  let f : Array[Bool] = Array::make(n + 1, false)
  f[0] = true
  fn substring(str : String, start : Int, end : Int) -> String {
    let mut result = ""
    let mut i = start
    while i < end {
      result = result + str[i].to_string()
      i = i + 1
    }
    result
  }

  for i = 1; i <= n; i = i + 1 {
    let mut j = 0
    while j < i {
      if f[j] && word_dict.contains(substring(s, j, i)) {
        f[i] = true
        break
      }
      j = j + 1
    }
  }
  f[n]
}
```

## Tests

```moonbit
test "word break test 1" {
  let s = "leetcode"
  let word_dict = ["leet", "code"]
  assert_eq(word_break(s, word_dict), true)
}

test "word break test 2" {
  let s = "applepenapple"
  let word_dict = ["apple", "pen"]
  assert_eq(word_break(s, word_dict), true)
}

test "word break test 3" {
  let s = "catsandog"
  let word_dict = ["cats", "dog", "sand", "and", "cat"]
  assert_eq(word_break(s, word_dict), false)
}
```
