def ask_nbr_etages
	puts "Salut, bienvenue dans ma super pyramide !"
	puts "Entre le nombre d'étage : Entre 2 et 24 !"
	print "> "
	nb  = gets.chomp.to_i
	while (nb<2) || (nb>24) || (nb%2!=0)
		puts "Aïe aïe aïe...Choisis un nombre pair entre 2 et 24"
		print "> "
		nb = gets.chomp.to_i
	end
	return nb
end

def half_pyramid(nb)
	i = 0

	while i <= nb
		puts " "*(nb-i)+"#"*i
		i += 1
	end
end

def full_pyramidup(nb)
	i = 1

	while i <= nb
		puts " "*(nb-i)+"#"*(2*i-1)
		i +=1
	end
end

def full_pyramiddown(nb)
	i = nb-1

	while i > 0
		puts " "*(nb-i)+"#"*(2*i-1)+" "*(nb-i)
		i -= 1
	end
end

def wtf_pyramid(nb)

	cnt = (nb+1)/2

	full_pyramidup(cnt)
	full_pyramiddown(cnt)

end

wtf_pyramid(ask_nbr_etages)