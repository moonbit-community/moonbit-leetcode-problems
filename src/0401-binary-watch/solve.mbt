fn bitCount(x : Int) -> Int {
  let mut count = 0
  let mut num = x
  while num > 0 {
    if num % 2 == 1 {
      count = count + 1
    }
    num = num / 2
  }
  count
}

fn read_binary_watch(turnedOn : Int) -> @immut/list.T[String] {
  let mut ans : @immut/list.T[String] = @immut/list.T::Nil
  let mut i = 0
  while i < 12 {
    let mut j = 0
    while j < 60 {
      if bitCount(i) + bitCount(j) == turnedOn {
        let time = formatTime(i, j)
        ans = @immut/list.T::Cons(time, ans)
      }
      j = j + 1
    }
    i = i + 1
  }
  ans
}

fn formatTime(hour : Int, minute : Int) -> String {
  let hourStr = hour.to_string()
  let minuteStr = if minute < 10 {
    "0" + minute.to_string()
  } else {
    minute.to_string()
  }
  hourStr + ":" + minuteStr
}

fn concat(list : @immut/list.T[String], sep : String) -> String {
  loop list, "" {
    @immut/list.T::Nil, str => str
    @immut/list.T::Cons(x, xs), str =>
      continue xs, if str == "" { x } else { x + sep + str }
  }
}
