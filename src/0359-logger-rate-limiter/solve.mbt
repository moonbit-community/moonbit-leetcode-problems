///|
struct Logger {
  mut limiter : @immut/hashmap.T[String, Int]
}

///|
fn Logger::new() -> Logger {
  Logger::{ limiter: @immut/hashmap.T::new() }
}

///|
fn Logger::should_print_message(
  self : Logger,
  timestamp : Int,
  message : String
) -> Bool {
  let t = self.limiter.find(message).or(0)
  if t > timestamp {
    false
  } else {
    self.limiter = self.limiter.add(message, timestamp + 10)
    true
  }
}
