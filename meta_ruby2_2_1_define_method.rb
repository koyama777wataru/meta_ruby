class Myclass

  def self.define_component(name)
    define_method(name){
      puts "#{name}!!!!"
    }
  end

  define_component :mouse
end

m = Myclass.new
m.mouse