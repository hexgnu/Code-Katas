require 'test/unit'



class TestChop < Test::Unit::TestCase
    
    # iterative chop
    def chop(target, array)
      search_iter(array, 0, array.length-1, target)
    end

    def search_iter(array, lower, upper, target)
      return -1 if lower > upper

      mid = (lower + upper) / 2

      if (array[mid] == target)
        mid
      elsif (target < array[mid])
        search_iter(array, lower, mid - 1, target)
      else
        search_iter(array, mid + 1, upper, target)
      end
    end
  
    def test_chop
      assert_equal(-1, chop(3, []))
      assert_equal(-1, chop(3, [1]))
      assert_equal(0,  chop(1, [1]))
      #
      assert_equal(0,  chop(1, [1, 3, 5]))
      assert_equal(1,  chop(3, [1, 3, 5]))
      assert_equal(2,  chop(5, [1, 3, 5]))
      assert_equal(-1, chop(0, [1, 3, 5]))
      assert_equal(-1, chop(2, [1, 3, 5]))
      assert_equal(-1, chop(4, [1, 3, 5]))
      assert_equal(-1, chop(6, [1, 3, 5]))
      #
      assert_equal(0,  chop(1, [1, 3, 5, 7]))
      assert_equal(1,  chop(3, [1, 3, 5, 7]))
      assert_equal(2,  chop(5, [1, 3, 5, 7]))
      assert_equal(3,  chop(7, [1, 3, 5, 7]))
      assert_equal(-1, chop(0, [1, 3, 5, 7]))
      assert_equal(-1, chop(2, [1, 3, 5, 7]))
      assert_equal(-1, chop(4, [1, 3, 5, 7]))
      assert_equal(-1, chop(6, [1, 3, 5, 7]))
      assert_equal(-1, chop(8, [1, 3, 5, 7]))
    end
end