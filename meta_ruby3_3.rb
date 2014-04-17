#クロージャ
#ブロックは束縛とコードで構成される
def my_method
  x = "Goodbye"
  yield("cruel")
end

x = "Hello"
p my_method{|y| "#{x}, #{y} world"}

def my_method2
  yield
end

top_level_variable = 1

my_method do
  top_level_variable += 1
  local_variable = 1
end


p top_level_variable #=> 2となる
p local_variable #=>Error