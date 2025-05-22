struct Solution {
  a : Array[Int]
  dp : Array[Array[Int]]
  mut s : @immut/list.T[Int]
}

fn Solution::new() -> Solution {
  let a : Array[Int] = Array::make(12, 0) // Equivalent to new int[12] in Java
  let dp : Array[Array[Int]] = Array::make(12, Array::make(2, -1)) // Equivalent to new int[12][2] in Java with all elements initialized to -1
  let s : @immut/list.T[Int] = Nil
  Solution::{ a, dp, s }
}

fn add(s : @immut/list.T[Int], value : Int) -> @immut/list.T[Int] {
  Cons(value, s)
}

fn Solution::at_most_n_given_digit_set(
  self : Solution,
  digits : Array[String],
  n : Int
) -> Int {
  let mut s = self.s
  let mut n = n
  for i = 0; i < digits.length(); i = i + 1 {
    let digit = @strconv.parse_int?(digits[i]).unwrap()
    s = add(s, digit)
  }
  let mut len = 0
  while n > 0 {
    self.a[len + 1] = n % 10
    n = n / 10
    len = len + 1
  }
  self.s = s
  self.dfs(len, 1, true)
}

fn Solution::dfs(self : Solution, pos : Int, lead : Int, limit : Bool) -> Int {
  if pos <= 0 {
    return lead.lxor(1)
  }
  if not(limit) && lead != 1 && self.dp[pos][lead] != -1 {
    return self.dp[pos][lead]
  }
  let mut ans = 0
  let up = if limit { self.a[pos] } else { 9 }
  for i = 0; i <= up; i = i + 1 {
    if i == 0 && lead == 1 {
      ans = ans + self.dfs(pos - 1, lead, limit && i == up)
    } else if self.s.contains(i) {
      ans = ans + self.dfs(pos - 1, 0, limit && i == up)
    }
  }
  if not(limit) && lead == 0 {
    self.dp[pos][lead] = ans
  }
  ans
}
