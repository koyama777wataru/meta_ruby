# def replace(array, from, to)
#   array.each_with_index do |e, i|
#     array[i] = to if e == from
#   end
# end

# require 'test/unit'

# class ReplaceTest < Test::Unit::TestCase 
#   def test_replace
#     book_topics = ['html', 'java', 'css']
#     replace(book_topics, 'java', 'ruby')
#     expected = ['html', 'ruby', 'css']
#     assert_equal expected, book_topics
#   end
# end

#上記のオープンクラスの利用
class Array
  #オープンクラスのダークサイド
  def replace(from, to)
    each_with_index do |e, i|
      self[i] = to if e == from
    end
  end
end

require 'test/unit'
class ReplaceTest2 < Test::Unit::TestCase 
  def test_replace2
    book_topics = ['html', 'java', 'css']
    book_topics.replace('java', 'ruby')
    expected = ['html', 'ruby', 'css']
    assert_equal expected, book_topics
  end
end

p [].methods.grep /^re/

