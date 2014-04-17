#coding: utf-8
#スコープのフラット化
my_val = "anything val"
class Myclass
  #my_valを使いたい
  #classスコープゲートがあるため、つかえない
  def my_method
    #my_valを使いたい
    #classスコープゲートがあるため、つかえない
  end
end

#class,defを超えたフラット化
my_val_flat = "anything val flat"

Myclass2 = Class.new do
  puts "#{my_val_flat}はクラスメソッドの中"

  define_method :my_method do
    puts "#{my_val_flat}はメソッドの中"
  end
end

Myclass2.new.my_method

#複数のメソッド間で変数を共有したいが、その他からは見えないようにしたい
def define_methods
  shared = 0

  Kernel.send :define_method, :counter do
    shared
  end

  Kernel.send :define_method, :inc do |x|
    shared += x
  end
end

define_methods

p counter
inc(4)
p counter