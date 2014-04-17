#coding: utf-8
#ブロック復習
def a_meta
  yield
end
a_meta{ puts "metaaa! "}

#ブロック引数
def b_meta
  yield 1, 2
end
b_meta{|x, y| puts x + y}

#さらにブロック復習
def c_meta(x, y)
  yield x, y
end
c_meta(1,4){ |x, y| puts x + y }

#さらにさらにブロック復習
def d_meta
  return yield if block_given?
  return puts "no block statment"
end

 d_meta
 d_meta{ puts "block statmemt"}
