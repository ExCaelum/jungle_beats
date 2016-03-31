require 'minitest/autorun'
require 'minitest/pride'
require '../lib/linkedlist'
require 'pry'

class LinkedListTest < Minitest::Test

  def setup
    @list = LinkedList.new
  end

  def test_linkedlist_exist
    assert_equal LinkedList, @list.class
  end

  def test_linkedlist_head_is_nil
    assert_equal nil, @list.head
  end

  def test_first_node_is_head
    @list.append("doop")
    assert_equal "doop", @list.head.data
  end

  def test_next_node_is_nil
    @list.append("doop")
    assert_equal nil, @list.head.next_node
  end

  def test_appended_node_is_tail
    @list.append("doop")
    @list.append("deep")
    assert_equal "deep", @list.head.next_node.data
  end

  def test_prepended_node_is_head
    @list.append("plop")
    @list.append("suu")
    @list.prepend("dop")
    assert_equal "dop", @list.head.data
  end

  def test_insert_node
    @list.append("boop")
    @list.append("shi")
    @list.prepend("shu")
    @list.append("blop")
    @list.append("bleep")
    @list.insert(3, "plop")
    assert_equal "plop", @list.head.next_node.next_node.data
  end

  def test_insert_node_at_head
    @list.append("boop")
    @list.append("shi")
    @list.prepend("shu")
    @list.append("blop")
    @list.append("bleep")
    @list.insert(1, "plop")
    assert_equal "plop", @list.head.data
  end

  def test_insert_node_at_non_existent_position
    @list.append("boop")
    @list.append("shi")
    @list.prepend("shu")
    @list.append("blop")
    @list.append("bleep")
    assert_equal "Error, please select valid position", @list.insert(0, "plop")
  end

  def test_insert_at_position_too_large
    @list.append("boop")
    @list.append("shi")
    @list.prepend("shu")
    @list.append("blop")
    @list.append("bleep")
    assert_equal "Error, please select valid position", @list.insert(27, "plop")
  end

  def test_find_nodes
    @list.append("plop")
    @list.append("shi")
    @list.append("shu")
    @list.append("blop")
    @list.prepend("deep")
    assert_equal "shi", @list.find(2, 1)
  end

  def test_find_other_nodes
    @list.append("plop")
    @list.append("shi")
    @list.append("shu")
    @list.append("blop")
    @list.prepend("deep")
    assert_equal "deep", @list.find(0, 1)
  end

  def test_includes_when_node_exists
    @list.append("plop")
    @list.append("shi")
    @list.append("shu")
    @list.append("blop")
    @list.prepend("deep")
    assert_equal true, @list.includes?("deep")
  end

  def test_includes_when_node_does_not_exist
    @list.append("plop")
    @list.append("shi")
    @list.append("shu")
    @list.append("blop")
    @list.prepend("deep")
    assert_equal false, @list.includes?("blam")
  end

  def test_pop_returns_and_removes_tail
    @list.append("plop")
    @list.append("shi")
    @list.append("shu")
    @list.append("blop")
    @list.prepend("deep")
    assert_equal "blop", @list.pop
    assert_equal "shu", @list.pop
    assert_equal "deep plop shi", @list.to_string
  end

  def test_pop_empty_list
    assert_equal "Error, list is empty", @list.pop
  end

  def test_count_nodes
    @list.append("doop")
    @list.append("deep")
    @list.prepend("dop")
    assert_equal 3, @list.count
  end

  def test_count_more_nodes
    @list.append("plop")
    @list.append("shi")
    @list.append("shu")
    @list.append("blop")
    @list.prepend("deep")
    @list.insert(2, "boom")
    @list.append("beep")
    @list.append("boop")
    @list.prepend("doop")
    @list.insert(5, "bloop")
    assert_equal 10, @list.count
  end

  def test_to_string
    @list.append("doop")
    @list.append("deep")
    @list.prepend("dop")
    @list.append("suu")
    @list.prepend("plop")
    assert_equal "plop dop doop deep suu", @list.to_string
  end

  def test_to_other_string
    @list.append("dop")
    @list.append("shi")
    @list.append("shu")
    @list.append("blop")
    @list.prepend("deep")
    @list.insert(2, "boom")
    @list.append("beep")
    @list.append("boop")
    @list.prepend("doop")
    @list.insert(5, "plop")
    assert_equal "doop deep boom dop plop shi shu blop beep boop", @list.to_string
  end

  def test_edge_string
    @list.append("doop")
    @list.append("deep")
    @list.prepend("dop")
    @list.append("suu")
    @list.prepend("plop")

    assert_equal "plop dop doop deep suu", @list.to_s
  end

  def test_more_edge_strings
    @list.append("dop")
    @list.append("shi")
    @list.append("shu")
    @list.append("blop")
    @list.prepend("deep")
    @list.insert(2, "boom")
    @list.append("beep")
    @list.append("boop")
    @list.prepend("doop")
    @list.insert(5, "plop")
    assert_equal "doop deep boom dop plop shi shu blop beep boop", @list.to_string
  end



end
