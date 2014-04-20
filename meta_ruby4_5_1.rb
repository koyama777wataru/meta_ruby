#クラス拡張
module Mymodule
  def my_method
    puts "hello"
  end
end

obj = Object.new
obj.extend Mymodule
obj.my_method

class Myclass
  extend Mymodule
end

Myclass.my_method

#メソッドエイリアス
class MyClass
  def my_method
    puts "Hello, world"
  end

  alias :m :my_method
end

obj = MyClass.new
obj.my_method
obj.m