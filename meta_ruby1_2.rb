#coding: utf-8
require 'test/unit'

#bookwormシステム
#英字、数字、スペース以外を除去するメソッド
def to_alphanumeric(s)
  s.gsub /[^\w\s]/, '' 
end

#test
class StringExtensionsTest < Test::Unit::TestCase
  def test_strips_non_alphanumeric_characters
    assert_equal '3 the Magic Number', to_alphanumeric('#3 the *Magic, Number*?')
  end
end

#オープンクラスの利用
class String
  def to_alphanumeric
    gsub /[^\w\s]/, '' 
  end
end

class StringExtensionsTest2 < Test::Unit::TestCase
  def test_strips_non_alphanumeric_characters
    assert_equal '3 the Magic Number', '#3 the *Magic Number*?'.to_alphanumeric
  end
end