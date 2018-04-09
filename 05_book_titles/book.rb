#Book Titles

class Book

  #J'initialise avec cette méthode
  def title
    @title
  end

  #Cette méthode appelle ma fonction et retourne le tout
  def title=(string)
    @title = capital_letters(string)
    return @title
  end


  def capital_letters(title)
    #déclaration des variables
    @title = title

    #Je mets tous les mots dans un array
    @array_title = @title.split()
    @capitalized_movies = []
    @return = ""
    i=0

    #Je boucle sur les mots pour les mettre en capitale sauf
    #si ce sont And in the of a an (exception de The en première position)
    @array_title.each do |x|


      #Boucle if qui contient les exceptions

      stop_words = %w(and in the of a an)
      if stop_words.include?(x) && i!=0
        @capitalized_movies <<  x
      elsif
        x = x.capitalize
        @capitalized_movies <<  x
      end
      i=i+1
    end
#I take out the last " "
@capitalized_movies.each do |x|
  @return += x + " "
end

#On coupe le dernier espace et tadam
@return = @return.chomp(' ')
return @return
end


end
