require 'minitest/autorun'
require 'minitest/pride'
require './LinkedList'
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

  def test_list_has_access_to_node
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_appended_node_is_head
    list = LinkedList.new
    list.append("doop")
    result = list.head.data
    assert_equal "doop", result
  end

  def test_next_node_is_nil
    list = LinkedList.new
    list.append("doop")
    result = list.head.next_node
    assert_equal nil, result
  end

  def test_new_node_is_tail
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    result = list.head.next_node.data
    assert_equal "deep", result
  end


  def test_amount_of_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    result = list.count
    assert_equal 2, result
  end

  def test_data_of_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    result = list.to_string
    assert_equal "doop deep", result
  end

end
