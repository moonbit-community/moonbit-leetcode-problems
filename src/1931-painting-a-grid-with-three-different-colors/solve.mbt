fn paint_grid(m : Int, n : Int) -> Int {
  let mod_val = 1000000007
  let colors = ['R', 'G', 'B']
  let states = generate_states(m, colors)
  let mut dp = Array::make(states.length(), 1)
  for i = 0; i < n; i = i + 1 {
    let next_dp = Array::make(states.length(), 0)
    for i = 0; i < states.length(); i = i + 1 {
      for j = 0; j < states.length(); j = j + 1 {
        if valid_transition(states[i], states[j]) {
          next_dp[j] = (next_dp[j] + dp[i]) % mod_val
        }
      }
    }
    dp = next_dp
  }
  let mut result = 0
  for i = 0; i < dp.length(); i = i + 1 {
    result = (result + dp[i]) % mod_val
  }
  result
}

fn generate_states(m : Int, colors : Array[Char]) -> Array[String] {
  let states = Array::make(0, "")
  generate_states_helper(m, colors, "", states)
  states
}

fn generate_states_helper(
  m : Int,
  colors : Array[Char],
  current : String,
  states : Array[String]
) -> Unit {
  if current.length() == m {
    states.push(current)
    return
  }
  for i = 0; i < colors.length(); i = i + 1 {
    if current.length() == 0 || current[current.length() - 1] != colors[i] {
      generate_states_helper(
        m,
        colors,
        {
          let next = Buffer::new()
          next.write_string(current)
          next.write_char(colors[i])
          next.to_string()
        },
        states,
      )
    }
  }
}

fn valid_transition(state1 : String, state2 : String) -> Bool {
  for i = 0; i < state1.length(); i = i + 1 {
    if state1[i] == state2[i] {
      return false
    }
  }
  true
}
