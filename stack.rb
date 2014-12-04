# an object, saying that the next object is 'this'

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

  def to_s # a way to print
    @value || ""
  end
end


class Stack
  attr_accessor :head

  def initialize(first_value = nil)
    @head = Node.new(first_value) if first_value
  end

  def push(value)
    node = Node.new(value)
    node.next_node = @head
    @head = node
  end

  def pop
    node = @head
    @head = node.next_node
    node
  end

  def peek
    @head.value
  end
end

