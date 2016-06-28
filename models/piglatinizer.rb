require 'pry'

class PigLatinizer

  attr_accessor :phrase



  def piglatinize(word)
    if %w(a e i o u).include?(word.split("").first.downcase) 
      word << 'way'
    else
      #split word on consanants
      consonants = word.split(/[aeiou]/).first
      #add constants on to back end of word
      edit_mark = consonants.length.to_i
      word[edit_mark..-1] + consonants + "ay"
    end
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map do |word|
      piglatinize(word)
    end.join(" ")
    #iterates over each word in phrase and calls piglatinize on the word
  end

  # def is_first_a_vowel?(char)
  #   %w(a e i o u).include?(char.downcase)  
  # end

  # # def run
  # #   self.phrase.split(' ').map do |word|
  # #     if is_first_a_vowel?(word.split("").first.downcase)     
  # #       #binding.pry
  # #       word << 'way'
  # #     else
  # #       first_ele = word.split("")[0]   #could use shift
  # #       word.split("").drop(1).join << first_ele + "ay"   #dont need drop if using shift above
  # #     end
  # #   end.join(" ")
  # # end

  # def piglatinize(word)
  #   if %w(a e i o u).include?(word.split("").first.downcase)     
  #       #binding.pry
  #       word << 'way'
  #     else
  #       first_ele = word.split("")[0]  
  #       word.split("").drop(1).join << first_ele + "ay"
  #     end

  # end

  # def to_pig_latin(string)
  #    string.split(' ').map do |word|
  #     piglatinize(word)
  #   end.join(" ")
  # end

end
