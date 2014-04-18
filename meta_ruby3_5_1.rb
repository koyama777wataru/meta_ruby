#coding: utf-8
#Procとはブロックをオブジェクト化したものだよ
inc = Proc.new{|x| x + 1}
p inc.call(3)

#&修飾子
def math(a, b)
  yield(a, b)
end

def teach_math(a, b, &operation)
  puts "さあ、計算しよう"
  puts math(a, b, &operation)
end

teach_math(2, 3){|x, y| x * y}