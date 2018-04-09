#Je crée un index voyelle qui contient toute les voyelles pour
#pouvoir faire des tests avec la fonction .include?
def translate(word)

  @word_to_translate = word.split(/ /)
  @whole_sentence = []
  @vowels = "aeiouy"
  @output = ""

#Première boucle pour récupérer tous les mots dans un array
  @word_to_translate.each do |x|
    @whole_sentence << x
  end

#Ensuite je boucle sur chaque mot de cet array
#Et j'effectue des tests sur les premières lettres

# Plusieurs cas
# 1- le mot commence par une voyelle donc
# on rajoute juste ay à la fin
# 2 - La 1ère lettre est un Q suivi de U
#2bis ou SQU alors je considère également le tout comme une consonne
# 3 - Trois consonnes
# 4 - Deux consonnes
# 5 - Une consonne

#C'est très compliqué pour rien
#Il aurait mieux fallu faire des cas


@whole_sentence.each do |word_to_translate|

  @first_char = word_to_translate[0]
  @second_char = word_to_translate[1]
  @third_char = word_to_translate[2]
  @text_length = word_to_translate.length
  @new_word = word_to_translate
  @qu = @first_char + @second_char + @third_char
  if  @vowels.include?(@first_char)
        #Ici on commence par une voyelle

      elsif @qu.include?("qu")
        @new_word[@text_length] = @first_char
        @new_word[@text_length+1] = @second_char

        @index = @new_word.index("q")
        if @index >=1
          @new_word[@text_length+2] = @third_char
   @new_word = @new_word[@index+2..-1]
        else
             @new_word = @new_word[@index+2..-1]
        end


      elsif !(@vowels.include?(@first_char) || @vowels.include?(@second_char)|| @vowels.include?(@third_char))

#Ici on commence par trois consonnes
        @new_word[@text_length] = @first_char
        @new_word[@text_length+1] = @second_char
        @new_word[@text_length+2] = @third_char
        @new_word = @new_word[3..-1]

      elsif !(@vowels.include?(@first_char) || @vowels.include?(@second_char))

#Ici on commence par deux consonnes
        @new_word[@text_length] = @first_char
        @new_word[@text_length+1] = @second_char
        @new_word = @new_word[2..-1]


else
  @new_word[@text_length] = @first_char
  @new_word = @new_word[1..-1]
  #Ici on commence par une consonne

end

@new_word += "ay"
@output += @new_word + " "
end

return @output.chomp(" ")
#return @index
end
