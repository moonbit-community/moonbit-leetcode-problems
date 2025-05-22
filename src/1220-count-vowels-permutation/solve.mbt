///|
fn count_vowel_permutation(n : Int) -> Int {
  let mod = 1000000007
  let f : Array[Int] = Array::make(5, 1)
  fn fill_with_zeros(size : Int) -> Array[Int] {
    Array::make(size, 0)
  }

  fn modulo_sum(args : Array[Int], mod : Int) -> Int {
    let mut sum = 0
    for i = 0; i < args.length(); i = i + 1 {
      sum = (sum + args[i]) % mod
    }
    sum
  }

  for i = 1; i < n; i = i + 1 {
    let g : Array[Int] = fill_with_zeros(5)
    g[0] = modulo_sum([f[1], f[2], f[4]], mod)
    g[1] = modulo_sum([f[0], f[2]], mod)
    g[2] = modulo_sum([f[1], f[3]], mod)
    g[3] = f[2] % mod // By MoonBit's nature, we have to ensure that all operations respect the mod
    g[4] = modulo_sum([f[2], f[3]], mod)
    for j = 0; j < 5; j = j + 1 {
      f[j] = g[j]
    }
  }
  let mut result = 0
  for i = 0; i < f.length(); i = i + 1 {
    result = (result + f[i]) % mod
  }
  result
}
