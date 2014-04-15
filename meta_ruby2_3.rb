#coding: utf-8
#method missingを用いた動的リファクタリング
class Lawyer; end

nick = Lawyer.new
#NoMethodError
#nick.talk_simple

#NoMethodoErroの呼び出し
#nick.send(:method_missing, :my_method)

#method_missingオーバーライド
class Lawyer
  def method_missing(method, *args)
    puts "#{method}:(#{args.join(',')})を呼び出した"
    puts "プロックをわたした" if block_given?
  end

  bob = Lawyer.new
  bob.talk_simple('a', 'b') do
    #ブロック
  end
end