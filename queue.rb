# queue
class Node
  attr_accessor :value, :next_node, #:last_node, :next_last

  def initialize(value=nil)
    @value = value
    @next_node = nil
    # @last_node = nil
    # @next_last = nil
  end

  def to_s
    @value || nil
  end
end

class MyQueue2
  attr_accessor :first, :last

  def initialize(first_value=nil)
    @first, @last = Node.new(first_value) if first_value
    # @last = Node.new(last_value) if last_value
  end

  def push(element)
    node = Node.new(element)

    if empty?
      @first = node
    else
      @last.next_node = node
    end

    @last = node

    # node.next_node = @first
    # node.next_last = @first if @last == nil
    # @last = node.next_node if @last == nil
    # # @last = node.next_node
    # # node.last_node = @last
    # @first = node
    # # node.next_last = @first
  end

  def pop
    node = @first
    @first = node.next_node
    node
  end

  def peek
    @first.value
  end

  def empty?
    @first.nil?
  end


end












class MyQueue
  # make a new queue, empty
  def initialize(*items)
    @array = [items]
  end

  # add items to the back of the queue
  def add_to_back(item)
    @array << item
  end

  # look at item at the front of queue
  def whats_in_front
    @array[0]
  end

  # remove and retrieve form the front of the queue
  def remove_retrieve_last
    # @array.pop
    @array.slice!(0)
  end

  # ask of size
  def what_size?
    @array.length
  end

  # ask if its empty
  def is_empty?
    @array.length == 0
    # if @array.length = 0
    #   true
    # else
    #   false
    # end
  end
end

# new = MyQueue.new
# new.add_to_back(10)
# new.whats_in_front
# puts new



