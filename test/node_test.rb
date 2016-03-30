require 'minitest/autorun'
require 'minitest/pride'
require '../lib/node'

class NodeTest < Minitest::Test

  def test_node_exists
    node = Node.new("name")
    assert_equal Node, node.class
  end

  def test_node_has_name
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_next_node_nil_when_empty
    node = Node.new("blop")
    node = node.next_node
    assert_equal nil, node
  end

end
