def ask_first_name
	puts "C'est quoi ton petit nom ?"
	print "> "

	return gets.chomp
end

def sayhello(firstname)
	puts "Bonjour #{firstname}, la forme ?"
end

sayhello(ask_first_name)