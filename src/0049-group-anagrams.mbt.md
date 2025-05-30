---
difficulty: Medium
verified: true
---

# Group Anagrams

Given an array of strings strs, group the anagrams together. You can return the answer in any order.
An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

Example 1:
Input: strs = ["eat","tea","tan","ate","nat","bat"]
Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
Example 2:
Input: strs = [""]
Output: [[""]]
Example 3:
Input: strs = ["a"]
Output: [["a"]]

Constraints:

1 <= strs.length <= 10^4
0 <= strs[i].length <= 100
strs[i] consists of lowercase English letters.

## Suggested Approach

```mbt nocheck
pub fn group_anagrams(strs: Array[String]) -> Array[Array[String]] {
  ...
}
```

## Solution

```mbt
pub fn group_anagrams(strs : Array[String]) -> Array[Array[String]] {
  let map : @hashmap.T[String, Array[String]] = @hashmap.new()
  strs.each(fn(str) {
    let counts = Array::make(26, 0)
    let len = str.length()
    for i = 0; i < len; i = i + 1 {
      counts[str[i].to_int() - 'a'.to_int()] += 1
    }
    let mut str_buffer = ""
    for i = 0; i < 26; i = i + 1 {
      if counts[i] != 0 {
        str_buffer += ('a'.to_int() + i).to_string()
        str_buffer += counts[i].to_string()
      }
    }
    let key = str_buffer
    let list = map.get_or_default(key, [])
    list.push(str)
    map.set(key, list)
  })
  let res : Array[Array[String]] = Array::make(map.size(), [])
  map.eachi(fn(i, k, v) { res[i] = v })
  res.sort_by(fn(a, b) { a.length() - b.length() })
  res
}
```

## Tests

```moonbit
fn group_anagrams1(
  strs : Array[String]
) -> @immut/sorted_set.T[@immut/sorted_set.T[String]] {
  let mut res = @immut/sorted_set.new()
  for i in group_anagrams(strs) {
    res = res.add(@immut/sorted_set.from_iter(i.iter()))
  }
  res
}

test "example 1" {
  inspect!(
    group_anagrams1(["eat", "tea", "tan", "ate", "nat", "bat"]),
    content=
      #|@immut/sorted_set.of([@immut/sorted_set.of(["ate", "eat", "tea"]), @immut/sorted_set.of(["bat"]), @immut/sorted_set.of(["nat", "tan"])])
    ,
  )
}

test "example 2" {
  inspect!(
    group_anagrams1([""]),
    content=
      #|@immut/sorted_set.of([@immut/sorted_set.of([""])])
    ,
  )
}

test "example 3" {
  inspect!(
    group_anagrams1(["a"]),
    content=
      #|@immut/sorted_set.of([@immut/sorted_set.of(["a"])])
    ,
  )
}
```
