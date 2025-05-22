///|
struct Class {
  pass : Int
  total : Int
}

///|
fn new_class(pass : Int, total : Int) -> Class {
  Class::{ pass, total }
}

///|
fn max_average_pass_ratio(
  classes : Array[Class],
  extra_students : Int
) -> Double {
  let max_heap : Array[Class] = []
  for i = 0; i < classes.length(); i = i + 1 {
    let class = classes[i]
    max_heap.push(class)
  }
  let heap_size = max_heap.length()
  for i = heap_size / 2 - 1; i >= 0; i = i - 1 {
    heapify(max_heap, i, heap_size)
  }
  for i = 0; i < extra_students; i = i + 1 {
    let largest_class = max_heap[0]
    max_heap[0] = new_class(largest_class.pass + 1, largest_class.total + 1)
    heapify(max_heap, 0, heap_size)
  }
  let mut total_pass = 0
  let mut total_students = 0
  for i = 0; i < heap_size; i = i + 1 {
    total_pass += max_heap[i].pass
    total_students += max_heap[i].total
  }
  total_pass.to_double() / total_students.to_double()
}

///|
fn heapify(heap : Array[Class], index : Int, size : Int) -> Unit {
  let mut largest = index
  let left = 2 * index + 1
  let right = 2 * index + 2
  if left < size &&
    heap[left].pass.to_double() / heap[left].total.to_double() >
    heap[largest].pass.to_double() / heap[largest].total.to_double() {
    largest = left
  }
  if right < size &&
    heap[right].pass.to_double() / heap[right].total.to_double() >
    heap[largest].pass.to_double() / heap[largest].total.to_double() {
    largest = right
  }
  if largest != index {
    let temp = heap[index]
    heap[index] = heap[largest]
    heap[largest] = temp
    heapify(heap, largest, size)
  }
}

///|
fn assert_approx_eq(result : Double, expect : Double, error : Double) -> Unit! {
  if (result - expect).abs() < error {
    ()
  } else {
    fail!("Expecting \{expect}, got \{result} instead")
  }
}
