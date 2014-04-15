#メソッドを動的に呼び出す
class Myclass
  def my_method(my_arg)
    my_arg * 2
  end
end

obj = Myclass.new
p obj.my_method(3)
p obj.send(:my_method, 3)


#ソースコード試し書き

#DSというデータベースに接続すクラスを持ち
#Computerという mouse, cpu, keyboard の情報を取得するメソッドを作成する
#取得できる情報は info, price
class DS
  def initialize
    #何らかのデータベースに接続する処理
  end

  #def get_XXX_info .......
  #........
end

class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def mouse
    component :mouse
  end

  def cpu
    component :cpu
  end

  def keyboard
    component :keyboard
  end

  def component(name)
    #そもそもDSクラスにget_XXX_infoが定義されている事が前提
    info = @data_source.send("get_#{name}_info", @id)
    price = @data_source.send("get_#{name}_price", @id)
    result = "#{name.to_s.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price >= 100
    result
  end
end

my_computer = Computer.new(42, DS.new)
my_computer.cpu



