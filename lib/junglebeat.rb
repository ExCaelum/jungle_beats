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

  def prepend(data)
    nodes = data.split
    nodes.map do |data|
      @list.prepend(data)
    end
    count
  end

  def count
    @list.count
  end

  def all
    @list.to_string
  end

  def play
    nodes = @list
    `say -r 50 -v "Bad News" #{nodes}`
  end
end
