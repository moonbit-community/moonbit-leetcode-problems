///|
fn next_palindrome(num : String) -> String {
  let n = num.length()
  let half_len = n / 2
  let first_half = num.substring(start=0, end=half_len)
  let next_permutation = find_next_permutation(first_half)
  if next_permutation == "" {
    return ""
  }
  let next_palindrome = construct_palindrome(
    next_permutation,
    n % 2 != 0,
    num[half_len],
  )
  if next_palindrome > num {
    return next_palindrome
  } else {
    return ""
  }
}

///|
fn find_next_permutation(s : String) -> String {
  let chars = s.to_array()
  let n = chars.length()
  let mut i = n - 2
  while i >= 0 && chars[i] >= chars[i + 1] {
    i = i - 1
  }
  if i == -1 {
    return ""
  }
  let mut j = n - 1
  while chars[j] <= chars[i] {
    j = j - 1
  }
  let temp = chars[i]
  chars[i] = chars[j]
  chars[j] = temp
  let mut left = i + 1
  let mut right = n - 1
  while left < right {
    let temp = chars[left]
    chars[left] = chars[right]
    chars[right] = temp
    left = left + 1
    right = right - 1
  }
  return chars.to_string()
}

///|
fn construct_palindrome(
  first_half : String,
  has_middle : Bool,
  middle_char : Char
) -> String {
  let second_half = first_half.to_array().rev_inplace().to_string()
  if has_middle {
    return first_half + middle_char.to_string() + second_half
  } else {
    return first_half + second_half
  }
}
