require 'pry-byebug'

class MyNode
  attr_accessor :value, :next_node

  def initialize(value=nil)
    @value = value
    @next_node = nil
  end

end

class LinkedList

  attr_accessor :first, :last

  def initialize(first_value=nil)
    @first = MyNode.new(first_value) if first_value
    @last = @first
  end

  def prepend(item)
    node = MyNode.new(item)
    if empty?
      @first = node
      @last = node
    else
      node.next_node = @first
      @first = node
    end
  end


  def append(item)
    node = MyNode.new(item)
    empty? ? @first = node : @last.next_node = node
    @last = node
  end

  def empty?
    @first.nil?
  end

  def insert_after(node_after, item)
    node = MyNode.new(item)
    current_node = @first
    while current_node.value != node_after
      current_node = current_node.next_node
    end

    if
      current_node.next_node == nil
      append(item)
    else
      node.next_node = current_node.next_node
      current_node.next_node = node
    end
  end
  # take a node and insert after a node
  # prepend a value to beginning of list
  # append a value ot the end
  # pop, removes + return first node
  # retrieve the last node
  # retreive the first
  # get length
  # find(value)
  # reverse the list
  # reverse destructively
end
