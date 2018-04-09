def ftoc(degres_to_f)
	degres_to_c = degres_to_f - 32 # cels = farh - 32
	degres_to_c = degres_to_c * 5 # cels = cels * 5
	degres_to_c = degres_to_c / 9 # cels = cels / 9
end

def ctof(degres_to_c)
	degres_f = degres_to_c * 1.8 + 32 # farh = cels * 1.8 + 32
end