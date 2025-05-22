///|
fn incremental_memory_leak(memory1 : Int, memory2 : Int) -> Array[Int] {
  let mut memory1_crash = memory1
  let mut memory2_crash = memory2
  let mut crash_time = 0
  while true {
    crash_time += 1
    if memory1_crash >= memory2_crash {
      if memory1_crash < crash_time {
        break
      }
      memory1_crash -= crash_time
    } else {
      if memory2_crash < crash_time {
        break
      }
      memory2_crash -= crash_time
    }
  }
  [crash_time, memory1_crash, memory2_crash]
}

// Test cases
