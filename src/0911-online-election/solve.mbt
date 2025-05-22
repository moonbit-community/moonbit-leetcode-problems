struct TopVotedCandidate {
  times : Array[Int]
  win_persons : Array[Int]
}

fn TopVotedCandidate::new(
  persons : Array[Int],
  times : Array[Int]
) -> TopVotedCandidate {
  let n = persons.length()
  let counter = Array::make(n + 1, 0)
  let win_persons = Array::make(n, -1)
  let mut mx = -1
  let mut cur_win = -1
  let mut i = 0
  while i < n {
    counter[persons[i]] = counter[persons[i]] + 1
    if counter[persons[i]] >= mx {
      mx = counter[persons[i]]
      cur_win = persons[i]
    }
    win_persons[i] = cur_win
    i = i + 1
  }
  TopVotedCandidate::{ times, win_persons }
}

fn TopVotedCandidate::q(self : TopVotedCandidate, t : Int) -> Int {
  let mut left = 0
  let mut right = self.win_persons.length() - 1
  while left < right {
    let mid = (left + right + 1) / 2
    if self.times[mid] <= t {
      left = mid
    } else {
      right = mid - 1
    }
  }
  self.win_persons[left]
}
