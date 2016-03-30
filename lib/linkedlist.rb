require_relative 'node'

class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0
    @string = ""
  end

  def append(data)
    @count += 1
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
    data
  end

  def prepend(data)
    @count += 1
    next_node = @head
    @head = Node.new(data)
    @head.next_node = next_node
  end

  def insert(position, data)
    @count += 1
    position_counter = 0
    current_node = @head
    while position_counter != position
      current_node = current_node.next_node
      position_counter += 1
    end
    new_node = Node.new(data)
    next_node = current_node.next_node
    current_node.next_node = new_node
    new_node.next_node = next_node
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
