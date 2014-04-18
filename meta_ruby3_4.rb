#スコープをねじ曲げる
class Myclass
  def initialize
    @v = 1
  end
end

obj = Myclass.new
obj.instance_eval do
  p self
  p @v
end