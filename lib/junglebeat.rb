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

  def count
    @list.count
  end

  def which_beats?
    @list.which_beats?
  end

  def all
    @list.to_string
  end

  def play
    beats = @list
    `say -r 400 -v "Bad News" #{beats}`
  end

end
