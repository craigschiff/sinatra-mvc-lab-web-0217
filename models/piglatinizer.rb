class PigLatinizer
  #attr_accessor :text
  #  def initialize
   #
  #  end

   def piglatinize(text)
     vowels = ["a", "e", "i", "o", "u"]
     new_arr = text.split(/([aeiou].*)/)
     if vowels.include?(text[0].downcase)
       text + "way"
     else
       new_arr.last + new_arr.first + "ay"
     end
   end

   def to_pig_latin(string)
     pig_arr = []
     string.split(" ").each do |word|
       pig_arr << piglatinize(word)
     end
     pig_arr.join(" ")
   end

end
