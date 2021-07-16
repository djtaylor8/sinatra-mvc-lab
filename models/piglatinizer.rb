class PigLatinizer
    attr_accessor :text, :user_input

    def initialize
    end

    def piglatinize(text)
        vowels = ["a","e","i","o","u","I","A","E","O","U"]
        collecting_array = []
        words = text.split(' ')

        words.each do |word|
         if vowels.include?(word.chars.first)
           collecting_array << word + "way"
         else             
           collecting_array << helper_method(word)   
         end
       end
        collecting_array.join(' ')
    end

    def helper_method(word)
        vowels = ["a","e","i","o","u","I","A","E","O","U"]  
        characters = word.chars        
        first_vowel_char = characters.find{|char| vowels.include?(char)}               
        first_vowel_index = word.index(first_vowel_char)    
        word[first_vowel_index..-1] + word[0...first_vowel_index] + "ay" 
        end

end
