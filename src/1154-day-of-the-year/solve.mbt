fn slice_string(s : String, start : Int, end : Int) -> String {
  let mut result = ""
  for i = start; i < end; i = i + 1 {
    result = result + s[i].to_string()
  }
  result
}

fn slice(arr : Array[Int], start : Int, end : Int) -> Array[Int] {
  let result = Array::make(end - start, 0)
  let mut j = 0
  for i = start; i < end; i = i + 1 {
    result[j] = arr[i]
    j = j + 1
  }
  result
}

fn reduce(arr : Array[Int], initial_value : Int) -> Int {
  let mut result = initial_value
  for i = 0; i < arr.length(); i = i + 1 {
    result = result + arr[i]
  }
  result
}

fn day_of_year(date : String) -> Int {
  let y = @strconv.parse_int?(slice_string(date, 0, 4)).unwrap()
  let m = @strconv.parse_int?(slice_string(date, 5, 7)).unwrap()
  let d = @strconv.parse_int?(slice_string(date, 8, date.length())).unwrap()
  let v = if y % 400 == 0 || (y % 4 == 0 && y % 100 != 0) { 29 } else { 28 }
  let days : Array[Int] = [31, v, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  reduce(slice(days, 0, m - 1), d)
}
