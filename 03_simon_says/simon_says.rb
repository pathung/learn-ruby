#La fonction répète ce qu'on dit
def echo(text)
  @text = text
  return @text
end#

#La fonction répète ce qu'on dit en majuscule

def shout(text)
  @text = text
  @shout = @text.upcase
  return @shout
end

#La fonction répète n fois les mots
# n est à 1 par défaut
#Je fais une boucle si n > 1 (2 ou plus)
#où la sortie est n fois le text
#Deux fois sinon
def repeat(text, n=1)
  @rep = text
  @n = n
  @output = @rep

  if n>1
    for i in 1...@n
      @output += " " + @rep
      i = i + 1
    end
  else
    @output = "#{@rep} #{@rep}"

  end

  return @output
end


#Je me complique un peu la vie ici en faisant une boucle sur les
#n premieres valeurs du texte
#J'aurai pu juste faire string[0..n]...
def start_of_word(text, n)
  @start = ""
  @n = n

  for i in 0...@n
    @start += text[i]
    i = i+1
  end

  return @start
end

#J'utilise la fonction partition pour obtenir le premier mot
def first_word(text)
  @start = text
  @return = @start.partition(" ").first
  return @return
end


=begin

Je fais une fonction split qui me récupère tous les mots
et les met dans un array
Ensuite je fais une boucle sur l’array pour mettre chaque
mot en majuscule
et je les mets dans un tableau nommé return

Puis je fais plusieurs tests sur ce tableau
1- Si la taille de ce tableau est égale à un, alors il y a un seul mot,
on sort de la boucle et on donne l’output
2-Sinon alors si le mot du tableau est and, over, the : on ne fait rien
Sauf si c'est the ET qu'il est en premiere position
Ensuite je retourne le tout
En utilisant chomp pour enlever le dernier espace qui est là à
cause de la concaténation

=end


def titleize(text)
  @string = text
  @words = @string.split(/\W+/)
  @return = []
  @output = ""
  i=0

  @words.each do |x|
    @return << x.capitalize
  end

  unless (@return.length == 1)

    @return.each do |x|
      i=i+1

      if (x == "And") || (x == "Over") || (x == "The" && i!=1)
       @output += x.downcase + " "
     else
      @output += x + " "
     end

   end
     @output = @output.chomp(" ")

 else
  @output = @return[0].capitalize
 end

return @output

end
