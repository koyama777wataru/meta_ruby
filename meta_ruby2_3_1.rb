#coding: utf-8
require 'ruport'
table = Ruport::Data::Table.new :column_names => ["country", "wine"],
                                :data => [["France", "Bordeaux"],
                                          ["Italy", "Chianti"],
                                          ["France", "Chablis"]]
puts table.to_text
#動的表現で気にする事は下記のcountryである。
#作者は私がcountryという文言を使う事を想定していたのであろうか？？
found = table.rows_with_country("France")
found.each do |row|
  puts row.to_csv
end

class MyOpenStruct
  def initialize
    @attributes = {}
  end

  def method_missing(name, *args)
    #nameには”flavor=”が入る
    attribute = name.to_s
    if attribute =~ /=$/
      @attributes[attribute.chop] = args[0]
    else
      @attribute[attribute]
    end
  end
end

o = MyOpenStruct.new
o.flavor = "バニラ"

#複数引数の確認
#def test_args(*args)
#  args.each do |val|
#    p val
#  end
#end
#test_args("aa", "bb")

#正規表現確認
#行末マッチ
#p "test=" =~ /=$/

#chop確認
#最終文字をなくす
#p "aaabb".chop

#ハッシュ確認
# hash = {}
# hash["flavor"] = "hashtest"
# p hash[:flavor]