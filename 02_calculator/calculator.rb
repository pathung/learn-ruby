#fonction somme
def add(a,b)
  @a=a
  @b=b

  add = @a + @b
  return add

end
#fonction difference
def subtract(a,b)
  @a=a
  @b=b
  dif = @a - @b
  return dif

end
#fonction difference
def sum(array)
  @array = array
  @sum=0

  #Si l'array est vide, je retourne 0
  #sinon je fais la somme de tous les éléments
  if @array.empty?
    return 0

  else

    @array.each {|x|
      @sum = @sum + x
    }
    return @sum
  end
end

#Avec * args en argument je peux prendre N entrées
#Il ne me reste plus qu'à tous les multiplier entre elles

def multiply(*args)

product=1

   args.each do |x|
product = product * x
   end

return product

end

#Definition de la fonction puissance
def power(a,b)
  @a=a
  @b=b

  return @a**@b

end
#Pour la factorielle j'ai mis toutes les valeurs de 1 à a
#dans un array
#Ensuite je parcours l'array pour multiplier tous les membres entre eux
#Vu que 0!=1 j'ai mis une condition pour tester si a > 1, sinon on a 1 en sortie
def factorial(a)
  @a = a
  @facto = 1
  @array=[]

  if a > 1

    1.upto(a) { |x|
      @array << x
    }
    @array.each { |x|
      @facto = @facto*x
    }

  end

  return @facto
end

