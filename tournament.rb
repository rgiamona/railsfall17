#create the Team class
class Team

	attr_accessor :name, :seed

	def initialize(name, seed)
		@name = name
		@seed = seed
	end
end

#array for the Team class
tournament = []

#sort Team class data by the seed value
def sortBySeed(tournament) #bubbleSort
	swapped = true
	j = 1

	while swapped
		swapped = false
		j += 1
		for i in 0..(tournament.length-j)
			if tournament[i].seed > tournament[i+1].seed
				# flip the teams
				saveSeed = tournament[i].seed
				saveName = tournament[i].name
				tournament[i].seed = tournament[i+1].seed
				tournament[i].name = tournament[i+1].name
				tournament[i+1].seed = saveSeed
				tournament[i+1].name = saveName
				swapped = true
			end
		end
	end
end

#write Team class data to data file
def writeData(tournament)
	open("tournament.txt", "w") do |f|
		for i in 0..(tournament.length-1)
			f.puts tournament[i].seed.to_s + "," + tournament[i].name
		end
	end
end

#read Team class data from data file
def readData(tournament)
	open("tournament.txt", "r") do |f|
		while line = f.gets.chomp
			arr = line.split(",")
			team = Team.new(arr[1], arr[0].to_i)
			tournament.push(team)
		end
	end
end

#read data
readData(tournament)

#start the main loop
resp = 1
while resp != 0
	#create menu
	puts "\n\nWelcome to My Tournament Generator. Enter a selection:"
	puts "1. Enter teams"
	puts "2. List teams"
	puts "3. List matchups"
	puts "0. Exit program"

	#prompt for input 1, 2, 3, or 0
	resp = gets.chomp.to_i
	case resp
	when 1 #Enter teams
		getname=""
		while getname != "done"
			print "Enter the team name (or done when finished):  "
			getname = gets.chomp
			if getname.downcase == "done"
				break
			end
			print "Enter the team seed:  "
			getseed = gets.chomp.to_i
			team = Team.new(getname, getseed)
			tournament.push(team)
			if tournament.length == 15
				puts "You have reached the maximum number of teams."
				break
			end
		end
		puts "\n"
	when 2 #List teams
		sortBySeed(tournament)
		puts "\nSeeds:"
		tournament.each do |team|
			puts team.seed.to_s + ". " + team.name
		end
		puts "\n"
	when 3 #List matchups
		puts "\nMatches:"
		if (tournament.length % 2) > 0 #odd
			puts "(#{tournament[0].seed}) #{tournament[0].name} has a bye"
			if tournament.length >= 3
				puts "(#{tournament[1].seed}) #{tournament[1].name} versus (#{tournament[tournament.length-1].seed}) #{tournament[tournament.length-1].name}"
				if tournament.length >= 5
					puts "(#{tournament[2].seed}) #{tournament[2].name} versus (#{tournament[tournament.length-2].seed}) #{tournament[tournament.length-2].name}"
					if tournament.length >= 7
						puts "(#{tournament[3].seed}) #{tournament[3].name} versus (#{tournament[tournament.length-3].seed}) #{tournament[tournament.length-3].name}"
						if tournament.length >= 9
							puts "(#{tournament[4].seed}) #{tournament[4].name} versus (#{tournament[tournament.length-4].seed}) #{tournament[tournament.length-4].name}"
							if tournament.length >= 11
								puts "(#{tournament[5].seed}) #{tournament[5].name} versus (#{tournament[tournament.length-5].seed}) #{tournament[tournament.length-5].name}"
								if tournament.length >= 13
									puts "(#{tournament[6].seed}) #{tournament[6].name} versus (#{tournament[tournament.length-6].seed}) #{tournament[tournament.length-6].name}"
									if tournament.length >= 15
										puts "(#{tournament[7].seed}) #{tournament[7].name} versus (#{tournament[tournament.length-7].seed}) #{tournament[tournament.length-7].name}"
									end
								end
							end
						end
					end
				end
			end
		else #even
			if tournament.length >= 2
				puts "(#{tournament[0].seed}) #{tournament[0].name} versus (#{tournament[tournament.length-1].seed}) #{tournament[tournament.length-1].name}"
				if tournament.length >= 4
					puts "(#{tournament[1].seed}) #{tournament[1].name} versus (#{tournament[tournament.length-2].seed}) #{tournament[tournament.length-2].name}"
					if tournament.length >= 6
						puts "(#{tournament[2].seed}) #{tournament[2].name} versus (#{tournament[tournament.length-3].seed}) #{tournament[tournament.length-3].name}"
						if tournament.length >= 8
							puts "(#{tournament[3].seed}) #{tournament[3].name} versus (#{tournament[tournament.length-4].seed}) #{tournament[tournament.length-4].name}"
							if tournament.length >= 10
								puts "(#{tournament[4].seed}) #{tournament[4].name} versus (#{tournament[tournament.length-5].seed}) #{tournament[tournament.length-5].name}"
								if tournament.length >= 12
									puts "(#{tournament[5].seed}) #{tournament[5].name} versus (#{tournament[tournament.length-6].seed}) #{tournament[tournament.length-6].name}"
									if tournament.length >= 14
										puts "(#{tournament[6].seed}) #{tournament[6].name} versus (#{tournament[tournament.length-7].seed}) #{tournament[tournament.length-7].name}"
									end
								end
							end
						end
					end
				end
			end
		end
		puts "\n"
	when 0 #== exit
		# do nothing since the while loop condition will exit
	else
		puts "\nPlease enter 1, 2, 3, or 0\n"
	end
end

#write out the data to save it for later
writeData(tournament)