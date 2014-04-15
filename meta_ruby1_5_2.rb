#selfの発見
class MyClass
  def testing_self
    @var = 10
    my_method
    self
  end

  def my_method
    @var += 1
  end
end

m = MyClass.new
p m.testing_self

class C
  def my_method
    #selfがついているため例外となる
    #privateメソッドは暗黙的なselfでなければprivateは呼び出せない
    self.my_private_method
  end

  private
  def my_private_method
  end
end

C.new.my_method