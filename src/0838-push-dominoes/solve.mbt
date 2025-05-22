struct Force {
  mut time : Int
  mut forces : @immut/list.T[Char]
}

fn pushDominoes(dominoes : String) -> String {
  let n = dominoes.length()
  let forces = Array::make(n, { time: -1, forces: @immut/list.T::Nil })
  let q : @queue.T[Int] = @queue.new()
  for i = 0; i < n; i = i + 1 {
    let f = dominoes[i]
    if f != '.' {
      q.push(i)
      forces[i] = { time: 0, forces: Cons(f, @immut/list.T::Nil) }
    }
  }
  let ans = Array::make(n, '.')
  while not(q.is_empty()) {
    let i = q.pop_exn()
    match forces[i].forces {
      Cons(f, Nil) => {
        ans[i] = f
        let j = if f == 'L' { i - 1 } else { i + 1 }
        if j >= 0 && j < n {
          let t = forces[i].time
          if forces[j].time == -1 {
            q.push(j)
            forces[j].time = t + 1
            forces[j].forces = Cons(f, @immut/list.T::Nil)
          } else if forces[j].time == t + 1 {
            forces[j].forces = Cons(f, forces[j].forces)
          }
        }
      }
      _ => ()
    }
  }
  let mut str_ans = ""
  ans.each(fn(char) { str_ans += char.to_string() })
  str_ans
}
