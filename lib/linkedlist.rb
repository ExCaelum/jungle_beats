require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
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
    data
  end

  def prepend(data)
    next_node = @head
    @head = Node.new(data)
    @head.next_node = next_node
  end

  def insert(position, data)
    position_counter = 1
    current_node = @head
    if position == 0
      "Error, please select valid position"
    elsif position == 1
      next_node = @head
      @head = Node.new(data)
      @head.next_node = next_node
    else
      while position_counter != position - 1
        current_node = current_node.next_node
        position_counter += 1
      end
      new_node = Node.new(data)
      next_node = current_node.next_node
      current_node.next_node = new_node
      new_node.next_node = next_node
    end
  end

  def find(position, element)
    find_string = ""
    position_counter = 0
    element_counter = 0
    current_node = @head
    while position_counter != position
      current_node = current_node.next_node
      position_counter += 1
    end
    while element_counter != element
      find_string += current_node.data + " "
      current_node = current_node.next_node
      element_counter += 1
    end
    find_string.rstrip
  end

  def includes?(data)
    current_node = @head
    while current_node.data != data
      if current_node.next_node == nil
        break
      else
        current_node = current_node.next_node
      end
    end
    current_node.data == data
  end

  def pop
    current_node = @head
    while current_node.next_node.next_node != nil
      current_node = current_node.next_node
    end
    popped_string = current_node.next_node.data
    current_node.next_node = nil
    popped_string
  end

  def count
    current_node = @head
    counter = 1
    while current_node.next_node != nil
      counter += 1
      current_node = current_node.next_node
    end
    counter
  end

  def to_string
    current_node = @head
    while current_node != nil
      @string += current_node.data + " "
      current_node = current_node.next_node
    end
    @string.rstrip
  end

  def to_s
    current_node = @head
    while current_node != nil
      @string += current_node.data + " "
      current_node = current_node.next_node
    end
    @string.rstrip
  end


end
