class Myclass
  def my_method; 'my_method()'; end
end

class MySubclass < Myclass
end

obj = MySubclass.new
p obj.class
p obj.my_method

p MySubclass.ancestors

#モジュールもチェーンにふくまれる
module M1
end

module M
end

class C
  include M1
  include M
end
p C.ancestors

#printはカーネルのプライベートメソッドである
p Kernel.private_instance_methods.grep(/^pr/)
#gemもカーネルメソッド
p Kernel.private_instance_methods.grep(/^ge/)