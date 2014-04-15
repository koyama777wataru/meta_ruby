#coding: utf-8
##メソッド調査

class Greeting
  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end
end

my_object = Greeting.new("Hello")
p my_object.class
p my_object.class.instance_methods(false)
p my_object.instance_variables


##ボブのこころみ重複し過ぎ
#テーブルにtitleが含まれる、Movieクラスにも@titleが含まれる
class Entity
  def initialize(table,ident)
    @table = table
    @ident = ident
    #Database.sql "INSERT INTO #{@table} (id) VALUES (#{@ident})"
  end

  def set(col, val)
    #Database.sql "UPDATE #{@talbe} SET #{col}='val' WHERE id=#{@ident}"
  end

  def get(col)
    #Database.sql("SELECT #{col} FROM #{@table} WHERE id=#{}")[0][0]
  end
end

class Movie < Entity
  def initialize(ident)
    super("movies", ident)
  end

  def title
    get("title")
  end

  def title=(value)
    set("title", value)
  end

  def director
    get("director")
  end

  def director=(value)
    set("director", value)
  end
end

movie = Movie.new(1)
movie.title = "博士の以上な愛情"
movie.director = "スタンリー・キューブリック"

require 'rubygems'
require 'active_record'

class Movie < ActiveRecord::Base
end

movie = Movie.create
movie.title = "博士の異常な愛情"