///|
fn int_to_roman(num : Int) -> String {
  let roman_map : Array[(Int, String)] = [
    (1000, "M"),
    (900, "CM"),
    (500, "D"),
    (400, "CD"),
    (100, "C"),
    (90, "XC"),
    (50, "L"),
    (40, "XL"),
    (10, "X"),
    (9, "IX"),
    (5, "V"),
    (4, "IV"),
    (1, "I"),
  ]
  let mut result : String = "" // Make result mutable
  let mut remaining = num
  for i = 0; i < roman_map.length(); i = i + 1 {
    let (value, symbol) = roman_map[i]
    while remaining >= value {
      result = result + symbol
      remaining = remaining - value
    }
  }
  result
}
