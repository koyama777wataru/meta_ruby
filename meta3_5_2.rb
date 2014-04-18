#coding: utf-8
#Proc対lamda

#lambdaはlamdaから戻るだけ
def double(callable_object)
  callable_object.call * 2
  return 1 * 2 #ここまで到達しない
end

l = lambda{ return 10 }
p double(l)

def another_double
  p = Proc.new{ return 10}
  result = p.call
  return result * 2 #ここまで到達する
end

p another_double

#arity(項数)
p = Proc.new{|a, b| [a, b]}
p p.arity
p p.call(1, 2, 3) #別にエラーでない
p p.call(1)
