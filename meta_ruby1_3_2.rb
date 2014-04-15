#coding: utf-8
#クラスはオブジェクトである
p "hello".class
p String.class

#クラスのメソッドはClassクラスのインスタンスメソッドである
inherited = false
#つまりClassクラスには3つのインスタンスメソッドが定義されている
#new, superclass, new
p Class.instance_methods(inherited)

p String.superclass
p Object.superclass
#すべての頂点
p BasicObject.superclass
p Class.superclass
p Module.superclass

class Myclass
end

p Myclass.class