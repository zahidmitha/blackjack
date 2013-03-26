require 'minitest/autorun'

class TestArray < MiniTest::Unit::TestCase

  def test_sort()
    sorted_array = [1,5,1,2,3].sort
    assert_equal([1,1,2,3,5], sorted_array)
  end

  def test_sort_with_block()
    sorted_array = ["aa", "leo", "zahid", "benny", "german counterculture"].sort {|x,y| x.length <=> y.length}
    assert_equal(["aa", "leo", "benny", "zahid", "german counterculture"], sorted_array)
  end

  def test_count()
    counted_array = [1,2, "buckle my shoe", 33, {}].count
    assert_equal(5, counted_array)
  end

end