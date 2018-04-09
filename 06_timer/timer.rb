class Timer

  attr_accessor :seconds
  #write your code here

#Je definis les secondes = 0 de base
    def initialize
      @seconds = 0
      return @seconds
    end

  def time_string



#Une heure = 3600s
#Une minute = 60s
#On calcule les temps en prenant en compte cette base là

      @heures = @seconds/3600.to_i
      @minutes = (@seconds/60 - @heures*60).to_i
      @seconds =  (@seconds - @minutes*60 - @heures*3600).to_i

      #Boucle d'affichage en fonction de nombre de secondes
#Y a sûrement moyen de simplifier la boucle mais je ne vois pas comment
    if @minutes >10
      @minutes = "#{@minutes}"
    else
      @minutes = "0#{@minutes}"
    end

    if @seconds >10
      @seconds = "#{@seconds}"
    else
      @seconds = "0#{@seconds}"
    end

   if @heures >10
      @heures = "#{@heures}"
    else
      @heures = "0#{@heures}"
    end


  end
#Resultat final
    return "" + @heures +":" + @minutes +":" + @seconds

  end
  
end
