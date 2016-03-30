require_relative 'linkedlist'

class Junglebeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    nodes = data.split
    nodes.map do |data|
      @list.append(data)
    end
    data
  end

end
