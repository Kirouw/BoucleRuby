def half_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	nb  = gets.chomp.to_i

	i = 0
	dieze = ""
	space = ""

	while i < nb

		space = " " * (nb-i-1)

		dieze = dieze + "#"

		puts space+dieze

		i = i + 1
	end
end

def full_pyramid

	puts "Salut, bienvenue dans ma full pyramide ! Combien d'étages veux-tu ?"
	print "> "
	nb  = gets.chomp.to_i

	i = 0

	nb.times do |i|
		puts " " * (nb-i-1) + "#" * i*2
		i = i+1

	end

end

def wtf_pyramid

	puts "Salut, bienvenue dans ma wtf pyramide ! Combien d'étages veux-tu ?"
	print "> "
	nb  = gets.chomp.to_i

	cnt = 0

	if nb == 2
		puts "Ca ne tiendra jamais avec 2 étages..."
	elsif nb%2 == 0
		nb.times do |i|

			i += 1
			j = nb/2

			if i < j
				puts " " * ((nb-cnt)/2) + "#" * cnt
				cnt = cnt+0
			elsif i > j
				puts " " * ((nb - cnt) / 2) + "#" * cnt
				cnt = cnt-0
			end

		end	
	else
		puts "Une pyramide est toujours pairs !"
	end

end

full_pyramid