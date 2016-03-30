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

  def test_junglebeat_can_count
    jb = Junglebeat.new
    jb.append("deep doo ditt")
    jb.append("plop hoo shut")
    assert_equal 6, jb.count
  end

  def test_junglebeat_can_display
    jb = Junglebeat.new
    jb.append("deep doo ditt")
    jb.append("plop hoo shut")
    assert_equal "deep doo ditt plop hoo shut", jb.all
  end


  def test_play_jungle_drums
    jb = Junglebeat.new
    beats = jb.append("deep doo ditt")
    beats += jb.append("plop hoo shu")
    assert_equal `say -r 50 -v boing #{beats}`, jb.play
  end

end
