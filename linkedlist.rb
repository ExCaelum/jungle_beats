require './node.rb'

class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0
    @string = ""
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
    @count += 1
    data
  end

  def to_string
    current_node = @head
    while current_node != nil
      @string += current_node.data + " "
      current_node = current_node.next_node
    end
    @string.rstrip
  end

end
