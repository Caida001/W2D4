def windowed_max_range(arr, window_size)
  current_max_range = 0

  (0..arr.length-window_size).each do |i|
    window = arr[i...i+window_size]
    current_max_range = window.max - window.min if current_max_range < window.max - window.min
  end
  current_max_range
end



class MyQueue


  def initialize
    @store = []
  end

  def enqueue(ele)
    @store << ele
  end

  def dequeue
    @store.shift
  end

  def peek
    @store.first
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

end

class MyStack
  def initialize
    @store = []
  end

  def push(ele)
    @store.push(ele)
  end

  def pop
    @store.pop
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end
end

class StackQueue
  def initialize
    @in_stack = MyStack.new
    @out_stack = MyStack.new
  end

  def size
    @in_stack.size + @out_stack.size
  end

  def empty?
    @in_stack.empty? && @out_stack.empty?
  end

  def enqueue(ele)
    @in_stack << ele
  end

  def dequeue
    queueify if @out_stack.empty?
    @out_stack.pop
  end

  def queueify
    @out_stack.push(@in_stack.pop) until @in_stack.empty?
  end
end
