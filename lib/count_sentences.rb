require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count = 0
    array_sentences = self.split(" ")
    array_sentences.each {|word| count+=1 if word.sentence? || word.question? || word.exclamation?}
    count
  end
end