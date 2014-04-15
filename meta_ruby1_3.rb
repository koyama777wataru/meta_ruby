class Myclass
  def my_method
    @v = 1
  end
end

obj = Myclass.new
p obj.class
obj.my_method
#インスタンス変数を知りたいとき
p obj.instance_variables
p obj.methods.grep(/my/)

#メソッドはオブジェクトに着目
#インスタンスメソッドはクラスに着目
p String.instance_methods == "ab".methods
p String.methods == "ab".methods