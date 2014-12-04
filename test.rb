require 'pry-byebug'

class MyNode
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
  end
end

binding.pry
@test = MyNode.new(777)

