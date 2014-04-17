#coding: utf-8
#スコープについて
v1 = 1

class Myclass
  v2 = 2
  local_variables

  def my_method
    v3 = 3
    local_variables
  end

  local_variables
end

m = Myclass.new
p m.my_method
p local_variables

#グローバル変数はあんまりつかわないよ
def a_scope
  $v = "なんらか値"
end

def another_scope
  $v
end
a_scope
puts another_scope

#グローバル変数代用mainのインスタンス変数
@var = "トップレベルの変数"

def my_method
  @var
end

puts my_method