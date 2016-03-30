require 'minitest/autorun'
require 'minitest/pride'
require '../lib/junglebeat'
require 'pry'

class JunglebeatTest < Minitest::Test

  def test_junglebeat_has_linkedlist
    jb = Junglebeat.new
    assert_equal nil, jb.list.head
  end

  def test_junglebeat_can_append
    jb = Junglebeat.new
    jb.append("deep doo ditt")
    assert_equal "deep doo ditt", jb.append("deep doo ditt")
  end

  def test_each_append_data_is_one_node
    jb = Junglebeat.new
    jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
  end

  def test_all_nodes_are_present
    jb = Junglebeat.new
    jb.append("deep doo ditt")
    assert_equal "doo", jb.list.head.next_node.data
  end

end
