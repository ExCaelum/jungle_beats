class Node
  attr_accessor :next_node
  attr_reader :data

  def initialize(data = nil, next_node = nil)
    @data = data
    @next_node = next_node
  end

end
