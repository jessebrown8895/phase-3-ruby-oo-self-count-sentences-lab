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
   sentence = 0
   
    punctuations = [".", "!", "?"]
    
    self.chars.each_with_index do |char, index | 
      
     
      if punctuations.include?(char) && !punctuations.include?(self[index + 1])
        
      # Go through each iteration and check to see if the char matches one of the punctuations
      # Once we determine there is a match increment count by 1 
        sentence += 1
      end
    end 
    sentence
  end
end


      

