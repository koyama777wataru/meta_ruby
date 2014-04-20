#coding: utf-8
#クラスインスタンス変数とクラスのオブジェクトのインスタンス変数は違う
class MyClass
  @my_var = 1

def self.read; @my_var; end
def wirte; @my_var = 2; end
def read; @my_var; end

end

obj = MyClass.new
obj.wirte
p obj.read
p MyClass.read