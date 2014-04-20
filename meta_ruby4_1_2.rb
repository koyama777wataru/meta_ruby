#coding: utf-8

class MyClass
  puts self
  def my_method
    #..
    puts self
  end
end

m = MyClass.new
m.my_method

#クラス名が分からない状態でメソッドを定義する
def add_method_to(a_class)
  a_class.class_eval do
    def m
      'hello'
    end
  end
end
add_method_to String
p "as".m

