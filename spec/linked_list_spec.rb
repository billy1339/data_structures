require_relative 'spec_helper'
require_relative '../linked_list'

RSpec.describe MyNode do
  # before(:each) do
  #   @my_node = Node.new
  # end

  describe "A new node" do
    it "should create a new node with value nil" do
      @my_node = MyNode.new
      expect(@my_node.value).to be(nil)
    end
  end

  describe "A new node" do
    it "should create a new node with next value nil" do
      @my_node1 = MyNode.new
      expect(@my_node1.next_node).to be(nil)
    end
  end

  describe "A new node" do
    it "should create a new node with next value 1" do
      @my_node2 = MyNode.new(1)
      expect(@my_node2.value).to eq(1)
    end
  end

end

# RSpec.describe Node do

#   let(:node) do
#     Node.new(777)
#   end

#   describe '.new' do
#     it 'makes new node' do
#       expect(node).to be_a Node
#     end
#   end

#   describe '.new' do
#     it 'makes a new node with the value of 777' do
#       expect(node.value).to eq 777
#     end
#   end
# end



RSpec.describe LinkedList do

  before(:each) do
    @my_link = LinkedList.new
  end



  describe "My linked list" do
    it "should be a Linkedlist" do
      expect(@my_link).to be_a LinkedList
    end
  end

  describe "My linked list" do
    it "should be initialized with a first value of nil" do
      expect(@my_link.first).to be(nil)
    end
  end

    # it "should have a size of 0" do
    #   expect(@my_link.size).to be(0)
    # end

  describe "#prepend" do
    it "should add a node to the beginning of linked list" do
      @my_link.prepend(1)
      @my_link.prepend(2)
      @my_link.prepend(3)
      @my_link.prepend(4)
      expect(@my_link.first.value).to be(4)
    end

    it "should add a node to the beginning of linked list" do
      @my_link.prepend(1)
      expect(@my_link.first.value).to be(1)
    end
  end

   describe "#append" do
    it "should add a node to the beginning end of the list" do
      @my_link.append(1)
      expect(@my_link.first.value).to be(1)
      expect(@my_link.last.value).to be(1)
    end

    it "should add a node to the beginning end of the list" do
      @my_link.append(1)
      @my_link.append(2)
      @my_link.append(3)
      expect(@my_link.first.value).to be(1)
      expect(@my_link.last.value).to be(3)
    end
  end

   describe "#empty?" do
    it "should tell me the list is empty" do
      expect(@my_link.empty?).to be(true)
    end

    it "should tell me the list is empty" do
      @my_link.prepend(1)
      expect(@my_link.empty?).to be(false)
    end
  end

  describe "#insert_after" do
    it "should insert a node after a spcified node in the list" do
      @my_link.prepend(2)
      @my_link.prepend(1) #[12,10,1,2]
      @my_link.prepend(10)
      @my_link.prepend(12)
      @my_link.insert_after(10, 5)
      expect(@my_link.first.next_node.next_node.value).to be(5)
    end

     it "should insert a node at the end if told to insert after the last item" do
      @my_link.prepend(2)
      @my_link.prepend(1) #[12,10,1,2]
      @my_link.prepend(10)
      @my_link.prepend(12)
      @my_link.insert_after(2, 5)
      expect(@my_link.last.value).to be(5)
    end

     it "should insert a node after a spcified node in the list" do
      @my_link.prepend(2)
      @my_link.prepend(1) #[12,10,1,2]
      @my_link.prepend(10)
      @my_link.prepend(12)
      @my_link.insert_after(1, 5)
      expect(@my_link.first.next_node.next_node.next_node.value).to be(5)
    end

    #   it "should return nil if no list exists" do
    #   expect(@my_link.insert_after(1, 5)).to be(nil)
    # end


  end


end
