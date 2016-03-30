require 'minitest/autorun'
require 'minitest/pride'
require '../lib/linkedlist'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_linkedlist_exist
    list = LinkedList.new
    assert_equal LinkedList, list.class
  end

  def test_linkedlist_head_is_nil
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_first_node_is_head
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data
  end

  def test_next_node_is_nil
    list = LinkedList.new
    list.append("doop")
    assert_equal nil, list.head.next_node
  end

  def test_appended_node_is_tail
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "deep", list.head.next_node.data
  end

  def test_prepended_node_is_head
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop", list.head.data
  end

  def test_insert_node
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    assert_equal "woo", list.head.next_node.next_node.data
  end

  def test_find_nodes
    list = LinkedList.new
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.prepend("deep")
    assert_equal "deep", list.find(0, 1)
  end

  def test_count_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.prepend("dop")
    assert_equal 3, list.count
  end

  def test_to_string
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.prepend("dop")
    list.append("suu")
    list.prepend("plop")
    assert_equal "plop dop doop deep suu", list.to_string
  end

end
