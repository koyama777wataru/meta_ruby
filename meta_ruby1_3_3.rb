#coding: utf-8
module Mymodule
  MyConstant = "outside constant"
  class Myclass
    MyConstant = "inside constant"
  end
end

p Mymodule::MyConstant

module M
  class C
    X = "aru constant"
  end

  p C::X
end

p M::C::X

module M
  Y = "Y constant"
  class C
    p ::M::Y
  end
end

p M.constants
p Module.constants