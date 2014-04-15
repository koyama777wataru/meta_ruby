#coding: utf-8

#クラス定義の中身

#クラス定義が3つされているとうい事ではない

3.times do 
  class C
    puts "Hello"
  end
end


class D #この時点ではクラスは作成されない
  #この時点でメソッドと同時に作成される
  def x; 'x'; end
end

class D
  #一度上でクラスが定義されれているので再オープンする
  def y; 'y'; end
end

obj = D.new
p obj.x
p obj.y