passwordsave = ""

def signup
	puts "Bonjour, veuillez définir un mot de passe..."
	print "> "
	passwordsave = gets.chomp
	return passwordsave
end

def login(password)
	puts "Pour accéder à la zone secrète, veuillez taper votre mot de passe..."
	print "> "
	password_login = gets.chomp

	if (password_login != password)
		puts "Le mot de passe est incorect..."
		login(password)
	else
		puts "Bienvenue dans la zone secrète !"
		sleep(2)
		puts "Décryptage du message secret en cours..."
		sleep(2)
		puts "> Le cassoulet c'est délicieux !!"
	end

end

def welcome_screen
	password = signup()
	login(password)
end

welcome_screen