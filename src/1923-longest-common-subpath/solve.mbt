struct RollingHash {
  base : Int
  modulus : Int
  powers : Array[Int]
}

fn RollingHash::new(base : Int, modulus : Int, max_length : Int) -> RollingHash {
  let powers = Array::make(max_length + 1, 0)
  powers[0] = 1
  for i = 1; i <= max_length; i = i + 1 {
    powers[i] = powers[i - 1] * base % modulus
  }
  RollingHash::{ base, modulus, powers }
}

fn RollingHash::hash(
  self : RollingHash,
  path : Array[Int],
  length : Int
) -> Array[Int] {
  let n = path.length()
  let hash_values = Array::make(n - length + 1, 0)
  let mut current_hash = 0
  for i = 0; i < length; i = i + 1 {
    current_hash = (current_hash * self.base + path[i]) % self.modulus
  }
  hash_values[0] = current_hash
  for i = length; i < n; i = i + 1 {
    current_hash = (current_hash * self.base + path[i] - path[i - length] * self.powers[length]) %
      self.modulus
    if current_hash < 0 {
      current_hash = current_hash + self.modulus
    }
    hash_values[i - length + 1] = current_hash
  }
  hash_values
}

fn longest_common_subpath(_n : Int, paths : Array[Array[Int]]) -> Int {
  let base = 101
  let modulus = 1000000007
  let max_length = paths.map(fn(path) { path.length() }).fold_left(
    fn(a, b) { @math.minimum(a, b) },
    init=100000,
  )
  let rolling_hash = RollingHash::new(base, modulus, max_length)
  fn check(length : Int) -> Bool {
    let hash_sets = Array::make(paths.length(), @hashmap.T::new())
    for i = 0; i < paths.length(); i = i + 1 {
      let hash_values = rolling_hash.hash(paths[i], length)
      for h = 0; h < hash_values.length(); h = h + 1 {
        let hash_value = hash_values[h]
        hash_sets[i].set(hash_value, 1)
      }
    }
    let first_set = hash_sets[0]
    let first_set_keys = first_set.iter().map(fn { (key, _value) => key }).collect()
    for i = 0; i < first_set_keys.length(); i = i + 1 {
      let hash_value = first_set_keys[i]
      let mut all_contain = true
      for i = 1; i < hash_sets.length(); i = i + 1 {
        if not(hash_sets[i].contains(hash_value)) {
          all_contain = false
          break
        }
      }
      if all_contain {
        return true
      }
    }
    false
  }

  let mut left = 0
  let mut right = max_length
  let mut result = 0
  while left <= right {
    let mid = (left + right) / 2
    if check(mid) {
      result = mid
      left = mid + 1
    } else {
      right = mid - 1
    }
  }
  result
}

// Test cases
