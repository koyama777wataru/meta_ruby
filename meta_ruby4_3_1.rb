#特異クラス
paragraph = "any string can be a paragraph"
def paragraph.title?
  self.upcase == self
end